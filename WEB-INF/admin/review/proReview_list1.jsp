<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
     $("#logobtn").click(function(){
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
   border:none;   
   background:transparent;
}

.button:hover {
	background:#ea6981;
      color:white;
}

.button:active {
	background-color: #ef4f91;
	box-shadow: 0 3px #666;
	transform: translateY(4px);
}

img {
	object-fit: fill;
}

.review { /* 리뷰 길이 조정 */
	width: auto;
	height: 90px;
	text-overflow: ellipsis;
	overflow: hidden;
	display: block;
}

.resv_btn {
   padding: 7px 20px 1px 20px;
   border-radius: 50px;
   transition: 0.5s;
   border: 2px solid #fff;
   color: #e43c5c;
   display:inline-block;
   background: transparent;
}

.resv_btn:hover {
   color: #e43c;
   border: 2px solid #e43c5c;
}

/* ------------------------------------더보기----------------------------------------- */
.wrap {
    width: 500px;
    max-width: 960px;
    margin: 0 auto;
   
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
}
.close-btn {
	color: #e43c5c;
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
		<jsp:include page="../admin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<jsp:include page="../admin_navbar.jsp"></jsp:include>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Content Row -->
					<div class="row">

						<div class="col-xl-12">
							<div class="card shadow mb-4">

								<div class="card-header" style="height: 50px;">
									<h4>
										<span style="font-weight: bold; color: #e43c;">리뷰관리</span>
										<span style="float: right;">
											<Form action="/admin/proReview_list.do" method="get">
												<input style="width: 140px; height: 30px;" type="text"
													name="search" value="${search}" placeholder="식당명검색">
												<input value="검색" type="submit" class="resv_btn" style="float: right; font-size: 20px; text-align: center;">
											</Form>
										</span>
									</h4>
								</div>

								<div class="row row-cols-2 row-cols-sm-3 g-4">
									<c:forEach var="review" items="${reviewlist}">
										<div class="col" style="margin-left: 5px; margin-top: 5px;">
											<div class="card">
												<div class="card text-dark bg-light">
													<div class="card-header">
														<span style="float: left;">${review.rvdate.substring(0,10)}</span><span
															style="float: right;">조회수:${review.rvcnt}</span>
													</div>
													<img src="/resources/assets/img/reviewpic/${review.rvimg}"
														class="card-img-top" width="300" height="300">
													<div class="card-header">${review.rsname}</div>
													<div class="card-body">
														<div class="card-text">
														<table>
															<tr>
																<td class="wrap">
																	
																			<div class="content-wrap animated">
    																			<div class="content-txt">
																					${review.rvcontent}
																				</div>
																				<div class="more-btn" align="center">
																	      			<p class="open">더보기</p>
																	    		</div>
																		</div>
																	
																</td>
																
															</tr>

															<tr>
																<td>
																<font style="color: black;">by
																		${review.nickname}</font>
																		
																</td>
															</tr>
														</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							<!--  페이징처리 시작 -->
							<div align="center" style="height: 50px;">

								<c:if test="${pageMaker.prev }">

									<a
										href='<c:url value="/admin/proReview_list.do?search=${search}&page=${pageMaker.startPage-1 }"/>'>
										<input value="이전" type="button" class="button">
									</a>

								</c:if>
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="pageNum">

									<a
										href='<c:url value="/admin/proReview_list.do?search=${search}&page=${pageNum }"/>'>
										<i class="fa"><input value="${pageNum}" type="button"
											class="button"></i>
									</a>

								</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage >0 }">

									<a
										href='<c:url value="/admin/proReview_list.do?search=${search}&page=${pageMaker.endPage+1 }"/>'>
										<input value="다음" type="button" class="button">
									</a>
								</c:if>
							</div>
							<!--  페이징처리 끝 -->
						</div>
							<div>
								<a href="/admin/proreview.do"><input type="button"
									class="resv_btn" style="font-size: 20px; text-align: center; float: right;" value="리뷰 등록"></a>
							</div>
						</div>
					</div>
				</div>

				<!--  Modal 추가 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal Title</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" id="closeModal"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
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
						if (parseInt(result) > 0) {
							$(".modal-body").html(result);
						}
						$("#myModal").modal("show");
					}

					$("#closeModal").on("click", function() {
						$("#myModal").modal("hide");
					});
				});
			</script>
			
			<script type="text/javascript">
				$(function() {
					$('.more-btn').on('click', function() {
						if ($(this).children().is('.open')) {
							$(this).html('<p class="close" style="background: #e43c;">닫기</p>').addClass('close-btn');
							$(this).parent().removeClass('slide-up').addClass('slide-down');
						} else {
							$(this).html('<p class="open">더보기</p>').removeClass('close-btn');
							$(this).parent().removeClass('slide-down').addClass('slide-up');
						}
					});
				});
			</script>
</body>

