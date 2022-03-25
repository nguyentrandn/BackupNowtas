
<?php $__env->startSection('stylesheet'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('main_admin'); ?>
<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title" >
                              <h2>Product<small> List</small></h2>
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
                                    <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="keyword" id="keyword" />
                                    <button type="button" class="btn btn-outline-primary">search</button>
                                  </div>
                              </div>
                             
                              <div class="full padding_infor_info">
                                 <div class="table_row">
                                    <div class="">
                                    <table class="table" id="dataTables-example">
                                        <?php if(Session::has('success')): ?>                    
                            <div class="alert-success alert-success" style="
                            margin-top: 0px;" role="alert"><?php echo e(Session::get('success')); ?></div>
                                         <?php endif; ?>
                                        <thead>
                                            <tr>                             
                                                <th>Film Name</th>
                                                <th>Film image</th>
                                                <th>Film category</th>
                                                <th>Film time</th>
                                                <th>film number</th>
                                                <th>country</th>
                                                <th>Delete</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody id="listpro">                                      
                                            <?php $__currentLoopData = $lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                                              
                                                <tr>
                                                    <td><?php echo e($list->Film_name); ?></td>
                                                    <td><img src="<?php echo e(URL::To('storage/'.$list -> Film_img)); ?>"  alt="" height="100px" width="80px"></td>
                                                    <td><?php echo e($list->Film_category); ?></td>
                                                    <td><?php echo e($list->Film_time); ?></td>
                                                    <td><?php echo e($list->Film_number); ?></td>
                                                    <td><?php echo e($list->country); ?></td>
                                                    <td ><a href="<?php echo e(route('admin.getProductDelete',$list->id)); ?> " onclick="return confirm('bạn có chắc không??')"> <i class="fa fa-trash-o  fa-fw"></i> Xóa</a></td>
                                                    <td > <a href="<?php echo e(route('admin.getProductEdit',$list->id)); ?>"> <i class="fa fa-pencil fa-fw"></i>Sửa</a></td>
                                                </tr>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
  $(document).ready(function(){
   $(document).on('keyup','#keyword', function(){
      var keyword = $(this).val();
      $.ajax({
         type:"get",
         url:"/search",
         data:{
            keyword:keyword
         },
         dataType:"json",
         success: function(response){
            $('#listpro').html(response);
         }
      });
   });
  });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\project_film1\resources\views/do_an/admin/product/list.blade.php ENDPATH**/ ?>