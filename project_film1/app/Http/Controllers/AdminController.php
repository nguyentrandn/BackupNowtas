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

class AdminController extends Controller
{
    // thêm tài khoản admin
    public function getSignin(){
        
        return view('do_an.admin.acc.add');
    }

    public function postSignin(Request $req){

        $this->validate($req,
        ['email'=>'required|email|unique:users,email',
            'password'=>'required|min:6|max:20',
            'fullname'=>'required',
            'repassword'=>'required|same:password',
            'address'=>'required',
            'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ],
        ['email.required'=>'Vui lòng nhập email !!!',
        'email.email'=>'Không đúng định dạng email !!!',
        'email.unique'=>'Email đã có người sử  dụng !!!',
        'password.required'=>'Vui lòng nhập mật khẩu !!!',
        'repassword.same'=>'Mật khẩu không giống nhau !!!',
        'password.min'=>'Mật khẩu ít nhất 6 ký tự !!!',
        'address.required'=>'Vui lòng nhập địa chỉ !!!',
        'file.required'=>'Hãy thêm hình ảnh !!!'
        ]);
  
     $image = $req->file('file');
     $input['imagename'] = time().'.'.$image->getClientOriginalExtension();  
     $destinationPath = public_path('/source/image');
     $image->move($destinationPath, $input['imagename']);
     $user=new User();
     $user->full_name=$req->fullname;
     $user->email=$req->email;
     $user->password=Hash::make($req->password);
     $user->phone=$req->phone;
     $user->address=$req->address;
     $user->image = $input['imagename'];
     $user->save();

       
        return redirect()->back()->with('success','Thêm tài khoản thành công !!!');
    }

    // đăng nhập
    public function getLogin(){
        
        return view('do_an.admin.login');
    }
    public function postLogin(Request $req){
        $this->validate($req,
        [
            'email'=>'required|email',
            'password'=>'required|min:6|max:20'
        ],
        [
            'email.required'=>'Vui lòng nhập email !!!',
            'email.email'=>'Không đúng định dạng email !!!',
            'password.required'=>'Vui lòng nhập mật khẩu !!!',
            'password.min'=>'Mật khẩu ít nhất 6 ký tự !!!'
        ]
        );
        $credentials=['email'=>$req->email,'password'=>$req->password];
        if(Auth::attempt($credentials)){//The attempt method will return true if authentication was successful. Otherwise, false will be returned.
            return redirect('/admin/home');
        }
        else{
            return redirect()->back()->with(['flag'=>'danger','message'=>'Sai mật khẩu hoặc tài khoản !!!']);
        }
    }


   
     /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    //  đăng xuất
    public function getLogout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('getLogin');
        
        exit();
    }

//danh sách user
    public function getUserList()
    {
        $listuser=User::all();
        return view('do_an/admin/acc/list',compact('listuser'));
    }

     // trang chủ admin
    public function getHome()
    {
        return view('do_an/admin/dashboard/index');
    }

}
