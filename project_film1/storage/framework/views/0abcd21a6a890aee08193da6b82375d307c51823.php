
<?php $__env->startSection('main_admin'); ?>

<!-- dashboard inner -->
<div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
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
                  
                        <form action="<?php echo e(route('admin.postProducAdd')); ?>" method="post" class="beta-form-checkout" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <?php if(count($errors)>0): ?>
                    <div class="alert-danger2 alert-danger">
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $err): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php echo e($err); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                <?php endif; ?>
                <?php if(Session::has('success')): ?>                    
                    <div class="alert-success2 alert-success" role="alert"><?php echo e(Session::get('success')); ?></div>
                   
                <?php endif; ?>
                            
                            <div class="form-group">
                                <label for="id">ID Type*</label>
								<input class="form-control" type="text" name="idtype" placeholder="Please Enter IDtype" required>
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
								<input class="form-control" type="text" name="trailer" placeholder="Please Enter trailer" required>
                            </div>
                           
                            <div class="form-group">
                                <label for="actor">Diễn viên chính </label>
								<input class="form-control" type="text" name="actor" placeholder="Please enter actor" required>
                            </div>
                            <div class="form-group">
                                <label for="director">Đạo diễn </label>
								<input class="form-control" type="text" name="director" placeholder="Please enter director" required>
                            </div>
                            <div class="form-group">
                                <label for="time">Thời lượng </label>
								<input class="form-control" type="text" name="time" placeholder="Please enter Time" required>
                            </div>
                             <div class="form-group">
                                <label for="main">Tiểu sử diễn viên chính </label>
								<input class="form-control" placeholder="Please enter infor-actor" type="text" name="main" required>
                            </div>
                            <div class="form-group">
                                <label for="number">Số tập </label>
								<input class="form-control" type="text" placeholder="Please enter Episodes" name="number"required >
                            </div>
                            <div class="form-group">
                                <label for="inforfilm">Thông tin phim </label>
								<input class="form-control" type="text" placeholder="Please enter Infor-Film" name="inforfilm" >
                            </div>
                            <div class="form-group">
                                <label for="year">Năm sản xuất </label>
								<input class="form-control" placeholder="Please enter Year" type="text" name="year" required>
                            </div> 
                            <div class="form-group">
                                <label for="country">Quốc gia </label>
								<input class="form-control" type="text" placeholder="Please enter country" name="country" required>
                            </div>
                            <div class="form-group">
                                <label for="release ">	Ngày ra rạp </label>
								<input class="form-control"  type="text" name="release" >
                            </div>      
                            <div class="form-group">
                                <label for="tab "> chọn tab thể loại </label>
								<input class="form-control" placeholder="bộ, mới, lẻ" type="text" name="tab" required>
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



<?php $__env->stopSection(); ?>

<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/product/add.blade.php ENDPATH**/ ?>