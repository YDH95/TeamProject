<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"
	charset="UTF-8">

<title>에러페이지</title>

<style>
body {
	background-image: url("resources/assets/img/error1.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
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
	font-size: 2.5rem;
	text-align: center;
	margin-top: 55vh;
	margin-right: 80vh;
}

#font1 {
	font-family: "한글";
	font-size: 1.2rem;
	letter-spacing: 0.2em;
	margin-top: 5vh;
	left: 27vw;
}

button {
	display: block;
	width: 115px;
	height: 50px;
	background: #4E9CAF;
	text-align: center;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	line-height: 25px;
	margin: 0;
	position: absolute;
	top: 65%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
</head>

<body>
	<div id="font">
		<c:out value="${errorCode}" />
		<br />
		<c:out value="${msg}" />
		<br />
		<button id="font1" onclick="location.href='/'">돌아가기</button>
	</div>
</body>
</html>