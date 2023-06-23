<?php

namespace App\Http\Controllers;

use App\Models\Hoteles;
use Illuminate\Http\Request;

class HotelesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hotel = Hoteles::select(
            'id', 'nombre', 'nit', 'direccion', 'ciudad','num_habitaciones'
        )->paginate(20);
        return  response()->json(['hotel'=>$hotel], 201);
    }

    public function show(string $id)
    {
        $hotel = Hoteles::find($id);
        return  response()->json(['hoteles'=>$hotel], 201);
       // return $hotel;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $respuesta = [];

            Hoteles::create($request->all());
            array_push($respuesta,['status'=>'success']);
            return response()->json($respuesta);
        
        
    }
    public function ValidaHotel(Request $request)
    {
        $value = $request->input('value');
        
        $exists = Hoteles::where('nit', $value)->exists();
        
        return response()->json(['exists' => $exists]);
    }

    public function update(Request $request, $id)
    {
        $respuesta=[];
        $hotel = Hoteles::find($id);
        if($hotel){
            $hotel->fill($request->all())->save();
            array_push($respuesta,['status'=>'success']);
        }
        else{
            array_push($respuesta,['status'=>'error']);
            array_push($respuesta,['errors'=>['id' => ['No existe el ID']]]);
        }
        return response()->json($respuesta);
    
    }
  
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
