<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Blog Single - Tempo Bootstrap Template</title>
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
<link href="resources/assets/css/detail_style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">


<!--  fade 토글 -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style type="text/css">
.rate_point {
	margin-left: 10vh;
	color: red;
}

.swiper-container {
	padding-top: 10vh;
	height: 420px;
}

.swiper-slide {
	text-align: center;
	display: flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items: center; /* 위아래 기준 중앙정렬 */
	justify-content: center; /* 좌우 기준 중앙정렬 */
}

.swiper-slide img {
	max-width: 100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
	/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
}

.entry-meta {
	border-bottom: 1px solid #e9e9e9;
	font-size: 13px;
	margin-bottom: 0px;
	float: left;
	width: 100%;
}

.btn-favorite {
	border: 0;
	outline: 0;
	float: right;
	background: white;
}

.favorite {
	height: 35px;
	width: 30px;
	margin-right: 10px;
}

.favor {
	text-align: right;
	font-size: 11px;
	font-weight: bold;
	margin-right: 8px;
	color: #bdbdbd;
}

.rest_info {
	text-align: left;
	margin-top: 10px;
}

.info no_menu, th {
	width: 250px;
}

.info no_menu, td {
	width: 1000px;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 0;
}

li {
	list-style: none;
	padding-left: 0px;
}

.nearbyList {
	padding: 0;
}

.Restaurant_Menu {
	flex: 1;
	display: inline-block;
	width: 150px;
	margin-right: 30px;
	white-space: normal;
}

.Restaurant_MenuItem {
	border-bottom: 1px solid #e9e9e9;
}

.Restaurant_MenuPrice {
	text-align: right;
	float: right;
}

.update_date {
	text-align: right;
}

.caption {
	text-align: right;
}

.map_container {
	width: 368px;
	heigh: 368px;
}

.map {
	width: 100%;
	height: 100%;
/* 	object-fit: cover; */
}

.nearby_picture {
	width: 100px;
	height: 110px;
	float: left;
	cell-padding: 0px;
}

.nearby_ul {
	padding: 0;
	height: 500px;
}

.nearby_li {
	height: 110px;
}

.nearby_infoContainer {
	height: 80px;
}

.nearby_info {
	font-size: 6px;
}

.nearby_content {
	width: 270px;
	float: right;
}

.nearby_infolabel {
	margin-top: 0;
	margin-bottom: 0;
	margin-right: 0;
	padding: 0;
	width: 50px;
}

.nearby_infovalue {
	margin-top: 0;
	margin-bottom: 0;
	padding: 0;
}

.sidebar-reservation {
	vertical-align;
	width: 500px;
}

#logobtn {
	width: 25vh;
	height: 10vh;
	border: 0;
	outline: 0;
	padding: 0;
	background: none;
	margin-left: 10vh;
	margin-bottom: 50px;
}

.resv_btn {
	padding: 8px 30px 9px 30px;
	border-radius: 50px;
	transition: 0.5s;
	border: 2px solid #fff;
	color: #e43c5c;
	display: inline-block;
	background: transparent;
	margin-right: 7vh;
}

.resv_btn:hover {
	color: #e43c;
	border: 2px solid #e43c5c;
}

.reservation_info {
	margin-bottom: 15px;
	margin-right: 10px;
}

.info_info {
	text-align: right;
	float: right;
	border-top: none;
	border-right: none;
	border-left: none;
	border-bottom: 3px solid black;
}

.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	max-width: 100%;
	max-height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.hidden {
	display: none;
}

.modal-overlay {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: RGBA(0, 0, 0, 0.6);
}

.modal-contents {
	display: flex;
	flex-direction: column;
	align-items: center;
	position: relative;
	padding: 50px 100px;
	width: auto;
	max-width: 80%;
	max-height: 80%;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 6px;
}

.modal-text {
	text-align: left;
	overflow: auto;
}

.modal-close {
	margin-top: 20px;
	padding: 5px 20px;
	color: #FFFFFF;
	font-weight: bolder;
	font-size: 30px;
	background-color: #ffaa00;
	border-radius: 7px;
	cursor: pointer;
	transition: all 0.5s;
}

.modal-close:hover {
	background-color: #ffd500;
}

