<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('hoteles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre',100);
            $table->string('nit',20);
            $table->string('direccion',50);  
            $table->string('ciudad',50);   
            $table->integer('num_habitaciones');      
            $table->timestamps();      
        });
        Schema::create('habitaciones', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('hotel_id')->index();
            $table->foreign('hotel_id')->references('id')->on('hoteles')->onDelete('cascade');        
            $table->string('tipo',50);   
            $table->string('acomodacion',50); 
            $table->string('cantidad',50); 
            $table->timestamps();
        });


       
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hoteles');
        Schema::dropIfExists('habitaciones');
       
    }
};
