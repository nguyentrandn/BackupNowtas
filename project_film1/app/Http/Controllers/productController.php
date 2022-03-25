<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Table_film;
use App\Models\User;
use App\Models\Category;
use App\Http\Middleware\AdminLoginMiddleware;
use Illuminate\Support\Facades\Auth; //kiểm tra 
use Illuminate\Support\Facades\Session; 
use Illuminate\Support\Facades\Hash; //mã hóa mật khẩu

class productController extends Controller
{
    //trang product
    public function getProductAdd(){
            
        return view('do_an.admin.product.add');
    }
    public function postProducAdd(){
        $data = request()->validate([
            
            'idtype'=>'required',
            'filmname'=>'required|min:1|max:250',
            'category'=>'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'bgr'=>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'trailer'=>'required',
            'watch'=>'',
            'actor'=>'',
            'director'=>'',
            'time'=>'',
            'main'=>'',
            'number'=>'',
            'inforfilm'=>'',
            'year'=>'',
            'country'=>'',
            'release'=>'',
            'tab'=>'required'
        ],
        [
            
            'filmname.required'=>'Vui lòng nhập tên phim !!!',
            'filmname.min'=>'tên quá ngắn !!!',
            'filmname.max'=>'tên quá dài !!!',
            'category.required'=>'vui lòng nhập thể loại !!!',
            'image.required'=>'Hãy thêm hình ảnh !!!',
            'bgr.required'=>'hãy thêm background phim',
            'trailer.required'=>'hãy thêm link trailler của video !!!',
         
            // 'actor.required'=>'hãy thêm tên các diễn viên !!!',
            // 'director.required'=>'hãy thêm tên đạo diễn !!!',
            // 'time.required'=>'hãy thêm thời lượng phim !!!',
            // 'main.required'=>'hãy thêm tiểu sử của diễn viên !!!',
            // 'number.required'=>'hãy thêm số tập !!!',
            // 'inforfilm.required'=>'hãy thêm thông tin phim !!!',
            // 'year.required'=>'hãy thêm năm sản xuất !!!',
            // 'country.required'=>'hãy thêm quốc gia !!!',
            // 'release.required'=>'hãy thêm ngày ra rạp !!!',
             'tab.required'=>'hãy thêm các thể loại !!!',
            ]);
        $imagePath = request('image')->store('uploads','public');
        $imagePath2 = request('bgr')->store('uploads','public');
        $film=new Table_film();
        $film->id_type=$data['idtype'];
        $film->Film_name=$data['filmname'];
        $film->Film_category=$data['category'];    
        $film->Film_vd=$data['trailer'];
        $film->Film_watch=$data['watch'];
        $film->Film_actor=$data['actor'];
        $film->Film_director=$data['director'];
        $film->Film_time=$data['time'];
        $film->Main_actor=$data['main'];
        $film->Film_number=$data['number'];
        $film->Film_info=$data['inforfilm'];
        $film->Film_year=$data['year'];
        $film->country=$data['country'];
        $film->Film_release=$data['release'];
        $film->tab=$data['tab'];
        $film->Film_img =$imagePath;
        $film->Film_bgr =$imagePath2;
        
        $film->save();
        return redirect()->back()->with('success','Thêm Phim thành công !!!');
        
   
       
    }
   
    public function getProductList()
    {
        $lists=Table_film::all();
        return view('do_an/admin/product/list',compact('lists'));
    }


    public function getProductEdit($id){
        $lists=Table_film::find($id);
        return view('do_an/admin/product/edit',compact('lists'));
    }
   
