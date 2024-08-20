<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
    public $product;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('website.cart.index',
            [
                'products' => Cart::content()
            ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->product = Product::find($request->id);
        Cart::add([
            'id'        => $request->id,
            'name'      => $this->product->name,
            'qty'       => $request->qty,
            'price'     => $this->product->selling_price,
            'weight'    => 550,
            'options'   =>
                [
                    'size'  => $request->size,
                    'color' => $request->color,
                    'image' => $this->product->image,
                    'code'  => $this->product->code,
                ]
        ]);
        return redirect('/cart');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        Cart::update($id,['qty' => $request->qty]);
        return redirect('/cart');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Cart::remove($id);
        return redirect('/cart');
    }
}
