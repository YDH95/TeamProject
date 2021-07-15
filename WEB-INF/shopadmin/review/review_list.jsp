<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#logobtn").click(function() {
			$(".reservation").fadeToggle();

		});
	});
</script>

<style>
.button {
	color: #493c3e;
	padding: 7px 16px;
	display: inline-block;
	align-items: center;
	justify-content: center;
	border: none;
	background: transparent;
}

.button:hover {
	background: #ea6981;
	color: white;
}

.button:active {
	background-color: #ef4f91;
	box-shadow: 0 3px #666;
	transform: translateY(4px);
}

.resv_btn {
	padding: 7px 20px 1px 20px;
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

img {
	object-fit: fill;
}

.review { /* 리뷰 길이 조정 */
	width: 300px;
	height: 500px;
	text-overflow: ellipsis;
	overflow: hidden;
	display: block;
}

/* ------------------------------------더보기----------------------------------------- */
.wrap {
	width: 500px;
	max-width: 960px;
	margin: 0 auto;
	text-align: center;
}

.content-wrap {
	height: 150px;
	overflow: hidden;
	position: relative;
	margin: 0;
}

.close-btn, .more-btn {
	display: block;
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
	text-align: center;
}

.close-btn {
	color: #e43c5c;
	text-align: center;
}

.slide-up {
	height: 150px;
	padding-bottom: 0;
	overflow: hidden;
}

.slide-down {
	height: auto;
	overflow: visible;
	padding-bottom: 50px;
}

.more-btn p {
	color: #e43c5c;
	cursor: pointer;
	border: 2px solid #fff;
	padding: 5px 20px;
	padding: 7px 30px 1px 30px;
	border-radius: 50px;
	border: 2px solid #fff;
	color: #e43c5c;
	display: inline-block;
	background: transparent;
}

.more-btn p:hover {
	color: #e43c;
	border: 2px solid #e43c5c;
}

.close-btn {
	padding: 7px 30px 7px 30px;
	background: transparent;
}

.close-btn:hover {
	color: #e43c;
	padding: 7px 30px 7px 30px;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="../shopadmin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<jsp:include page="../shopadmin_navbar.jsp"></jsp:include>
			<!-- Main Content -->


			<!-- Begin Page Content -->
			<div class="container-fluid">

				<!-- Content Row -->
				<div class="row">

					<div class="col-xl-12">
						<div class="card shadow mb-4">

							<div class="card-header" style="height: 70px;">
								<h4>
									<span style="font-weight: bold; color: #e43c;">리뷰관리</span><span
										style="float: right;">
										<button class="resv_btn"
											onclick="location.href='/shopadmin/review_list.shop?sort=rvdate&rscode=${rscode}'">최신순</button>
										<button class="resv_btn"
											onclick="location.href='/shopadmin/review_list.shop?sort=rvscore&rscode=${rscode}'">리뷰평점순</button>
										<button class="resv_btn"
											onclick="location.href='/shopadmin/review_list.shop?sort=replycount&rscode=${rscode}'">댓글순</button>
									</span>
								</h4>
							</div>

							<div class="row row-cols-2 row-cols-sm-3 g-4">

								<!--  foreach 시작 -->
								<c:forEach var="review" items="${reviewList}">
									<div class="col" style="margin-left: 0px; margin-top: 5px;">
										<div class="card">
											<div class="card text-dark bg-light">
												<div class="card-header">
													<span style="float: left;">등록일:${review.rvdate.substring(0,10)}</span>
													<span style="float: right;">조회수:${review.rvcnt}
														댓글:${review.replycount}</span>
												</div>
												<img src="/resources/assets/img/reviewpic/${review.rvimg}"
													class="card-img-top" width="200px;" height="300px;">
												<%-- <div>/resources/assets/img/review/${review.rvimg}</div> --%>
												<div class="card-header">리뷰평점 : ${review.rvscore}</div>
												<div class="card-body">
													<h5 class="card-title">${review.rvtitle}
													<%-- rvcode:${review.rvcode} --%>
														</h5>
													<p class="card-text">
													<table>
														<tr>
															<td class="wrap">
																<div class="content-wrap animated">
																	<div class="content-txt">${review.rvcontent}</div>

																</div>
																<div class="more-btn">
																	<p class="open">더보기</p>
																</div>
															</td>
														</tr>
													</table>
													</p>
												</div>
											</div>

										</div>
									</div>
								</c:forEach>
								<!--  foreach 끝 -->
							</div>
							<!--  페이징처리 시작 -->
							<div align="center">

								<c:if test="${pageMaker.prev }">

									<a
										href='<c:url value="/shopadmin/review_list.shop?rscode=${rscode}&sort=${sort}&page=${pageMaker.startPage-1 }"/>'>
										<input value="이전" type="button" class="button">
									</a>

								</c:if>
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="pageNum">

									<a
										href='<c:url value="/shopadmin/review_list.shop?rscode=${rscode}&sort=${sort}&page=${pageNum }"/>'>
										<i class="fa"><input value="${pageNum}" type="button"
											class="button"></i>
									</a>

								</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage >0 }">

									<a
										href='<c:url value="/shopadmin/review_list.shop?rscode=${rscode}&sort=${sort}&page=${pageMaker.endPage+1 }"/>'>
										<input value="다음" type="button" class="button">
									</a>
								</c:if>

							</div>
							<!--  페이징처리 끝 -->
						</div>

						<!-- <section id="blog" class="blog">
					<div class="container" data-aos="fade-up">
						<div class="row">
							<div class="blog-pagination">
									<a href="#" class="button" align="center">더보기</a>
							</div>
						</div>
					</div>
				</section> -->

					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('.more-btn')
					.on(
							'click',
							function() {
								if ($(this).children().is('.open')) {
									$(this)
											.html(
													'<p class="close">닫기</p>')
											.addClass('close-btn');
									$(this).parent().removeClass('slide-up')
											.addClass('slide-down');
								} else {
									$(this).html('<p class="open">더보기</p>')
											.removeClass('close-btn');
									$(this).parent().removeClass('slide-down')
											.addClass('slide-up');
								}
							});
		});
	</script>

</body>