    public function Update(Request $request,$id){

        $data = request()->validate([
            
            'idtype'=>'',
            'filmname'=>'min:2|max:250',
            'category'=>'',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'bgr'=>'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'trailer'=>'',
            'watch'=>'',
            'actor'=>'',
            'director'=>'',
            'time'=>'',
            'main'=>'',
            'number'=>'',
            'inforfilm'=>'',
            'year'=>'',
            'country'=>'',
            'release'=>'',
            'tab'=>''
        ],
        [
            'filmname.min'=>'tên quá ngắn !!!',
            'filmname.max'=>'tên quá dài !!!',
            ]);
       
        $lists = Table_film::find($id);
        // $image = request('image','bgr');
        if($request->has('image')){
            if($request->has('bgr')){
                $imagePath = request('image')->store('uploads','public');
                $imagePath2 = request('bgr')->store('uploads','public');
                $lists->id_type=$request->idtype;
                $lists->Film_name = $request->filmname;
                $lists->Film_category = $request->category;
                $lists->Film_vd=$request->trailer;
                $lists->Film_watch=$request->watch;
                $lists->Film_actor=$request->actor;
                $lists->Film_director=$request->director;
                $lists->Film_time=$request->time;
                $lists->Main_actor=$request->main;
                $lists->Film_number=$request->number;
                $lists->Film_info=$request->inforfilm;
                $lists->Film_year=$request->year;
                $lists->country=$request->country;
                $lists->Film_release=$request->release;
                $lists->tab=$request->tab;
                $lists->Film_img =$imagePath;
                $lists->Film_bgr =$imagePath2;
            } else{
            $imagePath = request('image')->store('uploads','public');
            // $imagePath2 = request('bgr')->store('uploads','public');
            $lists->id_type=$request->idtype;
            $lists->Film_name = $request->filmname;
            $lists->Film_category = $request->category;
            $lists->Film_vd=$request->trailer;
            $lists->Film_watch=$request->watch;
            $lists->Film_actor=$request->actor;
            $lists->Film_director=$request->director;
            $lists->Film_time=$request->time;
            $lists->Main_actor=$request->main;
            $lists->Film_number=$request->number;
            $lists->Film_info=$request->inforfilm;
            $lists->Film_year=$request->year;
            $lists->country=$request->country;
            $lists->Film_release=$request->release;
            $lists->tab=$request->tab;
            $lists->Film_img =$imagePath;
            // $lists->Film_bgr =$imagePath2;
        }}
        else if($request->has('bgr')){
            // $imagePath = request('image')->store('uploads','public');
            $imagePath2 = request('bgr')->store('uploads','public');
            $lists->id_type=$request->idtype;
            $lists->Film_name = $request->filmname;
            $lists->Film_category = $request->category;
            $lists->Film_vd=$request->trailer;
            $lists->Film_watch=$request->watch;
            $lists->Film_actor=$request->actor;
            $lists->Film_director=$request->director;
            $lists->Film_time=$request->time;
            $lists->Main_actor=$request->main;
            $lists->Film_number=$request->number;
            $lists->Film_info=$request->inforfilm;
            $lists->Film_year=$request->year;
            $lists->country=$request->country;
            $lists->Film_release=$request->release;
            $lists->tab=$request->tab;
            // $lists->Film_img =$imagePath;
            $lists->Film_bgr =$imagePath2;
        }
        else{
            $lists->id_type=$request->idtype;
            $lists->Film_name = $request->filmname;
            $lists->Film_category = $request->category;
            $lists->Film_vd=$request->trailer;
            $lists->Film_watch=$request->watch;
            $lists->Film_actor=$request->actor;
            $lists->Film_director=$request->director;
            $lists->Film_time=$request->time;
            $lists->Main_actor=$request->main;
            $lists->Film_number=$request->number;
            $lists->Film_info=$request->inforfilm;
            $lists->Film_year=$request->year;
            $lists->country=$request->country;
            $lists->Film_release=$request->release;
            $lists->tab=$request->tab;
        }
        $lists->save();
        // echo '<script language="javascript">alert("Cập nhật Phim thành công!");</script>';
        return redirect()->back()->with('success','Update Phim thành công !!!');
    }
    public function Delete($id){
        $lists=Table_film::find($id);
        $destinationPath = 'storage/'.$lists->Film_img;
        $destinationPath2 = 'storage/'.$lists->Film_bgr;
        if(file_exists($destinationPath)){
            unlink($destinationPath);
            unlink($destinationPath2);
        }
        $lists->delete();
        return redirect()->back()->with('success','Delete Phim thành công !!!');
    }

    public function search(Request $request){
        $output = '';
        $lists = Table_film::where('Film_name','LIKE','%'.$request->keyword.'%')->get();
        foreach($lists as $search){
            $output .=
            '<tr>
            <td>'.$search->Film_name.'</td>
            <td>'.$search->Film_category.'</td>
            <td>'.$search->Film_time.'</td>
            <td>'.$search->Film_number.'</td>
            <td>'.$search->country.'</td> 
            </tr>';
        }
        return response()->json($output);
    }
}
