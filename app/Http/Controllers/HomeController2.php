<?php

namespace App\Http\Controllers;

use App\bank_deposit;
use App\Category;
use App\ContactUs;
use App\package;
use App\payment;
use App\scratch_card;
use App\subscriber;
use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;
use \RouterOS\Query;
use \RouterOS\Client;
use Spatie\Activitylog\Models\Activity;

class HomeController2 extends Controller
{
    public function index()
    {
        $package = package::all();
        return view('welcome', compact('package'));
    }

    public function change_password_to_hash()
    {

        $package = scratch_card::where('code','2k42d5956ef')->first();
        $package->status_id = 5;
        $package->update();
        dd($package);


//        $start_date = Carbon::now()->startOfMonth()->toDateString();
//        $end_date = Carbon::now()->addDay(1)->toDateString();
//
//
//        $suspend_user = subscriber::whereBetween('connection_to', [$start_date, $end_date])->where('status_id',2)->get();
//
//
//        foreach ($suspend_user as $data){
//            echo $data->username.'<br>';
//        }



//        $subscriber  = subscriber::find(3349);
//
//        dd($subscriber->updated_by.'/'.$subscriber->updated_at.'/'.$subscriber->creator);


//        dd(User::find(63));

//        return Activity::all();

//        $subscriber = subscriber::whereBetween('created_at', [Carbon::now()->subDay(2)->toDateString(),Carbon::now()->addDay(2)->toDateString()])->get();
////        dd($subscriber->count());
//        foreach ($subscriber as $data) {
//            echo $data->username . '->' . '<br>';
//
//        }


//        dd($subscriber);

//        foreach ($subscriber as $data){
//            if (!($data->payment)){
//                echo $data->username;
//            }
////            echo $data->username.'->'.$data->payment->last()->created_at.'->'.$data->status_id.'<br>';
//        }


//        $client = new \RouterOS\Client(routeros($subscriber->router));
//    $view = (new Query('/ppp/secret/print'))
//        ->where('name', $subscriber->username);
//    $response = $client->query($view)->read();
//
//    $read_active_user = (new Query('/ppp/active/print'))
//        ->where('name', $subscriber->username);
//    $active_user_info = $client->query($read_active_user)->read();
//    dd($active_user_info);

//        return Crypt::decryptString($subscriber->password);


    }

    public function pricing()
    {
        $package = package::all();
        return view('layouts.frontend.homepage.pricing', compact('package'));
    }

    public
    function contact_us()
    {
        return view('layouts.frontend.homepage.contact_us');
    }

    public
    function services()
    {
        return view('layouts.frontend.homepage.service');
    }

    public
    function check_out($id)
    {
        $package = package::find($id);
        return view('layouts.frontend.homepage.checkout_page', compact('package'));
    }

    public
    function order_place(Request $request, $id)
    {
        $request->validate([
            "name" => "required",
            "area" => "required",
            "building" => "required",
            "phone" => "required",
            "rank" => "required",
        ]);

        DB::table('orders')->insert([
            'name' => $request->name,
            'email' => $request->rank,
            'area' => $request->area,
            'building' => $request->building,
            'phone' => $request->phone,
            'house_no' => $request->house_no,
            'package_id' => $id,
            "created_at" => date('Y-m-d H:i:s'),
            "updated_at" => date('Y-m-d H:i:s'),
        ]);

        Toastr::success('পরিসেবার জন্য আপনার অনুরোধটি গ্রহণ করা হয়েছে,অতি শিগ্রই আপনার সাথে যোগাযোগ করা হবে', 'ধন্যনাদ');
        return redirect()->route('home');
    }

    public
    function save_contact_us(Request $request)
    {
        $request->validate([
            "username" => "required",
            "mobile" => "required",
            "complain" => "required",
            "rank" => "required",
        ]);

        DB::table('contact_us')->insert([
            'username' => $request->username,
            'email' => $request->rank,
            'mobile' => $request->mobile,
            'subject' => $request->subject,
            'complain' => $request->complain,
            "created_at" => date('Y-m-d H:i:s'),
            "updated_at" => date('Y-m-d H:i:s'),
        ]);

        Toastr::success('অতি শিগ্রই আপনার সাথে যোগাযোগ করা হবে', 'ধন্যনাদ');
        return redirect()->back();
    }

    public
    function entertainment()
    {
        return view('layouts.frontend.homepage.entertainment');
    }

}
