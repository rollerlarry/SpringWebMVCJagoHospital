<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
						<h3>THÔNG TIN VỀ BỆNH CHUẨN ĐOÁN</h3>
					</div>
					
				</div><!-- Container /- -->
			</div><!-- Page Banner -->

			<!-- Tab Section -->
			<div class="tab-section container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<div class="tab-detail">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs services-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#tab-neurology" role="tab" data-toggle="tab" aria-expanded="false">TỔNG QUAN</a></li>
							<li role="presentation" class=""><a href="#tab-radiation" class="tab-review" role="tab" data-toggle="tab" aria-expanded="false">NGUYÊN NHÂN</a></li>
							<li role="presentation" class=""><a href="#tab-hematology" class="tab-review" role="tab" data-toggle="tab" aria-expanded="false">TRIỆU CHỨNG</a></li>
							<li role="presentation" class=""><a href="#tab-dermatology" class="tab-review" role="tab" data-toggle="tab" aria-expanded="false">ẢNH</a></li>
							<li role="presentation" class=""><a href="#tab-pediatrician" class="tab-review" role="tab" data-toggle="tab" aria-expanded="true">CÁCH ĐIỀU TRỊ</a></li>
							
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="tab-neurology">
								<h3>Tổng quan</h3>
								<br>
								<p>Tên bệnh : ${diseases.getDiseasesName()}</p>
								<p>Mô tả : ${diseases.getDiseasesSummary()}</p>
								<p>Mức độ : ${diseases.getDiseasesLevel()}</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="tab-radiation">
								<h3>Nguyên nhân</h3>
								<br>
								<p>${diseases.getDiseasesReason()}</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="tab-hematology">
								<h3>Triệu chứng</h3>
								<br>
									<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
									<c:forEach var = "symptom" items="${listAllSymptomOfDiseases}">
										<li>${symptom.getNameSymptom()}</li>
									</c:forEach> 	
							</div>
							<div role="tabpanel" class="tab-pane" id="tab-dermatology">
								<h3>Ảnh</h3>
								<br>
								<p><img src="../${diseases.getDiseasesImage()}"></p>
							</div>
							<div role="tabpanel" class="tab-pane " id="tab-pediatrician">
								<h3>Cách điều trị</h3>
								<br>
								<p>${diseases.getDiseasesTreatment()}</p>
							</div>
							
						</div><!-- Tab panes /- -->
					</div>
				</div><!-- Container /- -->
				<br>
				<br>
				<br>
				<br>
				<br>
			</div><!-- Tab Section -->
		</main>
	</div>
	<div class="footer-bottom">
		<jsp:include page="include/Footer.jsp"></jsp:include>
	</div>
</div>
	<jsp:include page="include/Bottom.jsp"></jsp:include>	
</body>

</html>