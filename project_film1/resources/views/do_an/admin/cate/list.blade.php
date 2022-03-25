@extends('do_an.admin.layout.adminmaster')
@section('main_admin')
<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Category<small> List</small></h2>
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
                                    <div class="">
                                    <table class="table table-striped table-bordered " id="dataTables-example">
                                       @if(Session::has('success'))                    
                                       <div class="alert-success alert-success" style="
                                       margin-top: 0px;" role="alert">{{ Session::get('success') }}</div>
                                                    @endif
                                        <thead>
                                            <tr>                             
                                                <th>Category Name</th>
                                                <th>Description</th>
                                                <th>Link Category</th>
                                                <th>Delete</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                      
                                            @foreach($lists as $list)                                              
                                                <tr>
                                                    <td>{{$list->Name_Category}}</td>
                                                    <td>{{$list->Description}}</td>
                                                    <td>{{$list->Link_Category}}</td>
                                                    <td ><i class="fa fa-trash-o  fa-fw"></i><a href="{{route('admin.getCateDelete',$list->id)}}" onclick="return confirm('bạn có chắc không??')"> Xóa</a></td>
                                                    <td ><i class="fa fa-pencil fa-fw"></i> <a href="{{route('admin.getCateEdit',$list->id)}}">Sửa</a></td>
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