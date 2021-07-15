<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Admin</title>

<!-- Custom fonts for this template -->
<link href="/resources/assets/vendor/fontawesome-free/css/all.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<link href="/resources/assets/css/admin.css" rel="stylesheet">


<script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>

<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop"
		class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>

	<a href="/"><img src="../resources/assets/img/AwesomeGuideLogoadmin.png"
		alt="" width="200" height="auto" class="img-fluid"></a>

	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">
	<li style="line-height:70px">
			<a class="nav-link scrollto" href="/user/logout"><font color="#e43c">로그아웃</font></a>
		</li>
		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <span
				class="mr-2 d-none d-lg-inline text-gray-600 small">${shopname}
					매니저님</span> <img class="img-profile rounded-circle"
				src="/resources/assets/img/userpic/${sessionScope.photo}">
		</a></li>

	</ul>

</nav>
<!-- End of Topbar -->