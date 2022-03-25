<!doctype html>
<html>
	<head>
		
		<title> SS PHIM | Xem Phim Mới | Xem Phim Online | Full Hd-Vietsub </title>
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		<link rel="stylesheet" type="text/css" href="source/css/home.css">
		<link rel="stylesheet" type="text/css" href="source/css/search.css">
		<link rel="shortcut icon" type="image/png"  href="source/image/logo1.png ">
		
        
	<!-- favicon-->	
	
				
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-latest.js"></script>
		<script src="source/js/main.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<!-- favicon-->
  </style>
 
	</head>
	<body>
	
<div class="top" >
	<header>
		<div class="topleft">
			<a href=""><img src="source/image/logo.png" alt="" height="60px"></a>
		</div>
		<div class="topright">
			<ul>
			<?php $__currentLoopData = $loai_sp; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sp): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<li><a id="page" href="<?php echo e($sp->Link_Category); ?>"><?php echo e($sp->Name_Category); ?></a></li>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>		
			</ul>
		</div>
	</header>
</div>
<div class='topmini'> 			
    <div class="timkiem">						
        <input type="text" name="key" class="inputtimkiem" placeholder="Tìm Kiếm Trên SS Phim..."/></input>
            <a class="nut">
                <div class="tool">
                    <button class="search" ><i class="fas fa-search"></i> </button>												                  
               		<span class="tooltext tool-bottom">Tìm Kiếm</span>
               </div>
            </a>              
    </div>
		 
</div>
<div class="main">
	<?php echo $__env->yieldContent('mainn'); ?>

		<div class="overlight"></div>
		<div class='footer'style="background-image:url(/source/image/foot.jpg)" width="100%">
			
			<a> Công ty TNHH Store<br><br><br>
			Địa chỉ: k332/h202 Trường Chinh phường Hòa An quận Cẩm Lệ TP Đà Nẵng. Tổng đài hổ trợ 19001223 - Email:Long@hotro.store.vn<br><br>
			Mã số doanh nghiệp: 0328946750 do Sở Kế Hoạch & Đầu Tư TP Đà Nẵng cấp lần đầu ngày 01/06/2016<br><br>
			<i class="far fa-copyright"></i> 2016 - Bản quyền thuộc về Công Ty TNHH Store</a>
		</div>
	
		
</div>

	


    
	<!-- phần totop -->	
<script type="text/javascript" src="source/js/jquery-2.1.4.min.js"></script>
<script src="source/js/jquery-ui.js"></script>
<script src="source/js/jquery.swipebox.min.js"></script> 
<script type="text/javascript" src="source/js/move-top.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	
	
	<button id="toTop"><i class="fas fa-angle-double-up"></i></button>
	
	</body>
</html><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/master.blade.php ENDPATH**/ ?>