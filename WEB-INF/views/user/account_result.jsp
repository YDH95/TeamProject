<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8">
	
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js">
	
</script>
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
<link
	href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
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
<script
	src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/resources/assets/vendor/php-email-form/validate.js"></script>
<script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/resources/assets/js/main.js"></script>

<style>
.card {
	background-image:
		url("https://cdn-cajkg.nitrocdn.com/ZJzLelPaQQUYcIzKvveTxTAioLgFVwpU/assets/static/optimized/rev-cd29551/wp-content/uploads/2019/02/messy-pizza-on-a-black-table-1024x683.jpg");
	background-repeat: no-repeat;
	background-position: center;
}

.login_title {
	padding-top: 20vh;
}

.login_title h1 {
	color: #fff;
	line-height: 1em;
	font-weight: bold;
}

#hero {
	background-image:
		url("/resources/assets/img/messy-pizza-on-a-black-table-1024x683.png");
	background-repeat: no-repeat;
	background-position: center;
	background-size : cover;
	}
</style>
<script>
	function pwcheck() {

		/* ????????????, ???????????? ?????? ???????????? ????????? ?????? ???????????? ????????? ???????????? ??????, ????????? ????????? ????????? ?????? ????????? ??????.*/
		/* document : ?????? ????????? ?????????. ???????????? ?????? ????????? ??????. */
		/* getElementByID('?????????') : ???????????? ?????? ?????? ?????? id??? value??? get??? ?????? password ?????? ?????? */
		var password = document.getElementById('password1'); //???????????? 
		var passwordConfirm = document.getElementById('password2'); //???????????? ?????? ???
		var confrimMsg = document.getElementById('confirmMsg'); //?????? ?????????
		var correctColor = "#00ff00"; //????????? ??? ???????????? ??????.
		var wrongColor = "#ff0000"; //????????? ??? ???????????? ??????

		if (password.value == passwordConfirm.value) {//password ????????? ?????? passwordConfirm ????????? ?????? ????????????.
			confirmMsg.style.color = correctColor;/* span ????????? ID(confirmMsg) ??????  */
			confirmMsg.innerHTML = "???????????? ??????";/* innerHTML : HTML ????????? ???????????? ????????? ?????? ??? ???????????? ???. */
			return true;
		} else {
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML = "???????????? ?????????";
			return false;
		}
	}
</script>

</head>

<body>

	<!-- ======= Header ======= -->
	<jsp:include page="../common/main_header.jsp" />
	<!-- End Header -->

<section id="hero">
	<div class="hero-container">
		<div align="center">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
				
					<div class="p-5" style="background-color: white;">
						<div>
							<h1>
								<strong style="color: black;">${result.name}?????? ??????</strong>
							</h1>
						</div>

						<form action="/user/updatePassword" method="POST"
							onsubmit="return pwcheck()">
							<input type="hidden" name="id" value="${result.id}">
							<table cellpadding="10" cellspacing="5">
								<tr>
									<td>${resultMessage}</td>
								</tr>

								<tr>
									<td><input type="password" name="password" id="password1"
										class="form-control" placeholder="????????????" required="required"
										size="30px">
									</td>
								</tr>

								<tr>
									<td><input type="password" id="password2"
										class="form-control" placeholder="???????????? ??????" required="required"
										size="30px" onkeyup="pwcheck()"> 
										<span id="confirmMsg"></span>
									<td>
								</tr>

								<tr>
									<td>
										<button type="submit" class="btn-get-started scrollto"
											style="color: #e43c; background-color: transparent; width: 180px;">
											???????????? ??????</button>
								
										<a href="/"><button type="button"
										class="btn-get-started scrollto"
										style="color: #e43c; background-color: transparent; width: 180px;">
										?????????????????????</button></a>
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

</body>

</html>
