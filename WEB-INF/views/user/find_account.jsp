<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Tempo Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/resources/assets/img/favicon.png" rel="icon">
<link href="/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/assets/css/login.css" rel="stylesheet">

<!-- Vendor JS Files -->
<script
	src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/resources/assets/vendor/php-email-form/validate.js"></script>
<script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/resources/assets/js/main.js"></script>

<style>

.card {
	background-image:
		url("https://cdn-cajkg.nitrocdn.com/ZJzLelPaQQUYcIzKvveTxTAioLgFVwpU/assets/static/optimized/rev-cd29551/wp-content/uploads/2019/02/messy-pizza-on-a-black-table-1024x683.jpg");
	background-repeat: no-repeat, no-repeat;
	background-position: center, center; 
}

.login_title{
	padding-top: 20vh;
}

.login_title h1{
	color: #fff;
	line-height: 1em; 
	font-weight: bold;
}

#main {
	background-image:
		url("/resources/assets/img/messy-pizza-on-a-black-table-1024x683.png");
	background-repeat: no-repeat;
	background-position: center;
	background-size : cover;
	}

</style>
</head>

<body>

	<!-- ======= Header ======= -->
	<jsp:include page="../common/main_header.jsp" />
	<!-- End Header -->

	<main id="main">
		<section id="hero">
			<div class="hero-container">
				<div align="center">
					<div class="card o-hidden border-0 shadow-lg my-5">
						<div class="card-body p-0">
						<!-- <div class="col-lg-5 d-none d-lg-block" style="background-color: white;"></div> -->
							<div class="p-5" style="background-color: white;">
								<div>
									<h1>
										<strong style="color: black;">계정찾기</strong>
									</h1>
								</div>
					
					<form action="/user/account_result" method="POST">
						<table cellpadding="10" cellspacing="5" width="300px;" height="300px;">
							
							<tr>
								<td><input type="text" name="id" class="form-control" 
									placeholder="ID" required="required"></td>
							</tr>
							<tr>
								<td><input type="text" name="name" class="form-control" 
									placeholder="NAME" required="required"></td>
							</tr>
							
							<tr>
								<td><input type="email" name="email" class="form-control" 
									placeholder="email" required="required"></td>
							</tr>
						
							<tr>
								<td align="center">
								<input type="submit" value="계정찾기" style="color: #e43c; 
									background-color: transparent;" class="btn-get-started scrollto">
									<a href="/user/reg_user">
									<button type="button" class="btn-get-started scrollto" style="color: #e43c; 
									background-color: transparent;">회원가입</button></a>
								</td>
							</tr>
							
						</table>
					</form>
					</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	
	
</body>

</html>
