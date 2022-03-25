
<?php $__env->startSection('mainn'); ?>
    <div class="content0">
        <?php $__currentLoopData = $searchs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $timkiem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="row2">
                                                                            
                <div class="item-body2">
                    <a href="<?php echo e(route('chitiet-movie-phim-bo',$timkiem->id)); ?>"><img src="/source/image/<?php echo e($timkiem -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
                </div>
                <div class="item-body2">
                    <p class="item-title">  <?php echo e($timkiem-> Film_name); ?></p>																						
                </div>                               
            </div>	
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
    </div>
<?php $__env->stopSection(); ?>	
<?php echo $__env->make('master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\thido_an\resources\views/do_an/search.blade.php ENDPATH**/ ?>