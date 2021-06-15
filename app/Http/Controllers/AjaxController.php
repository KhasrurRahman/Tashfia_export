<?php

namespace App\Http\Controllers;

use App\area;
use App\building;
use App\ip_addresse;
use App\scratch_card;
use App\subscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Input\Input;
use Yajra\DataTables\Facades\DataTables;

class AjaxController extends Controller
{
    public function area_search($id)
    {
        $buildings = building::where('area_id', $id)->where('is_active',1)->get()->sortBy('building_name');
        echo "<option disabled selected>Please Select</option>\n";
        foreach ($buildings as $val) {echo "<option value=\"{$val->id_building }\">{$val->building_name}</option>\n";}
    }

    public function main_area_search($id)
    {
        $main_buildings = area::where('main_area_id', $id)->where('status_id',1)->get()->sortBy('area_name');
        echo "<option disabled selected>Please Select</option>\n";
        foreach ($main_buildings as $val) {echo "<option value=\"{$val->id_area }\">{$val->area_name}</option>\n";}
    }

    public function ip_search($id)
    {
        $ip_address = ip_addresse::where('building_id',$id)->where('status_id',0)->get();
        echo "<option disabled selected>Please Select</option>\n";
        foreach ($ip_address as $val) {echo "<option value=\"{$val->id_ip_key}\">{$val->ip}</option>\n";}
    }

    public function ajax_search_subscriber(Request $request)
    {
        if ($request->ajax()) {
            $query = subscriber::query();
            if ($request->user_id !== null) {
                $query->where('username', '=', $request->user_id)->orWhere('ba_no', $request->user_id);
            }
            if ($request->mobile !== null) {
                $query->where('firstname', '=', $request->mobile)->orWhere('lastname', $request->mobile)->orWhere('official_mobile', $request->mobile)->orWhere('personal_mobile', $request->mobile)->orWhere('residential_phone', $request->mobile);
            }
            if ($request->rank_id !== null) {
                $query->where('rank_id', '=', $request->rank_id);
            }
            if ($request->area_id !== null) {
                $query->where('area_id', '=', $request->area_id);
            }
            if ($request->building_id !== null) {
                $query->where('building_id', '=', $request->building_id);
            }
            if ($request->package_id !== null) {
                $query->where('package_id', '=', $request->package_id);
            }
            if ($request->category !== null) {
                $query->where('category', '=', $request->category);
            }
            if ($request->status !== null) {
                $query->where('status_id', '=', $request->status);
            }
            if ($request->house !== null ) {
                $query->where('house_no', '=', $request->house);
            }

            $query->join('areas', 'subscribers.area_id', '=', 'areas.id_area')
                ->join('ranks', 'subscribers.rank_id', '=', 'ranks.id')
                ->join('buildings', 'subscribers.building_id', '=', 'buildings.id_building')
                ->join('packages', 'subscribers.package_id', '=', 'packages.id')
                ->select('subscribers.*', 'areas.area_name', 'ranks.name as rank_name', 'buildings.building_name', 'packages.name as package_name');

            $data = $query->get();

            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('Address', function ($data) {
                    return $data->area_name . ', ' . $data->building_name . ', ' . $data->house_no;
                })
                ->addColumn('fullname', function ($data) {
                    return $data->firstname . ' ' . $data->lastname;
                })
                ->addColumn('status', function ($data) {
                    $status = '';
                    if ($data->status_id == 0) {
                        $status = '<span class="right badge badge-info">Active</span>';
                    } elseif ($data->status_id == 0) {
                        $status = '<span class="right badge badge-warning">Suspended</span>';
                    } elseif ($data->status_id == 2) {
                        $status = '<span class="right badge badge-danger">Deleted</span>';
                    }
                    return $status;
                })
                ->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="edit_subscriber(' . $data->id_subscriber_key . ')" class="edit btn btn-success btn-sm">Edit</a> <a href="javascript:void(0)" onclick="delete_subscriber(' . $data->id_subscriber_key . ')" class="delete btn btn-danger btn-sm">Delete</a>';
                    return $actionBtn;
                })
                ->rawColumns(['action', 'fullname', 'status'])
                ->make(true);
        }
    }


    public function check_card_number(Request $request)
    {
        $check = scratch_card::where('code', $request->card_number)->where('status_id', 5)->count();
        if ($check !== 0) {
            return "Card number is valid";
        } else {
            return response()->json(['error' => 'Card number is not valid'], 404);
        }
    }



}
