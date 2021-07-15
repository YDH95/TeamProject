<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
    <!-- <link href="resources/assets/vendor/remixicon/remixicon.css"
          rel="stylesheet"> -->
    <link href="resources/assets/vendor/swiper/swiper-bundle.min.css"
          rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="resources/assets/css/detail_style.css" rel="stylesheet">
    <!-- <link
            href="resources/assets/css/ui-lightness/jquery-ui-1.8.16.custom.css"
            rel="stylesheet"> -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">


    <!--  fade 토글 -->
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
    <!-- 데이트하고싶다-->
    <script type="text/javascript" src="resources/assets/js/jquery.js"></script>
    <script type="text/javascript"
            src="resources/assets/js/jquery-ui-1.8.16.custom.min.js"></script>
                           	<!-- jQuery CDN -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script> 

    <style type="text/css">
    	
        .rate_point {
            margin-left: 1em;
            color: red;
        }
        
		textarea.autosize { 
			min-height: 50px; 
		}
		.a {
        white-space: pre-line;
      	}
        h1 {
            text-align: center;
            font-weight: bold;
        }

        h6 {
            text-align: left;
            font-weight: bold;

        }

        h5 {
            text-align: left;
            padding-top: 5vh;
            margin-left: 5vh;
        }

        h4 {
            padding-left: 3vh;
            top: 10vh;
        }

        .rpdate {
            float: right;
        }


        li {
            list-style: none;
        }
        
        .imgcontainer {
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }

        .profile {
            width: 60px;
            height: 60px;
            border-radius: 70%;
            overflow: hidden;
        }

        .ReviewOnepic {
            width: auto;
            max-height: 180px;
        }
		 .rpcontent {
            padding-left: 7vh;
            top: 10vh;
            bottom: 3vh;
        }

        .rvdate {
            float: right;
        }
        
        button{
        float:right; 
       
    }
        
        
        
        .blog-pagination li a {
             color: #493c3e;
             padding: 7px 16px;
             display: flex;
             align-items: center;
             justify-content: center;
         }
         .blog-pagination li a:hover{
         background:#ea6981;
         color:white;
         }
         /* <!--  여기 변경됨 --> */
         .btnbtn{
             padding: 8px 20px 9px 20px;
             border-radius: 50px;
             transition: 0.5s;
             border: 2px solid #fff;
             color: #e43c5c;
             display:inline-block;
             background: transparent;
             
         }
         .btnbtn:hover{
             color: #e43c;	
             border: 2px solid #e43c5c;     
                }

    </style>
    

</head>

<body>

<!-- ======= Header ======= -->

<!-- End Header -->


<!-- ======= 사진 리스트 ======= -->

<!--  더 좋은 요소 찾기 -->
<!-- 폼의 끝 -->
<div class="d-flex justify-content-center" style="padding-top:10vh;">

    <div class="card shadow mb-4 w-50">

        <div>        	
            <div>
                <div class="looking">
                    <%-- <c:forEach var="ReviewOne" items="${ReviewOneDetail}"> --%>
                        <h1>${ReviewOne.rvtitle}</h1>
                        
                        <c:choose>
                        <c:when test="${ReviewOne.rvscore == 0}">
                      
                        <span style='font-weight:bold;font-size:30px;float:right; color:#e43c;'>${ReviewOne.prorvscore}</span>
                        </c:when>
                        <c:when test="${ReviewOne.prorvscore == 0 }">
                        <span style='font-weight:bold;font-size:30px;float:right; color:#e43c;'>${ReviewOne.rvscore}</span>
                        </c:when>
                        </c:choose>
                        <div>
                            <table>
                                <tr>
                                    <td rowspan="2" style="width:10vh;">
                                    	<img class="profile" src="resources/assets/img/userpic/${ReviewOne.photo}" alt="${ReviewOne.photo}">
                                    </td>

                                    <td>${ReviewOne.id}</td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="bi bi-person"></i><span>${ReviewOne.rvcnt}</span>
                                    </td>
                                </tr>

                            </table>

                        </div>
                        <div>
                        <h5 style="padding-left:3rem;font-size:25px"><pre id="font">${ReviewOne.rvcontent} </pre> </h5>
                        </div>
						<c:forEach var="ReviewPic" items="${ReviewPic}">
                        <div class="imgcontainer" style="text-align:center;">
                            <img class="ReviewOnepic" alt="asd" src="resources/assets/img/reviewpic/${ReviewPic.rvimg}">
                        </div>
                        </c:forEach>
                        <h6 class="rvdate"><c:out value="${fn:substring(ReviewOne.rvdate,0,10)}"/></h6>
                    
                    
                  
                        <c:forEach var="reply" items="${ReplyDetail}">
                            <div class="ReviewOnereply">
                                          <div id="ReviewOnereplycontainer${reply.rpcode}" style="	padding-left: 3vh;
															            float: left;
															            width: 100%;
															            padding-top: 3vh;
															            border-top: 1px solid;">
                                <table style="float:left; margin-bottom: 2vh;">
                                    <tr>
                                        <td rowspan="2" style="width:10vh;">
                                        <img class="profile" src="resources/assets/img/userpic/${reply.photo}" alt="qweqw"></td>
                                        <td>&nbsp; ${reply.id}</td>
                                    </tr>
                                </table>
                                <div id="${reply.rpcode}container" class="container"style="margin-top:2vh;">                                
	                              
                                    <div id="rpcontent${reply.rpcode}" style="padding-left:3vh;">
                                    	
		                                <span class="a" id= "rp${reply.rpcode}" style="font-size:20px; font-weight:bold;display:block" > 
		                                <c:out value="${reply.rpcontent}"/>
		                                </span>
		                                <div id="update" style="display:none">
										<form action='/updatereply' name='form' method='GET' >
											<textarea class="autosize" name='rpcontent' id='rpcontent' cols='40' rows="3"><c:out value="${reply.rpcontent}"/></textarea>
											<script>
												<!-- 자동크기 조절 -->
												$("textarea.autosize").on('keydown keyup', function () {
  													$(this).height(1).height( $(this).prop('scrollHeight')+12 );	
												});
											</script>
											<input type='hidden' name='rpcode' value='${reply.rpcode}'>
											<input type='hidden' name='rvcode' value='${rvcode}'>
											<input type='hidden' name='rscode' value='${rscode}'>
											&nbsp;&nbsp;&nbsp;&nbsp;											
											<button class='btnbtn' href="/detail_shop?rvcode=${rvcode}&rscode=${rscode}&sort=''">취소</button>
											<button type='submit' class='btnbtn'>완료</button>
										</form>
										</div>
											<c:choose>
					                        <c:when test="${id eq reply.id}">       
					                                                          
				                                	<button id="${reply.rpcode}btn" class="btnbtn">수정</button>
				                                	<button onclick="location.href='/deletereply?rscode=${rscode}&rpcode=${reply.rpcode}&rvcode=${rvcode}'" id="${reply.rpcode}del"class="btnbtn" >삭제</button>
				                               
			                                </c:when>			
                           			     </c:choose>
		                                </div>
		                       		</div>                                 		                        
                           		 </div>
                            
                    		</div> 
                     <div id="rpdate${reply.rpcode}" style="margin-top:1vh;float:right;"><c:out value="${fn:substring(reply.rpdate,0,10)}"/></div>
                        </c:forEach>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- 페이징끝 -->
