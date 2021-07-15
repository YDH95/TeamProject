<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Awesome Guide</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/assets/img/favicon.png" rel="icon">
<link href="resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/assets/css/index.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Tempo - v4.3.0
  * Template URL: https://bootstrapmade.com/tempo-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<style>
body {
	padding: 0px;
	margin: 0px;
}

.bg {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0px auto;
	position: relative;
}

video {
	width: 100%;
}

.text {
	position: absolute;
	width: 100%;
	top: 75%;
	left: 55%;
	transform: translate(-50%, -50%);
}

.text h2 {
	text-align: left;
	font-size: 48px;
	color: #ffffff;
}

.text span {
	text-align: left;
	font-size: 20px;
	color: #ffffff;
}

body, html {
	height: 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	background: #ffffff !important;
}

.swiper-container {
	overflow: visible;
	padding: 0px 50px 0px;
}

.swiper-slide {
	opacity: 0.4;
	transition: opacity 0.3s;
}

.swiper-slide-active, .swiper-slide-active+.swiper-slide,
	.swiper-slide-active+.swiper-slide+.swiper-slide, .swiper-slide-active+.swiper-slide+.swiper-slide+.swiper-slide
	{
	opacity: 1
}

.parent {
	width: 300px; /* I took the width from your post and placed it in css */
	height: 300px;
}

/* This will style any <img> element in .parent div */
.parent img {
	height: 100%;
	width: 100%;
}

.parent .img-text {
	position: absolute;
	top: 55%;
	text-align: center;
	font-size: 30px;
	color: #fff;
}

.parent .img-text p {
	border-radius: 25px;
	padding: 20px;
	width: 100%;
	height: 50%;
}

.button {
	display: inline-block;
	padding: 10px 15px;
	font-size: 16px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #e43c5c;
	border: none;
	border-radius: 15px;
}

.form-control:focus {
	box-shadow: none;
}

.form-control-underlined {
	border-width: 0;
	border-bottom-width: 1px;
	border-radius: 0;
	padding-left: 0;
}

.form-control::placeholder {
	font-size: 1rem;
	color: #aaa;
	font-style: italic;
}

@font-face {
	font-family: '한글';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_seven@1.0/BMHANNAPro.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#font {
	font-family: "한글";
}

.mark {
	position: absolute;
	top: 20px;
	left: 20px;
	height: 70px;
	width: 70px;
	z-index: 2;
}
</style>

