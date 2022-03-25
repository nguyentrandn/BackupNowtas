<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Table_film extends Model
{
    use HasFactory;
    protected $table = "table_film";
    public function search(){
        return $this->hasOne('App\Models\Search','id_film','id');  
    }

}