<div class="blog-pagination" style="display:flex; width:100%; text-align:center;justify-content:center;">
					<ul class="justify-content-center">
					
				    <c:if test="${pageMaker.prev}">
				    <li>
				        <a style="float:left;" href='<c:url value="/detail_shop?rvcode=${rvcode}&rscode=${rscode}&page=${pageMaker.startPage-1 }"/>'>
				         <!-- <input value="이전" type="button" class="button"> -->
				         이전
				         </a>
					</li>
				    </c:if>
				    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
                        <li style="float:left;">
                            <a style="float:left;" href='<c:url value="/detail_shop?rvcode=${rvcode}&rscode=${rscode}&page=${pageNum }"/>'>
				        ${pageNum}				       
				        </a>
					</li>
				    </c:forEach>
				    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
					<li>
				        <a style="float:left;" href='<c:url value="/detail_shop?rvcode=${rvcode}&rscode=${rscode}&page=${pageMaker.endPage+1 }"/>'>
				        다음
				        </a>
				    </li>
				    </c:if>
						
					</ul>
				</div>
				<!-- 페이징끝 -->


<script>


<c:forEach var="reply" items="${ReplyDetail}">    			
	 	
		
		

	 	$('#${reply.rpcode}btn').on('click', edit${reply.rpcode}); 
	 	function edit${reply.rpcode}() {   
	 		document.getElementById("update").style.display = "block"; //보이기
	 		document.getElementById("rp${reply.rpcode}").style.display = "none"; //숨기기
	 		document.getElementById("${reply.rpcode}btn").style.display = "none"; //숨기기
	 		document.getElementById("${reply.rpcode}del").style.display = "none"; //숨기기
	 		//$("#update").show();
           /*  $('#${reply.rpcode}container').html(
            "<form action='/updatereply' name='form' method='GET'>"+
			"<textarea name='rpcontent' id='rpcontent' cols='50' style='resize:none;'>"+"${reply.rpcontent}"+ 
			"</textarea>"+"<input type='hidden' name='rpcode' value='${reply.rpcode}'>"+
			"<input type='hidden' name='rvcode' value='${rvcode}'>"+"<input type='hidden' name='rscode' value='${rscode}'>"+
			"<button type='submit' class='btnbtn'>완료</button>"+
			"<button class='btnbtn' href='/detail_shop?rvcode=${rvcode}&rscode=${rscode}&sort='''>취소</button>"+
			"</form>"); */ 
            
            
		
		}
       
 </c:forEach> 
	
</script>

<div class="d-flex justify-content-center" style="padding-bottom:10vh;">
    <div class="card shadow mb-4 w-50" style=>
        <h4 style="margin-top:1vh;">답글을 남겨주세요!</h4>
        <form action="insertreply" method="POST" >
            <div class="row">
                <div class="col form-group">
                    <input type="hidden"  name="id" value="${id}">
                    <input type="hidden"  name="rvcode" value="${rvcode}">
                    <input type="hidden"  name="rscode" value="${rscode}">
                    <textarea id="rpcontent" cols="10" rows="6" style="resize:none;" class="form-control" name="rpcontent"></textarea>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" style="font-weight:bold; margin:1vh 0 1vh 0;">
                Post Comment
            </button>
        </form>
    </div>
</div>
<!-- 댓글 끝 -->


<a href="#"
   class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

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
        
	         
    
	
</body>
</html>