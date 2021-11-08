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
						<a style="color: white; font-size: 20px" href="">ȸ��Ұ�</a>
					</div>
					<div
						style="position: relative; left: 1075px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="">������</a>
					</div>
					<%if(member == null){ %>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">

						<a style="color: white; font-size: 20px" href="index2_login.jsp">�α���</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index3_signup.jsp">ȸ������</a>
					</div>
					<%}else{ %>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index10_logout.jsp">�α׾ƿ�</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index7_akbo_list.jsp">����������</a>
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
                                                                    �ʱ�
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">���̸�1</a>
                                                                    <a class="dropdown-item" href="#">���̸�2</a>
                                                                    <a class="dropdown-item" href="#">���̸�3</a>
                                                                </div>
                                                            </div> -->
                                                            <button type="button"
                                                                    class="btn  btn-outline-light dropdown-toggle"
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;"
                                                                    onclick="location.href='index4_single.jsp' ">
                                                                    ���� �Ǳ�
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
                                                                    ��� �Ǳ�
                                                                </button>
                                                                <!-- <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">���̸�1</a>
                                                                    <a class="dropdown-item" href="#">���̸�2</a>
                                                                    <a class="dropdown-item" href="#">���̸�3</a>
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
                                                                    ���
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#">���̸�1</a>
                                                                    <a class="dropdown-item" href="#">���̸�2</a>
                                                                    <a class="dropdown-item" href="#">���̸�3</a>
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
                                <h2 class="text-light">�� �����ϱ�</h2>
                                <p class="text-light">���� ������ ���������� ���ε��ϸ�, ���� �Ǻ��� ���Ͽ� ��Ȯ���� ���� �ֽ��ϴ�. </p>
                                <br>

                                <div class="fixedTable accordion" id="accordionExample">
                                    <table class="table table-bordered text-light">
                                        <thead>
                                            <tr>
                                                <th class="fixedHeader" colspan='2'> ���� ���ε�</th>
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
                                                                    <div><a class = "btn"  href="#" data-toggle="tooltip" title="���� ���� ���ε�"> <img src = "assets/img/pdfUp.png" width=40px, height=40px> </a></div>
                                                                  <input type = "file" id="fileUpload"/>
                                                                    <div class="spinner-border" id="spinner"></div>
                                                                </div>
                                                                <hr style="margin:4px 0 0 0;">
                                                                <div class="card-body text-light bg-dark">
                                                                <a style="color:white;" class="fixedHeader" id="score">���� :</a>
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
    // ���콺 �ø��� ���� ������ ��ũ��Ʈ
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>
<script>

$( document ).ready(function(){
    $('#fileUpload').on('change', function(){
    	$('#spinner').delay(3000).fadeOut(1000);
    	 setTimeout (function(){
        $('#score').html('���� : 68��');
        $('#score2').css('width', '68%');
/*         $('#score2').html('68%');   */
    	 },4500);
    });
});

</script>



</html>
