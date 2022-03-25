<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Search extends Model
{
    use HasFactory;
    protected $table = "search";
    protected $fillable=['id_film','name'];
    public function table_film(){
        return $this->belongsTo('App\Models\Table_film','id_film','id'); 
    }

}
