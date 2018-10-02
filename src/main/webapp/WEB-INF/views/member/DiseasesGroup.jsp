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
						<h3>TÀI LIỆU BỆNH</h3>
					</div>
					
				</div><!-- Container /- -->
			</div><!-- Page Banner -->
			
			<!-- Carrier Section -->
			<div class="carrier-section container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<!-- Section Header -->
					<div class="section-header">
						<h3>DANH SÁCH CÁC BỆNH VỀ THẦN KINH HỌC</h3>
					</div><!-- Section Header /- -->
					<div class="carrier-box-bg">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="faqheading1">
								<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
								<c:forEach var = "diseases" items="${listDiseasesGroup}">
									<h4 class="panel-title">
										<a class="collapsed" href="../Diseases-details/${diseases.getIdDiseases()}" >${diseases.getDiseasesName()}</a>
									</h4>
									<br>
								</c:forEach>  
								</div>
							</div>
						</div>
					</div>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div><!-- Container /- -->
			</div><!-- Carrier Section /- -->
		</main>
	</div>
	<div class="footer-bottom">
		<jsp:include page="include/Footer.jsp"></jsp:include>
	</div>
</div>
	<jsp:include page="include/Bottom.jsp"></jsp:include>	
</body>

</html>