.sidebar-item-tags ul {
	list-style: none;
	padding: 0;
}

.sidebar-item-tags ul li {
	display: inline-block;
}

.sidebar-item-tags ul a {
	color: #8e767a;
	font-size: 14px;
	padding: 6px 14px;
	margin: 0 6px 8px 0;
	border: 1px solid #f6f4f4;
	display: inline-block;
	transition: 0.3s;
}

.sidebar-item-tags ul a:hover {
	color: #fff;
	border: 1px solid #e43c5c;
	background: #fff;
}

.sidebar-item-tags ul a span {
	padding-left: 5px;
	color: #dfd8d9;
	font-size: 14px;
}

.replies {
	float: right;
	border-right: 1px;
	display: inline-block;
	color: #8e767a;
	font-size: 14px;
	margin: 0 1px 8px 0;
	display: inline-block;
	transition: 0.3s;
}

.replies :hover {
	color: #e43c;
	background: #fff;
}

.orderby {
	background: transparent;
	border-top: none;
	border-right: 1px solid #dfd8d9;
	border-bottom: none;
	border-left: none;
}

.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info .link {
	color: #5085BB;
}

.hiddenreply {
	display: none;
}

#my_modal {
	display: none;
	width: 300px;
	padding: 20px 60px;
	background-color: #fefefe;
	border: 1px solid #888;
	border-radius: 3px;
}

#my_modal .modal_close_btn {
	position: absolute;
	top: 10px;
	right: 10px;
}

#my_modal::-webkit-scrollbar {
	display: none;
}

.mark {
	position: absolute;
	top: 20px;
	left: 20px;
	height: 50px;
	width: 50px;
	z-index: 2;
}

