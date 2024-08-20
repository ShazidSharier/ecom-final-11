<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.brand.index',['brands' => Brand::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Brand::saveBrand($request);
        return redirect('/brand')->with('message','Brand info saved successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Brand $brand)
    {
        Brand::statusUpdate($brand->id);
        return redirect('/brand')->with('message','status info updated.');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Brand $brand)
    {
        return view('admin.brand.edit',['brand' => Brand::find($brand->id)]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Brand $brand)
    {
        Brand::updateBrandInfo($request, $brand->id);
        return redirect('/brand')->with('message','Brand info updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Brand $brand)
    {
        Brand::deleteBrand($brand->id);
        return redirect('/brand')->with('message','Brand info deleted successfully.');
    }
}
