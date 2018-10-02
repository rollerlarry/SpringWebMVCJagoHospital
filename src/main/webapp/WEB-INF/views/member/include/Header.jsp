<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<header class="header_s header_s1 header_s11 header_s12 header_s16">
	<!-- SidePanel -->
	<div id="slidepanel">
		<!-- Top Header -->
		<div class="top-header container-fluid no-left-padding no-right-padding">
			<!-- Container -->
			<div class="container">
				<div class="call-info">
					<p><a href="tel:+123456789012" title="Phone" class="phone"><i class="fa fa-phone"></i>1234 - 5678 - 9012</a></p>
					<p><a href="mailto:info@doctor.com" title="info@doctor.com"><i class="fa fa-envelope-o"></i>info@doctor.com</a></p>
				</div>
				<div class="header-social"> 
					<ul>
						<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" title="Rss"><i class="fa fa-rss"></i></a></li>
						<li><a href="#" title="Google"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
					</ul>
				</div>
			</div><!-- Container /- -->
		</div><!-- Top Header /- -->
	</div><!-- SidePanel /- -->
	
	<!-- Ownavigation -->
	<nav class="navbar ownavigation">
		<!-- Container -->
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<c:url value="/"/>'><i class="fa fa-heartbeat"></i>Jago</a>
			</div>
			
			<div class="navbar-collapse collapse" id="navbar">
				<ul class="nav navbar-nav menubar navbar-right">
					<li><a href="index.html">TRANG CHỦ</a></li>
				
					<li><a href="about.html">GIỚI THIỆU</a></li>
					<li><a href="services.html">DỊCH VỤ</a></li>
					<li><a href="services.html">TIN TỨC</a></li>
					<li><a href="services.html">LIÊN HỆ</a></li>		
					<c:if test="${userName != null}">
						<li><a href="#"><b>Xin chào : ${userName} </b></a></li>	
					</c:if>
					<c:if test="${userName == null}">
						<li><a href="SignIn"><b>ĐĂNG NHẬP </b></a></li>	
					</c:if>
											
				</ul>
			</div>
			<div id="loginpanel" class="desktop-hide">
				<div class="right" id="toggle">
					<a id="slideit" href="#slidepanel"><i class="fo-icons fa fa-inbox"></i></a>
					<a id="closeit" href="#slidepanel"><i class="fo-icons fa fa-close"></i></a>
				</div>
			</div>
		</div><!-- Container /- -->
	</nav><!-- Ownavigation /- -->
</header>