<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>


<style>
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

td {
	text-align: left;
	padding: 10px;
}
</style>

</head>

<body>

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="../shopadmin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper">

			<!-- Main Content -->


			<jsp:include page="../shopadmin_navbar.jsp"></jsp:include>


			<div id=content>
				<!-- Content Row -->
				<div class="row">

					<!-- Content Column -->


					<div class="card w-50">
						<div class="card-header">
							<h4>
								<span style="font-weight: bold; color: #e43c;">식당관리</span> <a
									href="/shopadmin/update_shop.shop?rscode=${shopInfo.rscode}">
									<button style="float: right;" class="resv_btn">수정</button>
								</a>
							</h4>
						</div>

						<div class="card-body">


							<h2 class="card-title">
								<c:out value="${shopInfo.rsname}" /> <span></span>
							</h2>
							<table style="float: left;">
								<tr>
									<th>주소:</th>
									<td>도로명:<c:out value="${shopInfo.rsrode}" /><br /> <span
										class="Restaurant__InfoAddress--Rectangle">지번:</span> <span
										class="Restaurant__InfoAddress--Text"><c:out value="${shopInfo.rsaddr}"/></span>
									</td>
								</tr>
								<tr>
									<th>전화번호:</th>
									<td><c:out value="${shopInfo.rstell}"/></td>
								</tr>
								<tr>
									<th>음식 종류:</th>
									<td><span><c:out value="${shopInfo.rstype}"/></span></td>
								</tr>
								<tr>
									<th>가격대:</th>
									<td><c:out value="${shopInfo.rsprice}"/></td>
								</tr>
								<tr>
									<th>주차:</th>
									<td>
									<c:choose>
										<c:when test="${shopInfo.rsparking == 0}">
											주차불가
										</c:when>
										<c:otherwise>
											주차가능
										</c:otherwise>
									</c:choose>
									</td>
								</tr>
								<tr>
									<th>영업시간:</th>
									<td><c:out value="${shopInfo.rsopen}"/> - <c:out value="${shopInfo.rsclose}"/> </td>
								</tr>
								<tr>
									<th>휴일:</th>
									<td><c:out value="${shopInfo.rsoffday}" /></td>
								</tr>
								<tr>
									<th>메뉴:</th>
									<td class="menu_td">
											<c:forEach var="menu" items="${Menus}">
												<span style='display:inline-block;width:200px;text-align:left'>${menu.mnname} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
												<span style='display:inline-block;width:100px;text-align:right'><fmt:formatNumber value="${menu.mnprice}" pattern="#,###" />원</span><br>
											</c:forEach>
									</td>
								</tr>
							</table>
						</div>
						<div class="card-footer">
							<p>업데이트 : <c:out value="${shopInfo.rsupdatedate}" /></p>
						</div>
				<%-- 	</c:forEach> --%>
						<!--  설명끝 -->
						<!-- 태그 -->

						<!--  태그끝 -->

					</div>

				</div>

			</div>


		</div>


	</div>

</body>

</html>