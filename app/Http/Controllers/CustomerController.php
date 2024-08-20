<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Session;
use Cart;

class CustomerController extends Controller
{
    private $customer;
    public function register()
    {
        return view('website.customer.register');
    }
    public function login()
    {
        return view('website.customer.login');
    }
    public function saveNewCustomer(Request $request)
    {
        $this->customer = Customer::saveCustomer($request);

        Session::put('customerId', $this->customer->id);
        Session::put('customerName', $this->customer->name);

        if(Session::get('checkout'))
        {
            return redirect('/checkout');
        }
        return redirect('/');
    }

    public function loginCheck(Request $request)
    {
        $this->customer = Customer::where('email',$request->username)
            ->orWhere('mobile',$request->username)
            ->orWhere('name',$request->username)
            ->first();
        if ($this->customer){
            if (password_verify($request->password,$this->customer->password)){
                Session::put('customerId',$this->customer->id);
                Session::put('customerName',$this->customer->name);

                if(Session::get('checkout'))
                {
                    return redirect('/checkout');
                }
                return redirect('/');


            }else{
                return back()->with('message','please used  valid password');
            }
        }else{
            return back()->with('message','please used  valid email or phone');
        }

    }

    public function logout(){
        Session::forget('customerId');
        Session::forget('customerName');
        return redirect('/');
    }
}
