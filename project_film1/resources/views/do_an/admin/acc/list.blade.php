@extends('do_an.admin.layout.adminmaster')
@section('main_admin')
<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>User<small> List</small></h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                        <!-- invoice section -->
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2><i class="fa fa-file-text-o"></i> List</h2>
                                 </div>
                                 <div class="input-group " style="width: 50%;">
                                    <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                                    <button type="button" class="btn btn-outline-primary">search</button>
                                  </div>
                              </div>
                             
                              <div class="full padding_infor_info">
                                 <div class="table_row">
                                   
                                    <table class="table table-striped" id="dataTables-example">
                                        <thead>
                                            <tr>                             
                                                <th>Full Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Address</th>
                                                <th>Image</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>                                      
                                            @foreach($listuser as $list)                                              
                                                <tr>
                                                    <td>{{$list->full_name}}</td>
                                                    <td>{{$list->email}}</td>                                                  
                                                    <td>{{$list->phone}}</td>
                                                    <td>{{$list->address}}</td>
                                                    <td><img alt="{{ $list['image'] }}" src="/source/image/{{$list->image}}" style="cursor: zoom-in;" width="60px"/></td>
                                                    <td ><i class="fa fa-trash-o  fa-fw"></i><a href=""> Xóa</a></td>
                                                    <td ><i class="fa fa-pencil fa-fw"></i> <a href="">Sửa</a></td>
                                                </tr>
                                                @endforeach
                                        </tbody>
                                    </table>
                                   
                                 </div>
                              </div>
                           </div>
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