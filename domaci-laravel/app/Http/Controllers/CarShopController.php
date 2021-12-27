<?php

namespace App\Http\Controllers;

use App\Models\CarShop;
use Illuminate\Http\Request;

class CarShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carShops=CarShop::all();
        if(is_null($carShops)){
            return response()->json('Data coudn\'t be found',404);
        }
        return $carShops;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'local' =>'required',
            'vehicle_id' =>'required',
            'location' =>'required',
            'location_number' =>'required'
        ]);
        $carshop2=CarShop::create($request->all());
        return $carshop2;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CarShop  $carShop
     * @return \Illuminate\Http\Response
     */
    public function show($carshop_id)
    {
        $carshop1=CarShop::find($carshop_id);
        if(is_null($carshop1)){
            return response()->json("data couldn\'t be found",404);
        }
        return $carshop1;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CarShop  $carShop
     * @return \Illuminate\Http\Response
     */
    public function edit(CarShop $carShop)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CarShop  $carShop
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CarShop $carShop)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CarShop  $carShop
     * @return \Illuminate\Http\Response
     */
    public function destroy(CarShop $carShop)
    {
        //
    }
}
