<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en"><!--<![endif]-->
<head>
	<jsp:include page="include/Top.jsp"></jsp:include>
	
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
<div class="boxed-container">
	<jsp:include page="include/Header.jsp"></jsp:include>
	
	<div class="main-container">
		<main>
			<!-- Page Banner -->
			<div class="page-banner container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<div class="page-banner-content">
						<h3>THÔNG TIN THUỐC</h3>
					</div>
					
				</div><!-- Container /- -->
			</div><!-- Page Banner -->
		
			<!-- Gallery Single Section -->
			<div class="gallery-single-section container-fluid no-padding">
				<div class="section-padding"></div>
				<!-- Container -->
				<div class="container">
				
					
					<div class="row">
						<div class="col-md-4 col-sm-5 col-xs-6">
							<div class="info-box">
								<h3>TÊN THUỐC :<span>${medicament.getMedicamentName() }</span></h3>
								<h3>DẠNG THUỐC :<span>${medicament.getMedicamentType() }</span></h3>
								<h3>NHÀ SẢN XUẤT:<span>${medicament.getMedicamentProducer() }</span></h3>
							</div>
						</div>
						<div class="col-md-8 col-sm-7 col-xs-6">
							<div class="info-content">
								<h3>Chỉ định</h3>
								<p>${medicament.getMedicamentFunction() }</p>
							</div>
						</div>
						
					</div>
				</div><!-- Container /- -->
				<div class="section-padding"></div>
			</div><!-- Gallery Single Section /- -->

		</main>
	</div>
	<div class="footer-bottom">
		<jsp:include page="include/Footer.jsp"></jsp:include>
	</div>
</div>
	<jsp:include page="include/Bottom.jsp"></jsp:include>	
</body>

</html>