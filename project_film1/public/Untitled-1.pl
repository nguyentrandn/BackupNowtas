$this->validate($req,
        ['email'=>'required|email|unique:users,email',
            'password'=>'required|min:6|max:20',
            'fullname'=>'required',
            'repassword'=>'required|same:password',
            'address'=>'required',
            'file'=>'required'
        ],
        ['email.required'=>'Vui lòng nhập email !!!',
        'email.email'=>'Không đúng định dạng email !!!',
        'email.unique'=>'Email đã có người sử  dụng !!!',
        'password.required'=>'Vui lòng nhập mật khẩu !!!',
        'repassword.same'=>'Mật khẩu không giống nhau !!!',
        'password.min'=>'Mật khẩu ít nhất 6 ký tự !!!',
        'address.required'=>'Vui lòng nhập địa chỉ !!!',
        'file.required'=>'Hãy thêm hình ảnh !!!',
        ]);

        $user=new User();
        $user->full_name=$req->fullname;
        $user->email=$req->email;
        $user->password=Hash::make($req->password);
        $user->phone=$req->phone;
        $user->address=$req->address;
        'image'=>$file_name,
        $user->save();

         User::postSignin([
            'full_name'=>$req->fullname,
            'email'=>$req->email,
            'password'=>$req->password,
            'address'=>$req->address,
            'phone'=>$req->phone,
            'image'=>$file_name
        ]);