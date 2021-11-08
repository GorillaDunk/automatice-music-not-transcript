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
    <link rel="stylesheet" href="assets/css/style3.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/mypage.css">
    <link rel="stylesheet" href="assets/css/style2.css" />

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
 <!-- Banner -->
 <div id="banner">
    <div class="inner">
        <div class="part01">

            <div class="navi">
                <table>
                    
                 <ul>
                    <tr>
                        <td>
                            <li><a class="active" href="#home">MyPage</a></li>
                        </td>
                    </tr>

                    <tbody>
            <tr>
                 <td>
                    <li>
                        <div class="containe4r">
                            <div class="dropdown">
                                <a href = "index7_akbo_ilst.jsp"><button type="button" class="btn  btn-outline-light "
                                     style="width:123.83px; height:38px;">
                                    내 악보 목록 
                                </button>
                            </a>
                            </div>
                        </div>
                    </li>
                </td>
             </tr>
            
                <tr>
                    <td>
                    <li>
                        <div class="container">
                            <div class="dropdown">
                                <a href = "index8_Chart.jsp"><button type="button" class="btn  btn-outline-light "
                               style="width:123.83px; height:38px; ">
                                    연습악보 목록
                                </button>
                            </a>
                            </div>
                        </div>
                    </li>
                </td>
                </tr>
                <tr>
												<td>
													<li>
														<div class="containe4r">
															<div class="dropdown">
																<a href="index7_like_list.jsp">
																	<button type="button" class="btn btn-outline-light "
																		style="width: 123.83px; height: 38px;">좋아요 목록</button>
																</a>
															</div>
														</div>
												</li>
												</td>
											</tr>
                <tr>
                    <td>
                       <li>
                           <div class="containe4r">
                               <div class="dropdown">
                                   <a href = "index9_info.jsp">
                                <button type="button" class="btn btn-outline-light "
                               style="width:123.83px; height:38px; ">
                                       정보수정  
                                   </button>
                                </a>
                                </div>
                           </div>
                       </li>
                   </td>
                </tr>
            </tbody>
                </ul>
            </table>
            </div>
            
                                <div class="container mt-3" style = "margin-top: -10rem!important;">
                                    <h2 class="text-light" style = "padding-right:20% ;">회원정보 수정<br><br></h2>
                                    <br>
                                  
                                    <tbody id="myTable" class="text-light">
                                       
                                                    <div class="wrap">
                                                        <div class="login">
                                                            <div class="login_id">
                                                                <h4>E-mail</h4>
                                                                <input type="email" name="" id="" placeholder="Email">
                                                            </div>
                                                            <div class="login_pw">
                                                                <h4>Password</h4>
                                                                <input type="password" name="" id="" placeholder="Password">
                                                            </div>
                                    
                                                            <div class="login_id">
                                                                <h4>Name</h4>
                                                                <input type="email" name="" id="" placeholder="Email">
                                                            </div>
                                    
                                                    
                                                            <div class="login_id">
                                                                <h4>Phone</h4>
                                                                <input type="email" name="" id="" placeholder="Email">
                                                            </div>
                                                            
                                                            <div class="submit">
                                                                <input type="submit" value="수정완료">
                                                            </div>
                                                        </div>
                                                    </div>

                                </tbody>
                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>




</body>





<script>




    // 게시판 자료 및 검색부분
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });

</script>




</html>

	