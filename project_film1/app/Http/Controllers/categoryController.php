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
class categoryController extends Controller
{
     // thêm danh mục 


     public function getCateAdd()
     {
         return view('do_an/admin/cate/add');
     }
     public function postCateAdd(Request $request)
     {
         //kiểm tra dữ liệu hợp lệ trước khi lưu vào database
         $this->validate($request,
             [
                 'txtCateName'=>'required|min:3|max:100',
                 'txtCateLink'=>'',
                 'txtCateDescription'=>'required|min:3|max:200'
             ],
             [
                 'txtCateName.required'=>'Bạn phải nhập tên thể loại',
                 'txtCateName.min'=>'Tên thể loại có độ dài từ 3 đến 100 ký tự',
                 'txtCateName.max'=>'Tên thể loại có độ dài từ 3 đến 100 ký tự',
                 'txtCateDescription.required'=>'Bạn phải nhập mô tả',
                 'txtCateDescription.min'=>'Mô tả có độ dài từ 3 đến 200 ký tự',
                 'txtCateDescription.max'=>'Mô tả có độ dài từ 3 đến 200 ký tự',
             ]);
          //kiểm tra file tồn tại
         $name='';
          
 
         //tạo mới đối tượng Thể Loại là ProductType
         $cate=new Category;
         $cate->Name_Category=$request->txtCateName;
         $cate->Link_Category=$request->txtCateLink;
         $cate->Description=$request->txtCateDescription;
         $cate->save();
         return redirect()->back()->with('success','Thêm thể loại thành công');//trong redirect() trỏ tới hàm route hoặc đường dẫn trong url: admin/category/them
     }


     //danh sách cate
    public function getCateList()
    {
        $lists=Category::all();
        return view('do_an/admin/cate/list',compact('lists'));
    }

    public function getCateEdit($id){
        $lists=Category::find($id);
        return view('do_an/admin/cate/edit',compact('lists'));
    }
    public function Update(Request $request,$id){
        $lists = Category::find($id);
        $lists->Name_Category=$request->txtCateName;
        $lists->Link_Category=$request->txtCateLink;
        $lists->Description=$request->txtCateDescription;
               
        $lists->save();
        // echo '<script language="javascript">alert("Cập nhật Phim thành công!");</script>';
        return redirect()->back()->with('success','Update Danh mục thành công !!!');
    }
    public function Delete($id){
        $lists=Category::find($id);
        $lists->delete();
        return redirect()->back()->with('success','Delete thành công !!!');
    }
}
