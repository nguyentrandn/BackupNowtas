<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Admin: <?php echo e(Auth::user()->full_name); ?></title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="shortcut icon" type="image/png"  href="/source/image/logo1.png ">
      <!-- site icon -->
      <link rel="icon" href="/source-admin/images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="/source-admin/css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="/source-admin/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="/source-admin/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="/source-admin/css/color_2.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="/source-admin/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="/source-admin/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="/source-admin/css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body class="dashboard dashboard_2">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_img"><img class="img-responsive" src="/source/image/<?php echo e(Auth::user()->image); ?>" width="55px" height="70px" alt="#"/> </div>
                        <div class="user_info">
                           <h6><?php echo e(Auth::user()->full_name); ?></h6>
                           <p><span class="online_animation"></span> Online</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <h4>General</h4>
                  <ul class="list-unstyled components">
                     <li class="active">
                        <a href="<?php echo e(route('admin.getHome')); ?>"><i class="fa fa-dashboard yellow_color"></i> <span>Dashboard</span></a>
                        
                     </li>
                     <li>
                        <a href="#element" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-diamond purple_color"></i> <span>Category</span></a>
                        <ul class="collapse list-unstyled" id="element">
                           <li><a href="<?php echo e(route('admin.getCateList')); ?>">> <span>Category list</span></a></li>
                           <li><a href="<?php echo e(route('admin.getCateAdd')); ?>">> <span>Category add </span></a></li>        
                        </ul>
                     </li>
                     <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-object-group blue2_color"></i> <span>Accounts</span></a>
                        <ul class="collapse list-unstyled" id="apps">
                           <li><a href="<?php echo e(route('admin.getUser')); ?>">> <span>Accounts list</span></a></li>
                           <li><a href="<?php echo e(route('admin.getsignin')); ?>">> <span>Accounts add</span></a></li>
                            
                        </ul>
                     </li>
                     <li class="active">
                        <a href="#additional_page" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-clone yellow_color"></i> <span>Products</span></a>
                        <ul class="collapse list-unstyled" id="additional_page">
                           <li>
                              <a href="profile.html">> <span>Products list</span></a>
                           </li>
                           <li>
                              <a href="<?php echo e(route('admin.getProductAdd')); ?>">> <span>Products add</span></a>
                           </li>
                           
                        </ul>
                     </li>
                     <li><a href="price.html"><i class="fa fa-briefcase blue1_color"></i> <span>Pricing Tables</span></a></li>
                     <li>
                        <a href="contact.html">
                        <i class="fa fa-paper-plane red_color"></i> <span>Contact</span></a>
                     </li>
                     
                     <li><a href="map.html"><i class="fa fa-map purple_color2"></i> <span>Map</span></a></li>
                     <li><a href="charts.html"><i class="fa fa-bar-chart-o green_color"></i> <span>Charts</span></a></li>
                     <li><a href="settings.html"><i class="fa fa-cog yellow_color"></i> <span>Settings</span></a></li>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar -->
            <!-- right content -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <div class="logo_section">
                           <a href="index.html"><img class="img-responsive" src="/source/image/logo.png " alt="#" /></a>
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul>
                                 <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                                 <li><a href="#"><i class="fa fa-question-circle"></i></a></li>
                                 <li><a href="#"><i class="fa fa-envelope-o"></i><span class="badge">3</span></a></li>
                              </ul>
                              <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><img class="img-responsive rounded-circle" src="/source/image/<?php echo e(Auth::user()->image); ?>" alt="#" /><span class="name_user"><?php echo e(Auth::user()->full_name); ?></span></a>
                                    <div class="dropdown-menu">
                                       <a class="dropdown-item" href="profile.html">My Profile</a>
                                       <a class="dropdown-item" href="settings.html">Settings</a>
                                       <a class="dropdown-item" href="help.html">Help</a>
                                       <a class="dropdown-item" href="<?php echo e(route('getlogout')); ?>" onclick="return confirm('bạn có chắc không??')"><span>Log Out</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <?php echo $__env->yieldContent('main_admin'); ?>
            </div>
         </div>
      </div>
      <!-- jQuery -->
      <script src="/source-admin/js/jquery.min.js"></script>
      <script src="/source-admin/js/popper.min.js"></script>
      <script src="/source-admin/js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="/source-admin/js/animate.js"></script>
      <!-- select country -->
      <script src="/source-admin/js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="/source-admin/js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="/source-admin/js/Chart.min.js"></script>
      <script src="/source-admin/js/Chart.bundle.min.js"></script>
      <script src="/source-admin/js/utils.js"></script>
      <script src="/source-admin/js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="/source-admin/js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="/source-admin/js/custom.js"></script>
      <script src="/source-admin/js/chart_custom_style2.js"></script>
   </body>
</html><?php /**PATH C:\xampp\htdocs\project_film1\resources\views/do_an/admin/layout/adminmaster.blade.php ENDPATH**/ ?>