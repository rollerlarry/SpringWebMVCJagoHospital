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
	<style type="text/css">

	/* CSS used here will be applied after bootstrap.css */
/* custom checkboxes */
	.custom-checkbox > [type="checkbox"],
	.custom-checkbox > label{
		margin-bottom:0px !important;
		-webkit-touch-callout: none;
		-webkit-user-select: none;
		-khtml-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}
	.custom-checkbox > [type="checkbox"]:not(:checked),
	.custom-checkbox > [type="checkbox"]:checked {
		position: absolute;
		left: -9999px;
	}
	.custom-checkbox > [type="checkbox"]:not(:checked) + label,
	.custom-checkbox > [type="checkbox"]:checked + label {
		position: relative;
		padding-left: 25px;
		cursor: pointer;
		margin-left: 30px;
	}
	.custom-checkbox > [type="checkbox"]:not(:checked) + label:before,
	.custom-checkbox > [type="checkbox"]:checked + label:before {
		content: '';
		position: absolute;
		left:0; 
		top: 50%;
		margin-top:-12px;
		width: 23px; 
		height: 23px;
		border: 1px solid #ddd;
		background: #ffffff;
		border-radius: 2px;
	}
	.custom-checkbox > [type="checkbox"]:not(:checked) + label:after,
	.custom-checkbox > [type="checkbox"]:checked + label:after {
		font: normal normal normal 14px/1 FontAwesome;
		content: '\f00c';
		position: absolute;
		top: 50%;
		margin-top:-8px;
		left: 4px;
		color: #94C947;
		transition: all .2s;
	}
	
	.custom-checkbox > [type="checkbox"]:not(:checked) + label:after {
		opacity: 0;
		transform: scale(0);
	}
	.custom-checkbox > [type="checkbox"]:checked + label:after {
		opacity: 1;
		transform: scale(1);
	}
	
	.custom-checkbox > [type="checkbox"][data-indeterminate] + label:after,
	.custom-checkbox > [type="checkbox"][data-indeterminate] + label:after {
		content: '\f068';
		left: 6px;
		opacity: 1;
		transform: scale(1);
	}
	
	.custom-checkbox > [type="checkbox"]:disabled:not(:checked) + label:before,
	.custom-checkbox > [type="checkbox"]:disabled:checked + label:before {
	  	box-shadow: none;
	  	background-color: #eeeeee;
		border-color: #eeeeee;
		cursor: not-allowed;
		opacity: 1;
		color: #dadada;
	}
	.custom-checkbox > [type="checkbox"]:disabled:checked + label:after {
	  color: #dadada; cursor: not-allowed;
	}
	.custom-checkbox > [type="checkbox"]:disabled + label {
	  color: #aaa; cursor: not-allowed;
	}
	.custom-checkbox > [type="checkbox"]:checked:focus + label:before,
	.custom-checkbox > [type="checkbox"]:not(:checked):focus + label:before {
		border: 1px solid #66afe9;
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(102, 175, 233, 0.6);
	}
	.custom-checkbox > label:hover:before {
  		border: 1px solid #88D2FF !important;
	}
	.custom-checkbox > [type="checkbox"]:disabled:not(:checked) + label:hover:before,
	.custom-checkbox > [type="checkbox"]:disabled:checked + label:hover:before{
		border: 1px solid #E4E4E4 !important;
	}
	</style>
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
						<h3>CHUẨN ĐOÁN BỆNH</h3>
					</div>
					
				</div><!-- Container /- -->
			</div><!-- Page Banner -->
			
			<!-- Carrier Section -->
			<div class="carrier-section container-fluid no-left-padding no-right-padding">
				<!-- Container -->
				<div class="container">
					<!-- Section Header -->
					<div class="section-header">
						<h3>HÃY CHỌN CÁC TRIỆU CHỨNG</h3>
					</div><!-- Section Header /- -->
					<div class="carrier-box-bg">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="faqheading1">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#faqcontent1" aria-expanded="false">Nhấn vào để xem các triệu chứng</a>
									</h4>
								</div>
								<div id="faqcontent1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="faqheading1" aria-expanded="true" style="height: 0px;">
									<div class="panel-body">
										<form action="Diagnostic/Result" method="POST">
											<div class="row">
												<div class="col-md-8 col-sm-12 col-xs-12 job-summary">
													<div class="responsibilities-list">
														<h5 class="carrier-title">Các triệu chứng:</h5>
														</br>
														<ul>
														<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
														<c:forEach var = "symptom" items="${listSymptom}">
															<div class="custom-checkbox">
														        <input name="checkboxname" type="checkbox" id="${symptom.getIdSymptom()}" value="${symptom.getIdSymptom()}">
														        <label for="${symptom.getIdSymptom()}">  -> ${symptom.getNameSymptom()}.</label>
	      													</div>
	      													<hr>
														</c:forEach>   													
														</ul>
													</div>
												</div>
												
												<div class="sent-box">
													<div class="col-md-6 col-sm-12 col-xs-12 sent-box-left">
														<div class="linked-bg cv-bg">
														<!-- 	<h5>Chọn các triệu chứng</h5> -->
															<button type="submit" class="btn btn-primary"><span class="fa fa-2x fa-search-plus"> CHUẨN ĐOÁN</span>  </button>
														</div>
													</div>
													<!--span>or</span-->
													<div class="col-md-6 col-sm-12 col-xs-12 sent-box-right">
														<div class="linked-bg cv-bg">
															<h5>Mail nếu không có triệu chứng:</h5>
															<a href="mailto:support@jago.com" ><i class="fa fa-envelope"></i>support@jago.com</a>
														</div>
													</div>
													<span class="sent-box-char">or</span>
												</div>
											</div>
										</form>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>	
							</div>
						</div>
					</div>
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