i {
	text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
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
</style>
</head>

<body>



	<!-- ======= Header ======= -->
	<jsp:include page="../common/main_header.jsp" />
	<!-- End Header -->

	<main id="main">

		<!-- ======= 사진 리스트 ======= -->

		<!--  더 좋은 요소 찾기 -->
		<div class="swiper-container">
			<div class="swiper-wrapper" >
				<div class="swiper-slide">
					<img src="/resources/assets/img/shoppic/${rscode}-0.jpg" style="width:550px; height:400px">
				</div>
				<div class="swiper-slide">
					<img src="/resources/assets/img/shoppic/${rscode}-1.jpg"
						alt='이미지를 찾을수 없어요' style="width:550px; height:400px">
				</div>
				<div class="swiper-slide">
					<img src="/resources/assets/img/shoppic/${rscode}-2.jpg"
						alt='이미지를 찾을수 없어요' style="width:550px; height:400px">
				</div>
				<!-- <div class="swiper-slide">
					<img src="http://oldmidi.cdn3.cafe24.com/p/0003.jpg">
				</div>
				<div class="swiper-slide">
					<img src="https://ktsmemo.cafe24.com/p/0061.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://oldmidi.cdn3.cafe24.com/p/0253.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://ktsmemo.cdn3.cafe24.com/p/0791.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://oldmidi.cdn3.cafe24.com/p/0174.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://oldmidi.cdn3.cafe24.com/p/0745.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://ktsmemo.cdn3.cafe24.com/p/0523.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://ktsmemo.cdn3.cafe24.com/p/0092.jpg">
				</div>
				<div class="swiper-slide">
					<img src="https://ktsmemo.cafe24.com/p/0752.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://oldmidi.cdn3.cafe24.com/p/0100.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://ktsmemo.cdn3.cafe24.com/p/0049.jpg">
				</div>
				<div class="swiper-slide">
					<img src="http://ktsmemo.cdn3.cafe24.com/p/0582.jpg">
				</div>
 -->
			</div>

			<!-- 네비게이션 -->
			<div class="swiper-button-next"></div>
			<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div>
			<!-- 이전 버튼 -->
		</div>
		<!-- /사진 리스트 -->

		<!-- ======= 레스토랑 정보 ======= -->
		<section id="blog" class="blog" style="width:100%; background:#fff;">
			<div class="container" data-aos="fade-up" >

				<div class="row">
					<div class="col-lg-8 entries">
						<c:forEach var="shop" items="${shopinfo}" >
							<article class="entry entry-single" style="width:800px">
								<div id="title">
									<span style="margin-right: 20px;"> <c:if
											test="${shop.rsmark == 1 }">
											<img src="resources/assets/img/favicon.png" width="60px"
												height="60px" style="float: left;">
										</c:if>
									</span>
									<h2 class="entry-title" id="font" style="letter-spacing: 1px;">${shop.rsname}
										<span style="font-size: 15px; margin-left: 5vh;">유저평점</span> <span
											class="rate_point" style="margin-top: 5vh;">${avgscore.avgrvscore}</span>
										<span style="font-size: 15px; margin-left: 5vh;">전문가평점</span>
										<span class="rate_point" style="margin-top: 5vh;">${avgscore.avgprorvscore}</span>

										<c:choose>
											<c:when test="${id eq null || id ==''}">
												<img src="resources/assets/img/team/fill_favorite.png"
													class="favorite" style="float: right;" onclick="alert('로그인이 필요합니다')">
											</c:when>
											<c:when test="${getFavorite == 1}">
												<button class=btn-favorite
													onclick="location.href='/deletefav?id=${id}&rscode=${rscode}'">
													<img src="resources/assets/img/team/unfill_favorite.png"
														class="favorite">
												</button>
											</c:when>
											<c:when test="${getFavorite ==0}">
												<button class=btn-favorite
													onclick="location.href='/insertfav?id=${id}&rscode=${rscode}'">
													<img src="resources/assets/img/team/fill_favorite.png"
														class="favorite">
												</button>
											</c:when>
										</c:choose>
									</h2>
									<h6 class="favor">즐겨찾기</h6>
								</div>
								<div class="entry-meta">
									<ul style="float: left;">
										<li class="d-flex align-items-center"><i
											class="bi bi-person"></i>${shop.rscnt}</li>
										<li class="d-flex align-items-center"><i
											class="bi bi-chat-dots"></i>${cntreview}</li>
										<li class="d-flex align-items-center"><i
											class="bi bi-star"></i>${countingFavorite}</li>
									</ul>
								</div>

								<div class="entry-content" style="margin-top: 30px;">
									<table class="info no_menu" style="float: left;">
										<caption class="caption">레스토랑 상세 정보</caption>
										<tbody class="rest_info">
											<tr class="only-desktop">
												<th>주소</th>
												<td>${shop.rsrode}<br /> <span
													class="Restaurant__InfoAddress--Rectangle">지번</span> <span
													class="Restaurant__InfoAddress--Text">${shop.rsaddr}
														2056-2</span>
												</td>
											</tr>
											<tr class="only-desktop">
												<th>전화번호</th>
												<td>${shop.rstell}</td>
											</tr>
											<tr>
												<th>음식 종류</th>
												<td><span>${shop.rstype}</span></td>
											</tr>
											<tr>
												<th>가격대</th>
												<td>${shop.rsprice}</td>
											</tr>
											<tr>
												<th>주차</th>
												<c:choose>
													<c:when test="${shop.rsparking eq '0'}">
														<td>주차공간없음</td>
													</c:when>

													<c:when test="${shop.rsparking eq '1'}">
														<td>주차공간있음</td>
													</c:when>
												</c:choose>
											</tr>
											<tr>
												<th style="vertical-align: top;">영업시간</th>
												<td>${shop.rsopen}-${shop.rsclose}</td>
											</tr>
											<tr>
												<th>휴일</th>
												<td>${shop.rsoffday}</td>
											</tr>
											<tr>
												<th>메뉴</th>
												<td class="menu_td"><c:forEach var="menu"
														items="${menuinfo}">
														<ul class="Restaurant_MenuList"
															style="padding-left: 0; padding-top: 5px;">
															<li class="Restaurant_MenuItem" style="padding-top: 5px;">
																<span class="Restaurant_Menu">${menu.mnname}</span> <span
																class="Restaurant_MenuPrice">
																 <fmt:formatNumber value="${menu.mnprice}" pattern="#,###" />
																</span>
															</li>
														</ul>
													</c:forEach></td>
											</tr>
										</tbody>
									</table>
									<p class="update_date">
										업데이트 :
										<c:out value="${fn:substring(shop.rsupdatedate,0,10)}" />
									</p>
								</div>
							</article>
						</c:forEach>
					</div>
					<!-- 폼의 끝 -->
					<!-- 사이드바 -->
					<div class="col-lg-4" style="float: right;">
						<div class="sidebar" style="float: right;">
							<div class="map_container" style="width: 490px; float: right;">
								<!--  카카오지도 div -->
								<div id="map" class="rounded float-left img-thumbnail" style="height: 330px;">
									<script>
	                              <c:forEach var="shop" items="${shopinfo}">
	                              var rsname = '<c:out value="${shop.rsname}"/>';
	                              var rsload = '<c:out value="${shop.rsrode}"/>';
	                              var rsaddr = '<c:out value="${shop.rsaddr}"/>';
	                              var rsimg = '<c:out value="${rscode}-0.jpg"/>';	                              
	                              </c:forEach>
                           		</script>
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=269f3bdfee8403c85dd95f5cc96189e1&libraries=services"></script>
									<script type="text/javascript"
										src="resources/assets/js/kakaomap.js"></script>
								</div>
								<!--  카카오지도 div -->
								<br> <br>

								<div class="sidebar-reservation">
								<img id="logobtn" alt="버튼"  src="resources/assets/img/AwesomeGuideLogoadmin.png" style="width:200px;align:left">
									<!-- <h3 class="sidebar-title" style="text-align: left;"> -->
									<font size="6">지금 바로 예약!</font>
									<!-- </h3> -->

									
								</div>
								<div class="reservation">
									<form class="datepicker" action="/booking" method="POST">
										<ul>
											<li class="reservation_info">
												<span class="info_label" style="font-weight: bold;">예약일정</span> 
												<input class="info_info" name="bkdate" id="bkdate" type="datetime-local" required="required">
											</li>
											<li class="reservation_info"><span class="info_label"
												style="font-weight: bold;">인 원 수</span> <input
												class="info_info" id="bknum" name="bknum" type="number"
												min="1" max="4" placeholder="최대 4명" required="required"></li>
											<li class="reservation_info"><span class="info_label"
												style="font-weight: bold;">요구사항</span> <input
												class="info_info" id="bkrequest" name="bkrequest"
												type="text" placeholder="어린아이 좌석이 필요합니다"> <input type=hidden name="id"
												value="${id}"> <input type=hidden name="rscode"
												value="${rscode}"></li>
										</ul>
										<button class="resv_btn" type="reset">취소</button>
										<button class="resv_btn" type="submit" value="ok">예약</button>
										
									</form>
								</div>
								<!-- End sidebar categories-->



							</div>
						</div>
					</div>
					<!-- End sidebar -->

					<div class="blog-comments">
						<div style="height: 70px;">
							<span style="font-weight: bold; font-size: 28px;">리뷰 및 평점</span>
							<ul style="float: right; width: 500px;">
								<li class=replies><a
									href="/detail_shop?rvcode=0&rscode=${rscode}&sort=''"><button
											class=orderby>전체 (${cntreview})</button></a></li>
								<li class=replies><a
									href="/detail_shop?rvcode=0&rscode=${rscode}&sort=rvdate"><button
											class=orderby>최신순</button></a></li>
								<li class=replies><a
									href="/detail_shop?rvcode=0&rscode=${rscode}&sort=count"><button
											class=orderby>답글순</button></a></li>
								<li class=replies><a
									href="/detail_shop?rvcode=0&rscode=${rscode}&sort=rvcnt"><button
											style="background: transparent; border: none;">조회순</button></a></li>
							</ul>
						</div>
						<c:forEach var="review" items="${reviewinfo}">
							<div class="comment">
								<div class="d-flex">
									<div class="comment-img" style="width: 15vh;">
										<img src="/resources/assets/img/userpic/${review.photo}"
											alt="${review.photo}">
										<!-- 리뷰포토 말고 유저 포토 가져오기 -->
									</div>
									<div class="p-2 w-100">
										<a href="/detail_shop?rscode=${rscode}&rvcode=${review.rvcode}"><h3 id="font" style="letter-spacing: 1px;" class="yoon">${review.rvtitle}</h3></a>

										<a> <c:choose>
												<c:when test="${review.prorvscore > 0 }">
													<h4>
														<i class="bx bxs-star"
															style="font-size: 25px; color: red;"></i>
														${review.prorvscore}
													</h4>
												</c:when>
												<c:otherwise>
													<h4>
														<i class="bx bxs-star"
															style="font-size: 25px; color: #FFFF00;"></i>
														${review.rvscore}
													</h4>
												</c:otherwise>
											</c:choose>
										</a>

										<div class="${review.rvcode}"
											style="padding: none; border: none; background: #fff; font-weight: bold;">${review.id}
										</div>

										<c:choose>
											<c:when test="${fn:length(review.rvcontent) > 100}">
												<c:out value="${fn:substring(review.rvcontent,0,92)}" />...
									        </c:when>
											<c:otherwise>
												<c:out value="${review.rvcontent}" />
											</c:otherwise>
										</c:choose>
										<div>
											<time style="float: right" datetime="2020-01-01">
											<c:out value="${fn:substring(review.rvdate,0,10)}" />
											</time>
										</div>
										<div class="${review.rvcode}" style="display: none;">
											<div id="modal-reply" style="width: 50%">
												<h3>id</h3>
												<h5>rpcontent</h5>
												<h6 style="float: right">rpdate</h6>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<!-- 댓글 끝 -->

				</div>
				<!-- 기본 화면 끝-->
				<!--  사이드바 시작 -->
				<!-- End blog sidebar -->

			</div>


		</section>
		<!-- End Blog Single Section -->

	</main>

	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="container d-md-flex py-4">

			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Tempo</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
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

	<div id="my_modal"
		style="width: 80%; height: 80%; position: 'fixed'; zIndex: 9999; left: '0px'; top: '0px'; width: '100%'; height: '100%'; overflow: 'auto'; backgroundColor: 'rgba(0,0,0,0.8)'; overflow-y: auto;">
		<jsp:include page="/WEB-INF/views/shop/detail_review.jsp"></jsp:include>

		<a class="modal_close_btn">닫기</a>
	</div>
	<script>
    function modal(id) {
        var zIndex = 9999;
        var modal = document.getElementById(id);

        // 모달 div 뒤에 희끄무레한 레이어
        var bg = document.createElement('div');
        bg.setStyle({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // 레이어 색갈은 여기서 바꾸면 됨
            backgroundColor: 'rgba(0,0,0,0.7)'
        });
        document.body.append(bg);

        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
        modal.querySelector('.modal_close_btn').addEventListener('click', function() {
            bg.remove();
            modal.style.display = 'none';
        });

        modal.setStyle({
            position: 'fixed',
            display: 'block',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // 시꺼먼 레이어 보다 한칸 위에 보이기
            zIndex: zIndex + 1,

            // div center 정렬
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
        });
    }

    // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
    Element.prototype.setStyle = function(styles) {
        for (var k in styles) this.style[k] = styles[k];
        return this;
    };

    document.querySelector('.yoon').addEventListener('click', function() {
    	$('html').css("height","100%");
    	$('html').css("overflow","auto");
    	$('body').css("height","100%");
    	$('body').css("overflow","auto"); 
        modal('my_modal');
    });
    
    if(${rvcode} != 0){
    $(document).ready(function(){
    	$('html').css("height","100%");
    	$('html').css("overflow","auto");
    	$('body').css("height","100%");
    	$('body').css("overflow","auto");
    	modal('my_modal');	
    });
    };
</script>






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
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!--  스와이퍼 -->


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	<script>
 var mql = window.matchMedia("screen and (min-width:1024px)");
 var num = 3;
test();
mql.addEventListener("change", (e)  => {
	if(e.matches){
		num = 3;
		console.log(num);
		test();
	}else if(window.matchMedia("screen and (min-width:700px)").matches){
		num=3;
		console.log(num);
		test();
	}else{
		num = 1;
		console.log(num);
		test();
	}
});
function test() {
	new Swiper('.swiper-container', {
		slidesPerView : num, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 20, // 슬라이드간 간격
		slidesPerGroup : num, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
	
		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,
	
		loop : true, // 무한 반복
	
		pagination : { // 페이징
			el : '.swiper-pagination',
			clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		},
		navigation : { // 네비게이션
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});
}

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

				var result = '<c:out value="${msg}" />';

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