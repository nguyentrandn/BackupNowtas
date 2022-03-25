@extends('do_an.admin.layout.adminmaster')
@section('main_admin')

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Category<small> Edit</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    @if(count($errors)>0)
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $error)
                                    {{ $error }}<br>
                                @endforeach
                            </div>
                        @endif
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success')}}
                            </div>
                        @endif
                        <form action="{{route('admin.postCateEdit',$lists->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf               
                            <div class="form-group">
                                <label>Category Name</label>
                                <input class="form-control" name="txtCateName" value="{{$lists->Name_Category}}" placeholder="Please Enter Category Name" />
                            </div> 
                            <div class="form-group">
                                <label>Category Link</label>
                                <input class="form-control" name="txtCateLink" value="{{$lists->Link_Category}}" placeholder="Please Enter Category Link" />
                            </div> 
                            <div class="form-group">
                                <label>Description</label>
                                <input class="form-control" name="txtCateDescription"  value="{{$lists->Description}}" placeholder="Please Enter Description" />
                            </div> 
                                              
                            <button type="submit" class="btn btn-default">Category Edit</button>
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
