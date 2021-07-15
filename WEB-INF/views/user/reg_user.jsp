<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">

<link href="/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/assets/css/login.css" rel="stylesheet">

<!-- Vendor JS Files -->
<script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script
	src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/resources/assets/vendor/php-email-form/validate.js"></script>
<script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/resources/assets/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>

#main {
	background-image:
		url("/resources/assets/img/messy-pizza-on-a-black-table-1024x683.png");
	background-repeat: no-repeat;
	background-position: center;
	background-size : cover;
	}

.title {
	padding-top: 15vh;
}

.title h1 {
	color: #fff;
	line-height: 1em;
	font-weight: bold;
}

.reg_table {
	padding-top: 10vh;
	margin-left: auto;
	margin-right: auto;
}

td {
	padding: 8px;
}

/* 중복아이디 존재하지 않는경우 */
.id_input_re_1{
	color : green;
	display : none;
}

/* 중복아이디 존재하는 경우 */
.id_input_re_2{
	color : red;
	display : none;
}
</style>

<script>

function pwcheck() {
	
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		var password = document.getElementById('password1');					//비밀번호 
		var passwordConfirm = document.getElementById('password2');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
			return true;
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
			return false;
		}
	}
	
</script>

<script type="text/javascript">
	
	// 아이디 체크함수
	function checkID() {
		var id_val = $("#user_id").val();	//아이디 입력값을 가져옴
		
        $.get("/user/idCheck", {
            id : id_val 
         }, function(res) {     	
        	var idchk2 = res.split(':"')
        	var idchk = idchk2[1].slice(0,-2);
            
            //{"rtMsg":"아이디가 이미 존재합니다"}
            $("#confirmIdMsg").html(idchk);
        	
        	
         });
	}
</script>

</head>

<body>

	<!-- ======= Header ======= -->

	<jsp:include page="../common/main_header.jsp" />
	<!-- End Header -->

	<main id="main">
		<section id="hero">
			<div class="hero-container">
				<div class="card o-hidden shadow-lg my-5">
					<div class="card-body p-0">
						<!-- <div class="col-lg-5 d-none d-lg-block" style="background-color: white;"></div> -->
						<div class="p-5">
							<div>
								<h1>
									<strong style="color: black;">회원가입</strong>
								</h1>
							</div>
							<div class="card-body ">
								<form action="/user/register" method="POST" onsubmit="return pwcheck()">
									<table class="reg_table">
										<tr>
											<td><input type="text" class="form-control" name="id" id="user_id"
												placeholder="아이디" required="required" size="30px" onblur="checkID()">
												<span id="confirmIdMsg" style="color: blue;"></span>
											</td>
											
										</tr>

										<tr>
											<td><input type="password" name="password" 
												id="password1" class="form-control" placeholder="비밀번호"
												required="required" size="30px"></td>
										</tr>

										<tr>
											<td><input type="password" class="form-control" 
												id="password2" placeholder="비밀번호 확인"
												required="required" size="30px" onkeyup="pwcheck()">
												<span id="confirmMsg"></span>
												</td>
										</tr>

										<tr>
											<td><input type="text" class="form-control" name="name" 
												placeholder="이름" required="required" size="30px"></td>
										</tr>

										<tr>
											<td><input type="text" class="form-control"
												name="nickname" placeholder="닉네임" required="required"
												size="30px"></td>
										</tr>

										<tr>
											<td><input type="text" class="form-control"
												name="juminnum" placeholder="주민번호 - 주민번호"
												required="required" size="30px" pattern="[0-9]{6}-[0-9]{7}"></td>
										</tr>

										<tr>
											<td><input type="email" class="form-control"
												name="email" placeholder="이메일@gmail.com" required="required"
												size="30px"></td>
										</tr>

										<tr>
											<td><input type="tel" class="form-control"
												pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" name="phonenum"
												placeholder="010-0000-0000" required="required" size="30px"></td>
										</tr>

										<tr>

											<!-- <td>프로필사진: <input type="file" name="photo">
											</td> -->
										</tr>

										<tr>
											<td colspan="1" align="center">
											<input type="submit" class="btn-get-started scrollto"
												style="color: #e43c; background-color: transparent;" value="회원가입"> <a href="/login"> 
												
											<input type="button" class="btn-get-started scrollto"
												style="color: #e43c; background-color: transparent;" value="취소"></a></td>
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
