@extends('do_an.admin.layout.adminmaster')
@section('main_admin')

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Product<small> Edit</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                 
                        <form method="post" action=" {{route('admin.postProductEdit',$lists->id)}}"class="beta-form-checkout" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            @if (count($errors)>0)
                            <div class="alert-danger alert-danger">
                                @foreach($errors->all() as $err)
                                    {{ $err }}
                                @endforeach
                            </div>
                        @endif
                            @if(Session::has('success'))                    
                            <div class="alert-success alert-success" style="
                            margin-top: 0px;" role="alert">{{ Session::get('success') }}</div>
                           
                        @endif
                            <div class="form-group">
                                <label for="idtype"> Type</label>
                                    <div class="form-check">
                                        <input class="form-check-input " value="anime" type="radio" id="id_anime" {{ $lists->id_type=='anime'? 'checked':''}} name="idtype" >
                                        <label for="id_anime" class="form-check-label">anime</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" value="tinhcam" type="radio" id="id_tinhcam" {{ $lists->id_type=='tinhcam'?'checked':''}} name="idtype" >
                                        <label for="id_tinhcam" class="form-check-label">tình cảm</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" value="hanhdong" type="radio" id="id_hanhdong" {{ $lists->id_type=='hanhdong'? 'checked':''}} name="idtype" >
                                        <label for="id_hanhdong" class="form-check-label">hành động</label>
                                        @error('id')
                                            <div class="invalid-feedback">
                                                {{$message}}
                                            </div>
                                        @enderror
                                    </div>

                            </div>
                            <div class="form-group">
                                <label for="filmname">Film Name*</label>
								<input class="form-control" type="text" name="filmname" value="{{$lists->Film_name}}" placeholder="Please Enter Film Name" required>
                            </div>
                            <div class="form-group">
                                <label for="category">Thể loại</label>
								<input class="form-control" type="text" name="category" value="{{$lists->Film_category}}" placeholder="Please Enter category" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Film image*</label>
								<input class="form-control" type="file" name="image" value="{{$lists->Film_img}}"  >
                                <img src="{{URL::To('storage/'.$lists -> Film_img)}}"  alt="" height="100px" width="80px">
                            </div>
                            <div class="form-group">
                                <label for="bgr">Background Film*</label>
								<input class="form-control" type="file" name="bgr" value="{{$lists->Film_bgr}}"   >
                                <img src="{{URL::To('storage/'.$lists -> Film_bgr)}}"  alt="" height="100px" width="200px">
                            </div>
                            <div class="form-group">
                                <label for="trailer">video trailer*</label>
								<input class="form-control" type="text" name="trailer" value="{{$lists->Film_vd}}" placeholder="Please Enter trailer" >
                            </div>
                            <div class="form-group">
                                <label for="watch">video watch*</label>
								<input class="form-control" type="text" name="watch" value="{{$lists->Film_watch}}" placeholder="Please Enter watch" >
                            </div>
                            <div class="form-group">
                                <label for="actor">Diễn viên chính </label>
								<input class="form-control" type="text" name="actor" value="{{$lists->Film_actor}}" placeholder="Please enter actor"  >
                            </div>
                            <div class="form-group">
                                <label for="director">Đạo diễn </label>
								<input class="form-control" type="text" name="director" value="{{$lists->Film_director}}" placeholder="Please enter director" >
                            </div>
                            <div class="form-group">
                                <label for="time">Thời lượng </label>
								<input class="form-control" type="text" name="time" value="{{$lists->Film_time}}" placeholder="Please enter Time"  >
                            </div>
                             <div class="form-group">
                                <label for="main">Sự Nghiệp diễn viên chính </label>
								<input class="form-control" placeholder="Please enter infor-actor" value="{{$lists->Main_actor}}" type="text" name="main"  >
                            </div>
                            <div class="form-group">
                                <label for="number">Số tập </label>
								<input class="form-control" type="text" placeholder="Please enter Episodes" value="{{$lists->Film_number}}" name="number"  >
                            </div>
                            <div class="form-group">
                                <label for="inforfilm">Thông tin phim </label>
								<input class="form-control" type="text" placeholder="Please enter Infor-Film" value="{{$lists->Film_info}}" name="inforfilm" >
                            </div>
                            <div class="form-group">
                                <label for="year">Năm sản xuất </label>
								<input class="form-control" placeholder="Please enter Year" type="text" value="{{$lists->Film_year}}" name="year"  >
                            </div> 
                            <div class="form-group">
                                <label for="country">Quốc gia </label>
								<input class="form-control" type="text" placeholder="Please enter country" value="{{$lists->country}}" name="country"  >
                            </div>
                            <div class="form-group">
                                <label for="release ">	Ngày công chiếu </label>
								<input class="form-control" placeholder="dd/mm/yy"  type="text" value="{{$lists->Film_release}}" name="release" >
                            </div>      
                            <div class="form-group">
                                <label for="tab "> Chọn tab hiển thị </label><br>
                                <div class="form-check">
                                    <input class="form-check-input" value="bo" type="radio" id="tab_bo" {{ ($lists->tab=="bo")? "checked":""}} name="tab" >
                                    <label for="tab_bo" class="form-check-label">Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="le" type="radio" id="tab_le" {{ ($lists->tab=="le")? "checked":""}} name="tab" >
                                    <label for="tab_le" class="form-check-label">Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="scr1" type="radio" id="tab_scr1" {{ ($lists->tab=="scr1")? "checked":""}} name="tab" >
                                    <label for="tab_scr1" class="form-check-label">Scroll Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="scr2" type="radio" id="tab_scr2" {{ ($lists->tab=="scr2")? "checked":""}} name="tab" >
                                    <label for="tab_scr2" class="form-check-label">Scroll Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="new" type="radio" id="new" {{ ($lists->tab=="new")? "checked":""}} name="tab" >
                                    <label for="new" class="form-check-label">Phim mới</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" value="anime" type="radio" id="anime" {{ ($lists->tab=="anime")? "checked":""}} name="tab" >
                                    <label for="anime" class="form-check-label">Phim hoạt hình</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input"  value="sap" type="radio" id="sap" {{ ($lists->tab=="sap")? "checked":""}} name="tab" >
                                    <label for="sap" class="form-check-label">Phim sắp chiếu</label>
                                    
                                </div>
                               
                            </div>             
                            <button type="submit" class="btn btn-default">Update product</button>
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
