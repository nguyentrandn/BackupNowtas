@extends('do_an.admin.layout.adminmaster')
@section('main_admin')

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Product<small> Add</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                  
                        <form action="{{ route('admin.postProducAdd') }}" method="post" class="beta-form-checkout" enctype="multipart/form-data">
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
                                <label for="idtype"> Type</label>
                                    <div class="form-check">
                                        <input class="form-check-input @error('id') is-invalid @enderror" value="anime" type="radio" id="id_anime" name="idtype" >
                                        <label for="id_anime" class="form-check-label">anime</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input @error('id') is-invalid @enderror" value="tinhcam" type="radio" id="id_tinhcam" name="idtype" >
                                        <label for="id_tinhcam" class="form-check-label">tình cảm</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input @error('id') is-invalid @enderror" value="hanhdong" type="radio" id="id_hanhdong" name="idtype" >
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
								<input class="form-control" type="text" name="filmname" placeholder="Please Enter Film Name" required>
                            </div>
                            <div class="form-group">
                                <label for="category">Thể loại</label>
								<input class="form-control" type="text" name="category" placeholder="Please Enter category" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Film image*</label>
								<input class="form-control" type="file" name="image"  required>
                            </div>
                            <div class="form-group">
                                <label for="bgr">Background Film*</label>
								<input class="form-control" type="file" name="bgr" required >
                            </div>
                            <div class="form-group">
                                <label for="trailer">video trailer*</label>
								<input class="form-control" type="text" name="trailer" placeholder="Please Enter trailer" >
                            </div>
                            <div class="form-group">
                                <label for="watch">video watch*</label>
								<input class="form-control" type="text" name="watch" placeholder="Please Enter watch" >
                            </div>
                            <div class="form-group">
                                <label for="actor">Diễn viên chính </label>
								<input class="form-control" type="text" name="actor" placeholder="Please enter actor"  >
                            </div>
                            <div class="form-group">
                                <label for="director">Đạo diễn </label>
								<input class="form-control" type="text" name="director" placeholder="Please enter director" >
                            </div>
                            <div class="form-group">
                                <label for="time">Thời lượng </label>
								<input class="form-control" type="text" name="time" placeholder="Please enter Time"  >
                            </div>
                             <div class="form-group">
                                <label for="main">Sự nghiệp diễn viên chính </label>
								<input class="form-control" placeholder="Please enter infor-actor" type="text" name="main"  >
                            </div>
                            <div class="form-group">
                                <label for="number">Số tập </label>
								<input class="form-control" type="text" placeholder="Please enter Episodes" name="number"  >
                            </div>
                            <div class="form-group">
                                <label for="inforfilm">Thông tin phim </label>
								<input class="form-control" type="text" placeholder="Please enter Infor-Film" name="inforfilm" >
                            </div>
                            <div class="form-group">
                                <label for="year">Năm sản xuất </label>
								<input class="form-control" placeholder="Please enter Year" type="text" name="year"  >
                            </div> 
                            <div class="form-group">
                                <label for="country">Quốc gia </label>
								<input class="form-control" type="text" placeholder="Please enter country" name="country"  >
                            </div>
                            <div class="form-group">
                                <label for="release ">	Ngày công chiếu </label>
								<input class="form-control" placeholder="dd/mm/yy"  type="text" name="release" >
                            </div>      
                            <div class="form-group">
                                <label for="tab "> Chọn tab hiển thị </label><br>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="bo" type="radio" id="tab_bo" name="tab" >
                                    <label for="tab_bo" class="form-check-label">Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="le" type="radio" id="tab_le" name="tab" >
                                    <label for="tab_le" class="form-check-label">Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="scr1" type="radio" id="tab_scr1" name="tab" >
                                    <label for="tab_scr1" class="form-check-label">Scroll Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="scr2" type="radio" id="tab_scr2" name="tab" >
                                    <label for="tab_scr2" class="form-check-label">Scroll Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="new" type="radio" id="new" name="tab" >
                                    <label for="new" class="form-check-label">Phim mới</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="anime" type="radio" id="anime" name="tab" >
                                    <label for="anime" class="form-check-label">Phim hoạt hình</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input @error('tab') is-invalid @enderror" value="sap" type="radio" id="sap" name="tab" >
                                    <label for="sap" class="form-check-label">Phim sắp chiếu</label>
                                    @error('tab')
                                        <div class="invalid-feedback">
                                            {{$message}}
                                        </div>
                                    @enderror
                                </div>
                               
                            </div>             
                            <button type="submit" class="btn btn-default">Product Add</button>
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
