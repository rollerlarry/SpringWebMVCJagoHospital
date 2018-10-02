<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng Ký</title>
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
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-49">
						Forget Password
					</span>

					<div class="wrap-input100 validate-input m-b-15" data-validate = "Tải khoản không được để trống">
						<span class="label-input100">Tài khoản</span>
						<input class="input100" type="text" name="userName" placeholder="Nhập tên tài khoản">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-15" data-validate="Email không được để trống">
						<span class="label-input100">Email</span>
						<input class="input100" type="password" name="email" placeholder="Nhập email">
						<span class="focus-input100" data-symbol="&#xf124;"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-15" data-validate="Mã xác minh không được để trống">
						<span class="label-input100">Mã Xác Minh</span>
						<input class="input100" type="text" name="code" placeholder="Nhập mã xác minh">
						<span class="focus-input100" data-symbol="&#xf111;"></span>
					</div>
					
					
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Mã xác minh được gửi qua email của bạn đã đăng ký.
						</a>
					</div>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Khôi Phục
							</button>
						</div>
					</div>

					<div class="flex-col-c p-t-60">
						<span class="txt1 p-b-17">
							Đã khôi phục được tài khoản
						</span>

						<a href="SignIn" class="txt2">
							Đăng nhập ngay
						</a>
					</div>
				</form>
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

</body>
</html>