<body>

	<jsp:include page="../views/common/main_header.jsp" />
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->

	<div class="landing-Mainbanner">
		<div class="bg">
			<video muted autoplay loop>
				<source src="resources/cooking.mp4" type="video/mp4">
			</video>
			<!-- 			<img src="resources/assets/img/hero-bg.jpg" alt="" width="100%"
				height="100%"> -->

			<div class="text">
				<h2 id="font">
					먹어라<br />오늘이 마지막인 것처럼 슽
				</h2>
				<span style="font-size: 30px;" id="font">차별화된 평점관리로 언제나 성공하는
					맛집 찾기</span>
			</div>
		</div>
	</div>

	<main id="main">

		<!-- ======= 검색 Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="section-title">
					<h2 id="font" style="letter-spacing: 1px;">검색</h2>
					<h3 id="font" style="letter-spacing: 1px;">
						전체 <span id="font" style="letter-spacing: 1px;"> 검색</span>
					</h3>

				</div>

				<div class="container h-100">
					<div
						class="p-3 bg-light border border-danger rounded rounded-pill shadow-sm mb-4">
						<div class="input-group">

							<form action="/find_shop" method="GET">
								<input type="hidden" name="sort" value="rscode">
								<!-- <div class="input-group-prepend"> -->

								<button id="button-addon2" type="submit" style="float: left;"
									class="btn btn-link text-warning">
									<i class="bx bx-search-alt"></i>
								</button>
								<!-- </div> -->

								<input type="search" name="keyword" placeholder="지역 또는 식당 이름 검색"
									aria-describedby="button-addon2"
									style="float: left; width: 120vh; letter-spacing: 1px;" id="font" 
									class="form-control border-0 rounded rounded-pill bg-light">
							</form>

						</div>
					</div>
				</div>


			</div>
		</section>
		<!-- End 검색 Section -->

		<!-- ======= 전문가 Section ======= -->
		<section id="portfolio" class="portfolio">
			<div class="container">
				<div class="section-title">
					<h2 id="font" style="letter-spacing: 1px;">전문가 평점 추천</h2>
					<p id="font" style="letter-spacing: 1px; font-size: 20px;">어썸 가이드가 직접 선별한 전문가들을 통해 직접 맛을 평가한 검증된 식당들.</p>

				</div>


				<div class="row">

					<c:forEach items="${proReview_List}" var="proReview">

						<div class="col-lg-4 col-md-6">
							<div class="single_destination">
								<div class="thumb">
									<img src="resources/assets/img/shoppic/${proReview.rscode}-0.jpg"
										alt="" style="height: 300px;">
								</div>
								<c:if test="${proReview.rsmark == 1 }">
									<div>
										<img src="resources/assets/img/favicon.png" class="mark">
									</div>
								</c:if>
								<div class="content">
									<p class="d-flex align-items-center">
										<span class="col-md-8" id="font" style="letter-spacing: 1px;">${proReview.rsname}<br />
											${proReview.prorvscore}
										</span><a id="font" style="display: block; width: 300px; letter-spacing: 1px;"
											href="/detail_shop?rscode=${proReview.rscode}">자세히 보기</a>
									</p>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>

			</div>

		</section>
		<!-- End 전문가 Section -->

		<!-- ======= Features Section ======= -->
		<section id="features" class="features">
			<div class="container">

				<div class="section-title">
					<h2 id="font" style="letter-spacing: 1px;">유저 평점 추천</h2>
					<p id="font" style="letter-spacing: 1px; font-size: 20px;">유저들이 고르 숨겨진 맛집.</p>
				</div>

				<div class="row">

					<c:forEach items="${userReview_List}" var="userReview">

						<div class="col-lg-4 col-md-6">
							<div class="single_destination">
								<div class="thumb">
									<img src="resources/assets/img/shoppic/${userReview.rsimg}"
										alt="" style="height: 300px;">
								</div>
								<c:if test="${userReview.rsmark == 1 }">
									<div>
										<img src="resources/assets/img/favicon.png" class="mark">
									</div>
								</c:if>
								<div class="content">
									<p class="d-flex align-items-center">
										<span class="col-md-8" id="font" style="letter-spacing: 1px;">${userReview.rsname}<br />
											${userReview.rvscore}
										</span><a id="font" style="display: block; width: 300px; letter-spacing: 1px;"
											href="/detail_shop?rscode=${userReview.rscode}">자세히 보기</a>
									</p>
								</div>
							</div>
						</div>

					</c:forEach>

				</div>
			</div>

		</section>

		<!-- End Features Section -->


		<!-- ======= Services Section ======= -->
		<section id="services" class="services">


			<div class="section-title">
				<h2 id="font" style="letter-spacing: 1px;">오늘의 핫딜</h2>
				<h3 id="font" style="letter-spacing: 1px;">
					핫딜쿠폰 <span id="font" style="letter-spacing: 1px;">받기</span>
					<button class="button" onclick="location.href='/hotdeal_list'" id="font" style="letter-spacing: 1px;">더보기</button>
				</h3>
				<p id="font" style="letter-spacing: 1px; font-size: 20px;">내가 가고싶었던 맛집을 더욱 저렴하게 이용하자.</p>
				<p id="font" style="letter-spacing: 1px; font-size: 20px;">핫딜 쿠폰이 다 사라지기전에 빨리 다운 받으세요.</p>
			</div>

			<!-- carousel를 구성할 영역 설정 -->
			<div class="row">
				<div class="swiper-container">
					<div class="swiper-wrapper">

						<c:forEach items="${hotdeal_List}" var="hotdeal">
							<div class="swiper-slide">
								<div class="col-lg-10">
									<div class="card" style="width: 29em;">

										<img class="card-img-top"
											src="resources/assets/img/hotdeal/${hotdeal.hdimg}"
											style="height: 300px;">
											

										<div class="card-body">
											<p class="d-flex align-items-center">
												<span class="col-md-8">
												<button class="button" id="font" style="letter-spacing: 1px;">
													지금 	${hotdeal.hddiscount}% 할인</button></span>
														<span class="col-md-8;">
														<button class="button" id="font" style="letter-spacing: 1px;">잔여 쿠폰: ${hotdeal.hdcnt}</button>
														</span>
											</p>
										</div>


										<div class="card-header">
											${hotdeal.hdname}<br />
										</div>
										<div class="card-body">
											<p >${hotdeal.hdcomment}</p>
										</div>
										<%-- <div class="card-footer">
											<button class="button" id="font" style="letter-spacing: 1px;">잔여 쿠폰: ${hotdeal.hdcnt}</button>
										
											<small class="text-muted;"><font color="red">잔여 쿠폰: ${hotdeal.hdcnt}</font></small>
										</div> --%>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>

			</div>

		</section>
		<!-- End Services Section -->


		<!-- ======= Team Section ======= -->
		<section id="team" class="team">
			<div class="container">

				<div class="section-title">
					<h2 id="font" style="letter-spacing: 1px;">셰프</h2>
					<h3 id="font" style="letter-spacing: 1px;">
						어썸 가이드의 <span id="font" style="letter-spacing: 1px;">전문 리뷰 셰프</span>
					</h3>
					<p id="font" style="letter-spacing: 1px; font-size: 20px;">전문가들이 리뷰하는 어썸 가이즈 맛집 리뷰 사이트!</p>
				</div>

				<div class="row">

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="resources/assets/img/team/team-1.jpg"
									class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
										class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a href=""><i
										class="bi bi-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4 id="font" style="letter-spacing: 1px;">백종원</h4>
								<span>한식 전문 리뷰 셰프</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="resources/assets/img/team/team-2.jpg"
									class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
										class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a href=""><i
										class="bi bi-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4 id="font" style="letter-spacing: 1px;">고든 램지</h4>
								<span>비둘기 요리 전문 셰프</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="resources/assets/img/team/team-3.jpg"
									class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
										class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a href=""><i
										class="bi bi-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4 id="font" style="letter-spacing: 1px;">이연복</h4>
								<span>중식 전문 리뷰 셰프</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member">
							<div class="member-img">
								<img src="resources/assets/img/team/team-4.jpg"
									class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
										class="bi bi-facebook"></i></a> <a href=""><i
										class="bi bi-instagram"></i></a> <a href=""><i
										class="bi bi-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4 id="font" style="letter-spacing: 1px;">최현석</h4>
								<span>고기 전문 리뷰 셰프</span>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Team Section -->

	</main>
	<!-- End #main -->

	<footer id="footer">
		<div class="container d-md-flex py-4">

			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Tempo</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/tempo-free-onepage-bootstrap-theme/ -->
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="resources/assets/vendor/php-email-form/validate.js"></script>
	<script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/assets/js/main.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {

			var mySwiper = new Swiper('.swiper-container', {
				slidesPerView : 4,
				slidesPerGroup : 4,
				observer : true,
				observeParents : true,
				spaceBetween : 24,
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
				breakpoints : {
					1280 : {
						slidesPerView : 3,
						slidesPerGroup : 3,
					},
					720 : {
						slidesPerView : 1,
						slidesPerGroup : 1,
					}
				}
			});
		});
	</script>
	
	<!--  Modal 추가 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel"></h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="closeModal"
							data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<!--  /.Modal -->

		<!--  Modal javascript -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"
			integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
			crossorigin="anonymous"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				var result = '<c:out value="${result}" />';

				checkModal(result);

				history.replaceState({}, null, null);

				function checkModal(result) {
					if (result === '' || history.state) {
						return;
					}
					if (result != null) {
						$(".modal-body").html(result);
					}
					$("#myModal").modal("show");
				}

				$("#closeModal").on("click", function() {
					$("#myModal").modal("hide");
				});
			});
		</script>
	
	
	
</body>

</html>