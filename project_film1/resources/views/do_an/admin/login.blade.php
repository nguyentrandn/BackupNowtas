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
      <title>SS PHIM | LOGIN</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="shortcut icon" type="image/png"  href="/source/image/logo1.png ">
      <!-- site icon -->
      <link rel="icon" href="images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="/source-admin/css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="/source-admin/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="/source-admin/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="/source-admin/css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="/source-admin/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="/source-admin/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="/source-admin/css/custom.css" />
      <!-- calendar file css -->
      <link rel="stylesheet" href="/source-admin/js/semantic.min.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body class="inner_page login">
      <div class="full_container">
         <div class="container">
            <div class="center verticle_center full_height">
               <div class="login_section">
                  <div class="logo_login">
                     <div class="center">
                      <h1> Đăng Nhập Admin</h1>
                     </div>
                  </div>
                  <div class="login_form">
                        @if ($errors->any())
                            <div class="alert-warning">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        @if(Session::has('flag'))
                            <div class="alert-warning {{ Session::get('flag') }}">{{ Session::get('message') }}</div>
                        @endif

                     <form action="{{ route('postLogin') }}" method="post" class="beta-form-checkout">
				        @csrf
                        <fieldset>
                           <div class="field">
                              <label class="label_field">Email Address</label>              
                              <input type="email" name="email" placeholder="E-mail" required>
                           </div>
                           <div class="field">
                              <label class="label_field">Password</label>
                              <input type="password" name="password" placeholder="Password" required>
                           </div>
                           <div class="field">
                              <label class="label_field hidden">hidden label</label>
                              <label class="form-check-label"><input type="checkbox" class="form-check-input"> Remember Me</label>
                              <a class="forgot" href="">Forgotten Password?</a>
                           </div>
                           <div class="field margin_0">
                              <label class="label_field hidden">hidden label</label>
                              <button type="submit" class="main_bt">Sing In</button>
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
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
      <!-- nice scrollbar -->
      <script src="/source-admin/js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="/source-admin/js/custom.js"></script>
   </body>
</html>