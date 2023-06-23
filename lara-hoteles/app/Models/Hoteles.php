<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hoteles extends Model
{
      // protected $hidden = ['pivot'];
      // protected $table = 'hoteles';
      protected $fillable = [ 'id', 'nombre', 'nit', 'direccion', 'ciudad','num_habitaciones'];
}
