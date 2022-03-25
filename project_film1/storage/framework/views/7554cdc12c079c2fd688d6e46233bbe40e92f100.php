<!doctype html>
<html>
	<head>
		
		<title> SS PHIM | Xem Phim Mới | Xem Phim Online | Full Hd-Vietsub </title>
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="/source/css/chitiet-movie.css">
		
        <link rel="shortcut icon" type="image/png"  href="source/image/logo1.png ">
	<!-- favicon-->	
	
		
		
		
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-latest.js"></script>
	<!-- favicon-->
  </style>
 
	</head>
	<body>
	
<div class="top">
	<header>
		<div class="topleft">
			<a href=""><img src="source/image/logo.png" alt="" height="60px"></a>
		</div>
		<div class="topright">
			<ul>
				<li class="hr-page"><a id="page" href=""> Phim Lẻ </a></li>
				<li><a id="page" href=""> Phim Bộ </a></li>
				<li><a id="page" href=""> Phim Hoạt Hình </a></li>
				<li><a id="page" href=""> Phim Chiếu Rạp </a></li>
				<li><a id="page" href="home"> Phim Mới </a></li>		
			</ul>
		</div>
	</header>
</div>
<div class='topmini'> 			
    <div class="timkiem">						
        <input type="text" name="" class="inputtimkiem" placeholder="Tìm Kiếm Trên SS Phim..."/></input>
            <a class="nut">
                <div class="tool">
                    <button class="search" ><i class="fas fa-search"></i> </button>												                  
               		<span class="tooltext tool-bottom">Tìm Kiếm</span>
               </div>
            </a>              
    </div>
		 
</div>
<div class="main2">
	<div class="mainn2">
    <?php $__currentLoopData = $suggests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $suggest): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="row2">
																		
            <div class="item-header">
            <a href="<?php echo e(route('chitiet-movie',$suggest->id)); ?>"><img src="/source/image/<?php echo e($suggest -> Film_img); ?>"  alt="" height="250px" width="180px"></a>
                <a class="icon1" href=""><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></a>
                <a class="icon2" href=""><i class="fas fa-star"></i></a>
            </div>
            <div class="item-body">
                <p class="item-title"><?php echo e($suggest->Film_name); ?></p>																						
            </div>
            <div class="item-caption">								
                <a class="beta-btn primary" href=''>Xem phim </a>								
            </div>
                
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
       
       
	</div>
    <div class="btn-next"> 
        <button class="next" >Next </button>		
    </div> 
</div>

<div class='footer'>
				
		<a> Công ty TNHH Store<br><br><br>
		Địa chỉ: k332/h202 Trường Chinh phường Hòa An quận Cẩm Lệ TP Đà Nẵng. Tổng đài hổ trợ 19001223 - Email:Long@hotro.store.vn<br><br>
		Mã số doanh nghiệp: 0328946750 do Sở Kế Hoạch & Đầu Tư TP Đà Nẵng cấp lần đầu ngày 01/06/2016<br><br>
		<i class="far fa-copyright"></i> 2016 - Bản quyền thuộc về Công Ty TNHH Store</a>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.js">
</script>

	</body>
</html><?php /**PATH C:\xampp\htdocs\thido_an\resources\views/do_an/phim-le.blade.php ENDPATH**/ ?>