<?php

namespace App\Http\Controllers\Admin;

use App\ChequeDetailModel;
use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\ExpensesModel;
use App\Models\LotDepartmentModel;
use App\Models\ModelProduct;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\SalesDetailsModel;
use App\SalesExecutiveModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class SalesController extends Controller
{
    public function create()
    {
        if (check_initial_balance_status() == 0) {
            Toastr::error('please Update Opening balance for purchase or sale,Contact With Accountant', 'Update Opening Balance');
            return redirect()->route('admin.initalBalance/create_initial_balance');
        }
        $sales_executive = SalesExecutiveModel::all();
        $customers = CustomerModel::where('type', 'general')->get();
        return view('layouts.backend.sales_department.new_sale.create_sale', compact('customers', 'sales_executive'));
    }


    function sales_item_auto_complete(Request $request)
    {
        if ($request->get('query')) {
            $query = $request->get('query');
            $data = ModelProduct::query()
                ->select('products.chalan_no', 'products.card_no', 'stock.quantity', 'stock.id')
                ->leftJoin('purchase', 'purchase.product_id', '=', 'products.id')
                ->leftJoin('stock', 'stock.purchase_id', '=', 'purchase.id')
                ->orWhere('chalan_no', 'like', '%' . $query . '%')
                ->orWhere('card_no', 'like', '%' . $query . '%')
                ->get();

            $output = '<ul class="list-group" style="display: block;position: relative;width: 100%;font-size: 17px;font-weight: bold;line-height: 25px;border: 1px solid;">';
            foreach ($data as $row) {
                if ($row->quantity <= 0 or $row->quantity == null) {
                    $output .= '<li class="list-group-item bg-danger" onclick=getproductdata(' . $row->id . ')>' . $row->chalan_no . ' (Not Available)</li>';
                } else {
                    $output .= '<li class="list-group-item bg-success" onclick=getproductdata(' . $row->id . ')>' . $row->chalan_no . '(Quantity:' . $row->quantity . ')</li>';
                }

            }
            $output .= '</ul>';
            echo $output;
        }
    }

    public function get_product_single_data($id)
    {
        $product = ModelProduct::query()->select('stock.id', '')
            ->select('stock.*', 'products.chalan_no')
            ->join('purchase', 'purchase.product_id', '=', 'products.id')
            ->join('stock', 'stock.purchase_id', '=', 'purchase.id')
            ->where('stock.quantity', '>', 0)
            ->where('stock.id', $id)
            ->first();

        return response()->json(['product' => $product]);
    }


    public function store_sales_department_data(Request $request)
    {
        $request->validate([
            'customer_id' => 'required',
            'grand_total' => 'required',
            'stock_id' => 'required',
            'per_quantity' => 'required',
            'per_unit_price' => 'required',
            'per_total_unit_price' => 'required',
            'per_payment_type' => 'required',
            'per_payment_amount' => 'required',
            'sales_executive_id' => 'required',
            'labour_bill' => 'required',
        ]);

        for ($i = 0; $i < count($request->stock_id); $i++) {
            $quantity = LotDepartmentModel::find($request->stock_id[$i])->quantity;
            if ($request->per_quantity[$i] > $quantity) {
                return response()->json(['error' => 'Quantity of an item is grater than stock quantity']);
            }
        }

        for ($i = 0; $i < count($request->chalan_no); $i++) {
            if ($request->chalan_no[$i] == null) {
                return response()->json(['error' => 'Please Input Chalan number of an item']);
            }
        }

        for ($i = 0; $i < count($request->per_unit_price); $i++) {
            if ($request->per_unit_price[$i] == null) {
                return response()->json(['error' => 'Please Input unit price of an item']);
            }
        }

        for ($i = 0; $i < count($request->per_role_data); $i++) {
            if ($request->per_role_data[$i] == null) {
                return response()->json(['error' => 'Please Input role of an item properly']);
            }
        }

        for ($i = 0; $i < count($request->per_payment_amount); $i++) {
            if ($request->per_payment_amount[$i] == null) {
                return response()->json(['error' => 'Please Input Payment amount properly']);
            }
        }

        $total_paied_amount = array_sum($request->per_payment_amount);
        if ($total_paied_amount > $request->grand_total) {
            return response()->json(['error' => 'Your Payment amount must be less than or equal to Grand total']);
        }

        for ($i = 0; $i < count($request->stock_id); $i++) {
            $stock = LotDepartmentModel::find($request->stock_id[$i]);
            $stock->quantity -= $request->per_quantity[$i];
            $stock->update();
        }

        $sales = new salesDepartmentModel();
        $sales->customer_id = $request->customer_id;
        $sales->total_price = $request->grand_total;
        $sales->payment_amount = $total_paied_amount;
        $sales->due = $request->grand_total - $total_paied_amount;
        $sales->labour_bill = $request->labour_bill;
        $sales->sales_date = $request->sales_date;
        $sales->sales_executive_id = $request->sales_executive_id;
        $sales->sales_code = mt_rand();
        if ($request->grand_total == $total_paied_amount) {
            $sales->status = 1;
        }
        $sales->save();

        for ($i = 0; $i < count($request->stock_id); $i++) {
            $stock = LotDepartmentModel::find($request->stock_id[$i]);
            $sales_details = new SalesDetailsModel();
            $sales_details->customer_id = $request->customer_id;
            $sales_details->stock_id = $request->stock_id[$i];
            $sales_details->sales_id = $sales->id;
            $sales_details->quantity = $request->per_quantity[$i];
            $sales_details->unit_price = $request->per_unit_price[$i];
            $sales_details->total_price = $request->per_total_unit_price[$i];
            $sales_details->purchase_uint_price = $stock->purchase->actual_unit_price;
            $sales_details->purchase_total_price = $stock->purchase->actual_unit_price * $request->per_quantity[$i];
            $sales_details->role = $request->per_role_data[$i];
            $sales_details->chalan_no = $request->chalan_no[$i];
            $sales_details->save();
        }

        for ($i = 0; $i < count($request->per_payment_amount); $i++) {
            $sales_payemnt = new SalesPaymentModel();
            $sales_payemnt->sales_id = $sales->id;
            $sales_payemnt->customer_id = $request->customer_id;
            $sales_payemnt->amount = $request->per_payment_amount[$i];
            $sales_payemnt->payment_mode = $request->per_payment_type[$i];
            $sales_payemnt->remark = $request->per_remarks[$i];
            if ($request->per_payment_type[$i] == "Cheque") {
                $sales_payemnt->cheque_number = $request->per_cheque_number[$i];
                $sales_payemnt->cheque_due_date = $request->per_cheque_date[$i];
            }
            if ($request->per_payment_type[$i] == "Bkash") {
                $sales_payemnt->bkash_number = $request->bkash_number[$i];
                $sales_payemnt->bkash_trns_id = $request->bkash_trns_id[$i];
            }
            if ($request->per_payment_type[$i] == "Bank") {
                $sales_payemnt->bank_name = $request->bank_name[$i];
            }
            $sales_payemnt->save();
        }

        $sales->profit_or_loss = ($sales->total_price - $sales->labour_bill) - $sales->sales_details->sum('purchase_total_price');
        $sales->update();

        if ($sales->labour_bill > 0) {
            $expense = new ExpensesModel();
            $expense->expenses_category_id = 8;
            $expense->name = 'labor bill for sales ID:'.$sales->id. 'Customer Name:'.$sales->customer->name;
            $expense->Amount = $sales->labour_bill;
            $expense->remarks = 'labor bill for sales ID:'.$sales->id. 'Customer Name:'.$sales->customer->name;
            $expense->save();
        }


        return response()->json(['success' => 'success', 'sales_id' => $sales->id]);
    }

    public function customer_payment_history_search(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::where('customer_id', $request->customer_id);
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('customer', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="customer_details(' . $data->customer_id . ')">' . $data->customer->name . '</a>';
                })->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->created_at));
                })->addColumn('total_unit_price', function ($data) {
                    return $data->total_unit_price;
                })->addColumn('quantity_of_sell', function ($data) {
                    return $data->quantity_of_sell;
                })->addColumn('due', function ($data) {
                    return $data->due;
                })->addColumn('payment_type', function ($data) {
                    return $data->payment_type;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="sales_details(' . $data->id . ')" class="edit btn btn-outline-info btn-sm" >Invoice Details</a>';
                    return $actionBtn;
                })
                ->rawColumns(['customer', 'date', 'total_unit_price', 'quantity_of_sell', 'due', 'payment_type', 'action'])
                ->make(true);
        }
    }


    public function sales_details_invoice($id)
    {
        $sale = salesDepartmentModel::find($id)->sales_details;

        $output = '<table border="1" width="100%">
                   <tr>
                    <th>Product Name</th>
                    <th>Product Unit Price (Tk)</th>
                    <th>Given Unit Price (Tk)</th>
                    <th>quantity of sell (Kg)</th>
                    <th>Total Price</th>
                   </tr>';
        foreach ($sale as $data) {
            $output .= '<tr>
         <td>' . $data->stock->purchase->product->chalan_no . '</td>
         <td>' . $data->stock->purchase->unit_price . '</td>
         <td>' . $data->unit_price . '</td>
         <td>' . $data->quantity . '</td>
         <td>' . $data->total_price . '</td>
    </tr>';
        }
        return $output;
    }


    public function add_walk_in_cuatomer(Request $request)
    {
        $customer = new CustomerModel();
        $customer->name = $request->customer_name;
        $customer->present_address = $request->customer_address;
        $customer->personal_phone = $request->customer_phone;
        $customer->company_name = $request->company_name;
        $customer->type = 'Walk-in Customer';
        $customer->save();


        return response()->json(['customer_id' => $customer->id, 'customer_name' => $customer->name]);
    }

    public function sales_due_payment(Request $request)
    {
        $sale = salesDepartmentModel::find($request->sale_id);
        if ($request->payment_amount > $sale->due or $request->payment_amount == 0) {
            return response()->json(['error' => 'Your Payment amount must be less than or equal to Due amount']);
        }
        $sale->payment_amount += $request->payment_amount;
        $sale->due -= $request->payment_amount;
        $sale->update();
        if ($sale->due == 0) {
            $sale->status = 1;
            $sale->update();
        }

        $sales_payemnt = new SalesPaymentModel();
        $sales_payemnt->sales_id = $request->sale_id;
        $sales_payemnt->customer_id = $sale->customer_id;
        $sales_payemnt->amount = $request->payment_amount;
        $sales_payemnt->payment_mode = $request->payment_type;

        if ($request->payment_type == "Cheque") {
            $sales_payemnt->cheque_number = $request->cheque_number;
            $sales_payemnt->cheque_due_date = $request->cheque_date;
        }
        if ($request->payment_type == "Bkash") {
            $sales_payemnt->bkash_number = $request->bkash_number;
            $sales_payemnt->bkash_trns_id = $request->bkash_trns_id;
        }
        if ($request->payment_type == "Bank") {
            $sales_payemnt->bank_name = $request->bank_name;
        }

        $sales_payemnt->save();


        if ($request->payment_mode == 'Cheque') {
            $check = new ChequeDetailModel();
            $check->number = $request->cheque_number;
            $check->date = $request->cheque_date;
            $check->save();
        }


        $customer = CustomerModel::find($sale->customer_id);
        $customer->balance += $request->amount;
        $customer->update();

        return response()->json(['done' => 'success']);
    }

    public function invoice_payment_history($id)
    {
        $payments = salesDepartmentModel::find($id)->sales_payments;

        $output = '<table border="1" width="100%">
                   <tr>
                    <th>Payment Date</th>
                    <th>Payment mode</th>
                    <th>Amount (Tk)</th>
                   </tr>';
        foreach ($payments as $data) {
            $output .= '<tr>
         <td>' . date("d-M-y h:i A", strtotime($data->created_at)) . '</td>
         <td>' . $data->payment_mode . '</td>
         <td>' . $data->amount . '</td>
    </tr>';
        }
        return $output;
    }

    public function customer_details($id)
    {
        $customer = CustomerModel::find($id);
        $output = '<div class="card" style="padding: 10px;background: #6b279b4d;">
                    <div class="crad-header" style="padding: 5px"><b>Customer Details: </b></div>
                    <div class="card_body">
                    <ul class="list-group">
                        <li class="list-group-item">Name: ' . $customer->name . '</li>
                        <li class="list-group-item">ID: ' . $customer->id . '</li>
                        <li class="list-group-item">Email: ' . $customer->email . '</li>
                        <li class="list-group-item">Address: ' . $customer->present_address . '</li>
                        <li class="list-group-item">Phone: ' . $customer->personal_phone . '</li>
                      </ul>
                    </div>
                    </div>';
        $total_due = $customer->sales_history->where('due', '>', 0)->sum('due');

        return response()->json(['customer' => $output, 'total_due' => $total_due]);

    }


    public function sales_history_pdf_generate(Request $request)
    {
        $query = salesDepartmentModel::query();
        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        if ($request->search_payment_status !== null) {
            if ($request->search_payment_status == 'paid') {
                $query->where('status', '=', 1);
            } else {
                $query->where('status', '=', 0);
            }
        }

        if ($request->search_company_id !== null) {
            $query->whereHas('customer', function ($query2) use ($request) {
                $query2->where('company_id', $request->search_company_id);
            });
        }

        if ($request->search_customer_id !== null) {
            $query->where('customer_id', $request->search_customer_id);
        }

        if ($request->invoice_number !== null) {
            $query->where('sales_code', 'like', '%' . $request->invoice_number . '%');
        }


        $sales_history = $query->orderBy('id', 'desc')->get();
        $total_due = $sales_history->sum('due');
        $total_payment = $sales_history->sum('payment_amount');
        $total_amount = $sales_history->sum('total_price');


        return view('layouts.backend.sales_department.sales_history_invoice_pdf', compact('sales_history', 'total_due', 'total_payment', 'total_amount'));

    }

}
