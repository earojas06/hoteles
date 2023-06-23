<?php

namespace App\Http\Controllers;

use App\Models\Habitaciones;
use Illuminate\Http\Request;

class HabitacionesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $habitaciones = Habitaciones::with([
            'hoteles'
        ])->paginate(20);
        return [
            'habitaciones' => $habitaciones            
        ];
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $hotel_id)
    {
        $habitaciones = Habitaciones::where('hotel_id', $hotel_id)->paginate(20);
         return response()->json(['habitaciones' => $habitaciones], 201);
        
        // $hotel = Habitaciones::find($hotel_id);
        // return  response()->json(['hoteles'=>$hotel], 201);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
