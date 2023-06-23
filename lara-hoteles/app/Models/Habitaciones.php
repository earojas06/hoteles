<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Hoteles;

class Habitaciones extends Model
{
    // protected $hidden = ['pivot'];
     protected $table = 'habitaciones';
    //protected $fillable = [ 'id', 'tipo'];

    public function hoteles()
    {
        return $this->hasMany(Hoteles::class, 'id','hotel_id');
    }
 
}
