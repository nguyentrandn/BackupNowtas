<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Table_film;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash; //mã hóa mật khẩu
class homecontroller extends Controller
{
    public function index()
    {
        $movies = Table_film::where('id','<','23')->get();          
        $new_film= Table_film::where('tab',"new")->paginate(5);
        $sapchieu= Table_film::where('tab',"sap")->paginate(5);
        $scrolls= Table_film::where('tab',"scr1")->paginate(15); 
        $scrolls2= Table_film::where('tab',"scr2")->paginate(15);  
        $movies_le= Table_film::where('tab',"le")->paginate(8);    
        $movies_anime= Table_film::where('tab',"anime")->paginate(8);    
        return view('do_an.home', compact('movies','new_film','sapchieu','scrolls','scrolls2','movies_le','movies_anime')); 
           
    }  

    public function index2()
    {
        $phimbos = Table_film::where('tab',"bo")->paginate(20);       
        return view('do_an.phim-bo',compact('phimbos'));     
    } 
      
    public function show($id)
    {
        $detail=Table_film::find($id);
        $detail_tuongtu = Table_film::where('id_type', $detail->id_type)->paginate(4);
        return view('do_an.chitiet-movie-phim-bo', compact('detail_tuongtu', 'detail'));
    }
    public function show2($id)
    {
        $detail2=Table_film::find($id);
        $detail2_tuongtu = Table_film::where('id_type', $detail2->id_type)->paginate(4);
        return view('do_an.chitiet-movie-phim-le', compact('detail2_tuongtu', 'detail2'));
    }
    public function showW1($id)
    {
        $detail3=Table_film::find($id);
        $detail3_tuongtu = Table_film::where('id_type', $detail3->id_type)->paginate(4);
        return view('do_an.watch-le', compact('detail3_tuongtu', 'detail3'));
    }
    public function getSearch(request $req){
        $search_Table_films=Table_film::where('Film_name','like','%'.$req->key.'%')->get();
        dd($search_Table_films);
        return view('do_an.search',compact('search_Table_films'));
    }



    
  
}
