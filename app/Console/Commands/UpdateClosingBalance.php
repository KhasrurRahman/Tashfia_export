<?php

namespace App\Console\Commands;

use App\InitialCacheModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
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
//        calculate today's data
        $today = Carbon::now()->toDateString();
        $today_total_sales = salesDepartmentModel::whereDate('created_at', $today)->sum('payment_amount');
        $today_total_purchase = purchaseModel::whereDate('created_at', $today)->sum('actual_purchas_price');

//        calculate closing balance for current date
        $opening_balance = InitialCacheModel::whereDate('date', $today)->first();
        $opening_balance->closing_balance = $opening_balance->opening_balance + ($today_total_sales - $today_total_purchase);
        $opening_balance->update();

//        creating opening date for next date
        $next_day_opening_balance = new InitialCacheModel();
        $next_day_opening_balance->date = Carbon::now()->addDay(1)->toDateString();
        $next_day_opening_balance->opening_balance = $opening_balance->closing_balance;
        $next_day_opening_balance->status = 0;
        $next_day_opening_balance->save();

    }
}
