<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.MemberDTO"%>

<%
MemberDTO member = (MemberDTO) session.getAttribute("member");
%>
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Space</title>
    <link rel="stylesheet" href="assets/css/style2.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>


    <div class="movewrap">
        <div>
            <div class="moving">

                <div class="header">

					<a href="index1_main.jsp"><div class="logo">
							<img src="assets/img/logo.png">
						</div></a>

					<div
						style="position: relative; left: 1025px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="">회사소개</a>
					</div>
					<div
						style="position: relative; left: 1075px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="">고객센터</a>
					</div>
					<%if(member == null){ %>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">

						<a style="color: white; font-size: 20px" href="index2_login.jsp">로그인</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index3_signup.jsp">회원가입</a>
					</div>
					<%}else{ %>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index10_logout.jsp">로그아웃</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index7_akbo_list.jsp">마이페이지</a>
					</div>
					<%} %>


                </div>

                <div id="banner">
                    <div class="inner">
                        <div class="part01">

                            <div class="navi">

                                <table>
                                    <ul>
                                        <tr>
                                            <td>
                                                <li><a class="active" href="index4_single.jsp">Home</a></li>
                                            </td>
                                        </tr>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <li>
                                                        <div class="containe4r">
                                                            <!-- <div class="dropdown">
                                                                <button type="button"
                                                                    class="btn  btn-outline-light dropdown-toggle"
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;">
                                                                    초급
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">곡이름1</a>
                                                                    <a class="dropdown-item" href="#">곡이름2</a>
                                                                    <a class="dropdown-item" href="#">곡이름3</a>
                                                                </div>
                                                            </div> -->
                                                            <button type="button"
                                                                    class="btn  btn-outline-light dropdown-toggle"
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;"
                                                                    onclick="location.href='index4_single.jsp' ">
                                                                    단일 악기
                                                                </button>
                                                        </div>
                                                    </li>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <li>
                                                        <div class="containe4r">
                                                            <div class="dropdown">
                                                                <button type="button"
                                                                    class="btn  btn-outline-light"
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;"
                                                                    onclick="location.href='index5_multi.jsp' ">
                                                                    밴드 악기
                                                                </button>
                                                                <!-- <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">곡이름1</a>
                                                                    <a class="dropdown-item" href="#">곡이름2</a>
                                                                    <a class="dropdown-item" href="#">곡이름3</a>
                                                                </div> -->
                                                            </div>
                                                        </div>
                                                    </li>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <!-- <li>
                                                        <div class="containe4r">
                                                            <div class="dropdown">
                                                                <button type="button"
                                                                    class="btn  btn-outline-light dropdown-toggle"
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;">
                                                                    고급
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">곡이름1</a>
                                                                    <a class="dropdown-item" href="#">곡이름2</a>
                                                                    <a class="dropdown-item" href="#">곡이름3</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li> -->
                                                </td>
                                            </tr>
                                        </tbody>
                                    </ul>
                                </table>
                            </div>



                            <div class="container mt-3" style="margin-top: -10rem!important;">
                                <h2 class="text-light">곡 연습하기</h2>
                                <p class="text-light">내가 녹음한 연습파일을 업로드하면, 기존 악보와 비교하여 정확도를 볼수 있습니다. </p>
                                <br>

                                <div class="fixedTable accordion" id="accordionExample">
                                    <table class="table table-bordered text-light">
                                        <thead>
                                            <tr>
                                                <th class="fixedHeader" colspan='2'> 파일 업로드</th>
                                            </tr>
                                        </thead>


                                        <tbody id="myTable" class="text-light">



                                            <tr>
                                                <td>
                                                    <div>
                                                        <div>
                                                            <div id="collapseOne" class="collapse show"
                                                                aria-labelledby="headingOne"
                                                                data-parent="#accordionExample">
                                                                <div class="card-body text-light bg-dark">
                                                                    <div><a class = "btn"  href="#" data-toggle="tooltip" title="연주 녹음 업로드"> <img src = "assets/img/pdfUp.png" width=40px, height=40px> </a></div>
                                                                  <input type = "file" id="fileUpload"/>
                                                                    <div class="spinner-border" id="spinner"></div>
                                                                </div>
                                                                <hr style="margin:4px 0 0 0;">
                                                                <div class="card-body text-light bg-dark">
                                                                <a style="color:white;" class="fixedHeader" id="score">점수 :</a>
                                                                <div class="progress">
                                                                    <div class="progress-bar" style="width:0%" id="score2"></div>
                                                                </div>
                                                                  </div>
                                                            </div>
                                                        </div>
                                                </td>
                                            </tr>
                                        </tbody>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>




</body>





<script>
    // 마우스 올리면 설명 나오는 스크립트
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>
<script>

$( document ).ready(function(){
    $('#fileUpload').on('change', function(){
    	$('#spinner').delay(3000).fadeOut(1000);
    	 setTimeout (function(){
        $('#score').html('점수 : 68점');
        $('#score2').css('width', '68%');
/*         $('#score2').html('68%');   */
    	 },4500);
    });
});

</script>



</html>
