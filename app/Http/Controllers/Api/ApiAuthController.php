<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Tymon\JWTAuth\Facades\JWTAuth;

class ApiAuthController extends Controller
{
      public function __construct()
    {
        config(['auth.defaults.guard' => 'api', 'auth.defaults.passwords' => 'users']);
    }


    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        return response()->json(['token'=>$token,'Status' => 'Success']);
    }


    public function getAuthenticatedUser()
    {
        try {

            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }

        } catch (TokenExpiredException $e) {

            return response()->json(['token_expired'], $e->getStatusCode());

        } catch (TokenInvalidException $e) {

            return response()->json(['token_invalid'], $e->getStatusCode());

        } catch (JWTException $e) {

            return response()->json(['token_absent'], $e->getStatusCode());

        }

        return response()->json(auth()->user());
    }


    public function user_info(Request $request)
    {
         $validator = Validator::make($request->all(), [
            'username' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $subscriber = User::where('username',$request->username)->select('id_subscriber_key','username','status_id','official_mobile','firstname','lastname','package_id')->first();
        $amount = $subscriber->package->price;

        if($subscriber->status_id == 2){
           return response()->json(['errors' => ['status' => ['User account deleted.Please contact with your provider']]], 422);
        }

        return response()->json(['subscriberInfo' => $subscriber,'amount'=>$amount]);
    }
}
