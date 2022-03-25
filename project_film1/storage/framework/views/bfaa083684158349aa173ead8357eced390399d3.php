
<?php $__env->startSection('main_admin'); ?>

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
                  
                        <form action="<?php echo e(route('admin.postProducAdd')); ?>" method="post" class="beta-form-checkout" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <?php if(count($errors)>0): ?>
                    <div class="alert-danger alert-danger">
                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $err): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php echo e($err); ?>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                <?php endif; ?>
                <?php if(Session::has('success')): ?>                    
                    <div class="alert-success alert-success" role="alert"><?php echo e(Session::get('success')); ?></div>
                   
                <?php endif; ?>
                            
                            <div class="form-group">
                                <label for="idtype"> Type</label>
                                    <div class="form-check">
                                        <input class="form-check-input <?php $__errorArgs = ['id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="anime" type="radio" id="id_anime" name="idtype" >
                                        <label for="id_anime" class="form-check-label">anime</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input <?php $__errorArgs = ['id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="tinhcam" type="radio" id="id_tinhcam" name="idtype" >
                                        <label for="id_tinhcam" class="form-check-label">tình cảm</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input <?php $__errorArgs = ['id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="hanhdong" type="radio" id="id_hanhdong" name="idtype" >
                                        <label for="id_hanhdong" class="form-check-label">hành động</label>
                                        <?php $__errorArgs = ['id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <div class="invalid-feedback">
                                                <?php echo e($message); ?>

                                            </div>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
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
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="bo" type="radio" id="tab_bo" name="tab" >
                                    <label for="tab_bo" class="form-check-label">Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="le" type="radio" id="tab_le" name="tab" >
                                    <label for="tab_le" class="form-check-label">Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="scr1" type="radio" id="tab_scr1" name="tab" >
                                    <label for="tab_scr1" class="form-check-label">Scroll Phim Bộ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="scr2" type="radio" id="tab_scr2" name="tab" >
                                    <label for="tab_scr2" class="form-check-label">Scroll Phim Lẻ</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="new" type="radio" id="new" name="tab" >
                                    <label for="new" class="form-check-label">Phim mới</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="anime" type="radio" id="anime" name="tab" >
                                    <label for="anime" class="form-check-label">Phim hoạt hình</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="sap" type="radio" id="sap" name="tab" >
                                    <label for="sap" class="form-check-label">Phim sắp chiếu</label>
                                    <?php $__errorArgs = ['tab'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <div class="invalid-feedback">
                                            <?php echo e($message); ?>

                                        </div>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
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



<?php $__env->stopSection(); ?>

<?php echo $__env->make('do_an.admin.layout.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\project_film1\resources\views/do_an/admin/product/add.blade.php ENDPATH**/ ?>