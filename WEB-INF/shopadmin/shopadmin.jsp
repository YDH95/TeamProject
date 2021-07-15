<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>

<style>
.txt_line {
	width: 70px;
	padding: 0 5px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.resv_btn {
	padding: 7px 30px 1px 30px;
	border-radius: 50px;
	transition: 0.5s;
	border: 2px solid #fff;
	color: #e43c5c;
	display: inline-block;
	background: transparent;
}

.resv_btn:hover {
	color: #e43c;
	border: 2px solid #e43c5c;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="shopadmin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<jsp:include page="shopadmin_navbar.jsp"></jsp:include>

			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Content Row -->
				<div class="row">

					<div class="col-xl-5 col-lg-7">
						<div class="card shadow mb-4">

							<div class="card-header" style="height: 60px;">

								<span style="font-weight: bold; color: #e43c; font-size: 20px;">실시간
									예약상황</span> <a href="/shopadmin/booking_list.shop?rscode=${rscode}"><button
										class="resv_btn" style="float: right;">자세히보기</button></a>
							</div>
							<div class="card-body">
								<div class="table-responsive">

									<!-- 실시간 예약 반복 시작 -->
									<c:forEach var="booking" items="${bookingList}">
										<div class="card mb-4">
											<span class="entry-title"
												style="text-align: left; font-weight: bold; font-size: 20px;">
												<a href="#">고객명: ${booking.name}</a> <strong
												class="rate_point"
												style="margin-right: 1em; float: right; color: #ddd;">

											</strong>
											</span>
											<table style="margin-top: 5px;">
												<tbody>

													<tr>
														<th class="resv-info">예약 시간</th>
														<td style="padding-left: 10px;"><span>${booking.bkdate}</span>
														</td>
													</tr>
													<tr>
														<th>예약 인원</th>
														<td style="padding-left: 10px;"><span>${booking.bknum}명</span></td>
													</tr>
													<tr>
														<th>요구 사항</th>
														<td style="padding-left: 10px;">${booking.bkrequest}<span></span></td>
													</tr>
													<tr>
														<th>현재 상태</th>
														<td style="padding-left: 10px;"><span>결제 대기중</span></td>
													</tr>
												</tbody>
											</table>
										</div>
									</c:forEach>
									<!-- 실시간 예약 반복 끝 -->

								</div>

							</div>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7">
						<div class="card shadow mb-4">
							<div class="card-header" style="height: 60px;">

								<span style="font-weight: bold; color: #e43c; font-size: 20px;">실시간
									핫딜상황</span><a href="/shopadmin/hotdeal_list.shop?rscode=${rscode}"><button
										style="float: right;" onclick="#" class="resv_btn">자세히보기</button></a>

							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr align="center">
												<th>핫딜코드</th>
												<th>핫딜명</th>
												<th>유효기간</th>
												<th>발행/전체</th>
												<th>할인율</th>
												<th>현재상태</th>
											</tr>
										</thead>
										<!-- 오늘날짜  formatDate => date타입을 String타입으로 변환 -->
										<jsp:useBean id="now" class="java.util.Date" />
										<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"
											var="nowDate" />
										<c:out value="현재날짜 : ${nowDate}" />
										<!-- 실시간 핫딜 상황 for문 시작 -->
										<c:forEach var="hotdeal" items="${hotdealList}">
											<tbody>
												<tr align="center">
													<td>${hotdeal.hdcode}</td>
													<td>${hotdeal.hdname}</td>
													<td>${hotdeal.hdstart}~${hotdeal.hdend}</td>
													<td>${hotdeal.offercount}/${hotdeal.hdcnt}</td>
													<td>${hotdeal.hddiscount}%</td>
													<td>
														<!-- 현재날짜보다 핫딜만료일자가 작으면 --> <c:choose>
															<c:when test="${nowDate > hotdeal.hdend}">
																기간만료
															</c:when>

															<c:otherwise>
																진행중
															</c:otherwise>
														</c:choose>
													</td>
												</tr>
											</tbody>
										</c:forEach>
										<!-- 실시간 핫딜 상황 for문 끝 -->
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- Illustrations -->
				<div class="card shadow mb-4">
					<div class="card-header" style="height: 50px;">
						<span style="font-weight: bold; color: #e43c;">리뷰관리</span><a
							href="/shopadmin/review_list.shop?rscode=${rscode}"><button
								style="float: right;" onclick="#" class="resv_btn">자세히보기</button></a>
					</div>


					<div class="row row-cols-2 row-cols-sm-3 g-7">
						<!-- 리뷰관리 for문 시작 -->
						<c:forEach var="review" items="${reviewList}">
							<div class="col" >
								<div class="card" style="margin:5px">
									<div class="card text-dark bg-light">
										<div class="card-header">
											<span style="float: left;">등록일:${review.rvdate.substring(0,10)}</span>
											<span style="float: right;">조회수:${review.rvcnt}
												댓글:${review.replycount}</span>
										</div>
										<img src="/resources/assets/img/reviewpic/${review.rvimg}"
											class="card-img-top" width="300" height="300">
										<div class="card-body" style="height: 150px; margin: 5px">
											<p class="review">${review.rvcontent}</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- 리뷰관리 for문 끝 -->
					</div>

				</div>

			</div>
		</div>

	</div>
	<!-- /.container-fluid -->


	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


</body>

</html>