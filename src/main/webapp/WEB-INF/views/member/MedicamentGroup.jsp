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
						<h3>DANH SÁCH CÁC NHÓM THUỐC</h3>
					</div>
					
				</div><!-- Container /- -->
			</div><!-- Page Banner -->
		<!-- Gallery Section -->
			<div class="gallery-section gallery-section1 container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<ul id="filters" class="portfolio-categories no-left-padding">
					<li><a data-filter="*" class="active" href="#">Show All</a></li>
						<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
						<c:forEach var = "medicamentGroup" items="${listMedicamentGroup}">
							<li><a data-filter=".${medicamentGroup.getIdMedicamentGroup()}" href="#">${medicamentGroup.getMedicamentGroupName()}</a></li>
						</c:forEach>
					</ul>
					<ul class="portfolio-list no-left-padding">
						<c:forEach var = "medicament" items="${listMedicament}">
							<li class="col-md-4 col-sm-4 col-xs-6 ${medicament.getIdMedicamentGroup()}">
								<div class="content-image-block">
									<img src="${medicament.getMedicamentImage()}" alt="gallery">
									<div class="content-block-hover">
										<span>Tên thuốc</span>
										<h5>${medicament.getMedicamentName()}</h5>
										<a class="zoom-in" href="${medicament.getMedicamentImage()}"><i class="fa fa-search-plus fa-2x"></i></a>
										<a href="Medicament-details/${medicament.getIdMedicament()}"><i class="fa fa-info-circle fa-2x"></i></a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
					<!-- <nav class="ow-pagination text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
						</ul>
					</nav> -->
				</div><!-- Container /- -->
			</div><!-- Gallery Section -->	

		</main>
	</div>
	<div class="footer-bottom">
		<jsp:include page="include/Footer.jsp"></jsp:include>
	</div>
</div>
	<jsp:include page="include/Bottom.jsp"></jsp:include>	
</body>

</html>