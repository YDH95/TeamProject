<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

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
									<span style="font-weight: bold; color: #e43c;">회원정보</span> <span
										style="float: right;">
										<Form action="/admin/user_list.do" method="get">
											<input style="width: 140px; height: 30px;" type="text"
												name="search" value="${search}" placeholder="이름검색">

											<input value="검색" type="submit"
												style="float: right; font-size: 20px; text-align: center;"
												class="resv_btn">
										</Form>
									</span>

								</h4>
							</div>

							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr align="center">
												<th>이름</th>
												<th>닉네임</th>
												<th>전화번호</th>
												<th>아이디</th>
												<th>이메일</th>
												<th>권한(ROLE)</th>
											</tr>
										</thead>
										<c:forEach var="users" items="${usersinfo}">
											<tbody>
												<tr align="center">
													<td>${users.name}</td>
													<td>${users.nickname}</td>
													<td>${users.phonenum}</td>
													<td>${users.id}</td>
													<td>${users.email}</td>
													<td>${users.role}</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>

									<!--  페이징처리 시작 -->
									<div align="center">

										<c:if test="${pageMaker.prev }">

											<a
												href='<c:url value="/admin/user_list.do?search=${search}&page=${pageMaker.startPage-1 }"/>'>
												<input value="이전" type="button" class="button">
											</a>

										</c:if>
										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="pageNum">

											<a
												href='<c:url value="/admin/user_list.do?search=${search}&page=${pageNum }"/>'>
												<i class="fa"><input value="${pageNum}" type="button"
													class="button"></i>
											</a>

										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage >0 }">

											<a
												href='<c:url value="/admin/user_list.do?search=${search}&page=${pageMaker.endPage+1 }"/>'>
												<input value="다음" type="button" class="button">
											</a>
										</c:if>

									</div>
									<!--  페이징처리 끝 -->

								</div>
							</div>

						</div>
					</div>

				</div>
			</div>

			<!-- Footer -->
		</div>
		<!-- End of Content Wrapper -->

	</div>

</body>

</html>