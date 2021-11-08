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
<title>Document</title>
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="15">


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
						<a style="color: white; font-size: 20px"
							href="index7_akbo_list.jsp">마이페이지</a>
					</div>
					<%} %>
				</div>
				<!-- Banner -->
				<div id="banner">
					<div class="inner">
						<div class="title">Music Space</div>
						<div class="content">Music Space는 단일악기 | 합주에 따른 수준별 악보를
							제공합니다.</div>
						<div class="content02">
							무언가를 배울때 무엇을 모르는지 모르는게 가장 큰 어려움입니다. <br />
							<br /> Music Space가 배움의 과정에서 함께하겠습니다.
						</div>
					</div>
					<div class="actions">
						<button id="btn1">
							<%if(member==null){ %>
							<a href="index2_login.jsp" style="color:#ffffff";>시작하기</a>
						</button>
						<%}else{ %>
						<a href="index4_single.jsp" class="text-white bg-dark">시작하기</a>
						</button>
						<%} %>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>




	<div class="movewrap">
		<div>
			<div class="moving">
				<div class="footer">
					<div>
						<img class="footerLogo" src="">
					</div>
				</div>
			</div>
		</div>
	</div>

</body>





<script>

    // $(document).ready(function () {

    //     $('#btn1').click(function () {

    //         var offset = $('.title02').offset(); //선택한 태그의 위치를 반환

    //         //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

    //         $('html').animate({ scrollTop: offset.top }, 400);

    //     });

    // });


    //----------------------------------------


    // 게시판 자료 및 검색부분
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myList li").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>







</html>