<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng Nhập</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/account/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/account/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/account/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/account/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('resources/account/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
					<div class="txt1 text-center p-t- p-b-10">
						<span>
							<a href="/JaGoWeb/">TRANG CHỦ</a>
						</span>
					</div>
					<span class="login100-form-title p-b-49">
						SignIn
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Tải khoản không được để trống">
						<span class="label-input100">Tài khoản</span>
						<input class="input100" type="text" id="userName" placeholder="Nhập tên tài khoản">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Mật khẩu không được để trống">
						<span class="label-input100">Mật khẩu</span>
						<input class="input100" type="password" id="passWord" placeholder="Nhập mật khẩu">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					<div class="text-right p-t-8 p-b-15">
						<a href="ForgetPassWord">
							Quên mật khẩu?
						</a>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button id="btnLogin" class="login100-form-btn" >
								Đăng Nhập
							</button>
							
						</div>
					</div>
					<div class="txt1 text-center p-t-35 p-b-15">
						<span>
							Hoặc đăng nhập bằng
						</span>
					</div>

					<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="login100-social-item bg2">
							<i class="fa fa-twitter"></i>
						</a>

						<a href="#" class="login100-social-item bg3">
							<i class="fa fa-google"></i>
						</a>
					</div>
					
					<div class="flex-col-c p-t-60">
						<span class="txt1 p-b-17">
							<p style="color:red;text-align: center;" id="titleNoti">${checkLogin}</p>
						</span>		
					</div>
					
					
					<div class="flex-col-c p-t-75">
						<span class="txt1 p-b-17">
							Chưa có tài khoản
						</span>

						<a href="SignUp" class="txt2">
							Đăng ký
						</a>
					</div>
		
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="resources/account/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/account/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/account/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/account/js/main.js"></script>
	<script src="resources/account/js/custom.js"></script>

</body>
</html>