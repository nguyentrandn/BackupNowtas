@extends('do_an.admin.layout.adminmaster')
@section('main_admin')

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Accounts<small> Add</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                  
                        <form action="{{ route('admin.postsignin') }}" method="post" class="beta-form-checkout" enctype="multipart/form-data">
                    @csrf
                    @if (count($errors)>0)
                    <div class="alert-danger alert-danger">
                        @foreach($errors->all() as $err)
                            {{ $err }}
                        @endforeach
                    </div>
                @endif
                @if(Session::has('success'))                    
                    <div class="alert-success alert-success" role="alert">{{ Session::get('success') }}</div>
                   
                @endif
                              
                            <div class="form-group">
                                <label for="email">Email*</label>
								<input class="form-control" type="email" name="email" placeholder="Please Enter Email" required>
                            </div>
                            <div class="form-group">
                                <label for="your_last_name">Fullname*</label>
								<input class="form-control" type="text" name="fullname" placeholder="Please Enter Fullname" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Password*</label>
								<input class="form-control" type="password" name="password" placeholder="Please Enter Password" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Re password*</label>
								<input class="form-control" type="password" name="repassword" placeholder="Please Enter Re password" required>
                            </div>
                            <div class="form-group">
                                <label for="address">Address*</label>
								<input class="form-control" type="text" name="address" placeholder="Please Enter Address" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone*</label>
								<input class="form-control" type="text" name="phone" placeholder="Please Enter Phone" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Image admin</label>
								<input class="form-control" type="file" name="file" >
                            </div>
                                              
                            <button type="submit" class="btn btn-default">User Add</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                    </div>
                </div>
                      
                  </div>
                  <!-- footer -->
                  <div class="container-fluid">
                     <div class="footer">
                        <p>Copyright © 2018 Designed by html.design. All rights reserved.</p>
                     </div>
                  </div>
</div>
<!-- end dashboard inner -->



@endsection
