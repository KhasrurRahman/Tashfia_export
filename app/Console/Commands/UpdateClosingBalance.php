<?php

namespace App\Console\Commands;

use App\AssetModel;
use App\InitialCacheModel;
use App\Models\ExpensesModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\PurchasePaymentModel;
use App\workworderModel;
use Carbon\Carbon;
use Illuminate\Console\Command;

class UpdateClosingBalance extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'UpdateClosingBalance';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Update closing balance and add opening balance for next day';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $date = Carbon::now()->subDay(1)->toDateString();
        $opening_balance = InitialCacheModel::whereDate('date', $date)->first();

        $sales = SalesPaymentModel::whereDate('created_at', $date)->sum('amount');
        $asset = AssetModel::whereDate('created_at', $date)->sum('Amount');
        $advance_sell = workworderModel::whereDate('created_at', $date)->sum('subtotal');
        $total_asset = $opening_balance->opening_balance + $sales + $asset + $advance_sell;

        $purchase = PurchasePaymentModel::whereDate('created_at', $date)->sum('amount');
        $expense = ExpensesModel::whereDate('created_at', $date)->sum('Amount');
        $total_expense = $purchase + $expense;

        $cash = $total_asset - $total_expense;

//        creating opening date for next date
        $next_day_opening_balance = new InitialCacheModel();
        $next_day_opening_balance->date = Carbon::now()->toDateString();
        $next_day_opening_balance->opening_balance = $cash;
        $next_day_opening_balance->status = 1;
        $next_day_opening_balance->save();

        $closing_balance = InitialCacheModel::whereDate('date', $date)->first();
        $closing_balance->closing_balance = $cash;
        $closing_balance->update();

    }
}
