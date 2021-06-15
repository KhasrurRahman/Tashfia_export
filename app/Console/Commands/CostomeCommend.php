<?php

namespace App\Console\Commands;

use App\Jobs\CustomeJob;
use App\subscriber;
use Illuminate\Console\Command;
use Illuminate\Support\Carbon;

class CostomeCommend extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'CustomCommend';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Custom Commend';

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
     * @return mixed
     */
    public function handle()
    {
        subscriber::where('category', '!=', 'Free')->where('subs_type', 'default')->where('status_id', 1)->chunk(100, function ($users) {
           CustomeJob::dispatch($users);
        });
    }
}
