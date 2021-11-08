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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<link rel="stylesheet" href="assets/morris.js-0.5.1/morris.css">

<script src="assets/raphael-2.3.0/raphael.min.js"></script>
<script src="assets/morris.js-0.5.1/morris.min.js"></script>
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
						<a style="color: white; font-size: 20px"
							href="index7_akbo_list.jsp">마이페이지</a>
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
																<a href="index7_akbo_list.jsp"><button type="button"
																		class="btn  btn-outline-light "
																		style="width: 123.83px; height: 38px;">내 악보
																		목록</button> </a>
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
																<a href="index8_Chart.jsp"><button type="button"
																		class="btn  btn-outline-light "
																		style="width: 123.83px; height: 38px;">연습기록</button> </a>
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
																<a href="index9_info.jsp">
																	<button type="button" class="btn btn-outline-light "
																		style="width: 123.83px; height: 38px;">정보수정</button>
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



							<div class="container mt-3"
								style="margin-top: -18rem !important;">
								<h2 class="text-light">내 악보 목록</h2>
								<p class="text-light">좋아요한 악보목록을 보여줍니다.채보된 악보확인과 목록에서 악보를삭제
									할수 있습니다.</p>
								<br>
								<table class="table table-bordered text-light">
									<thead>
										<tr>

											<th>곡 명</th>


										</tr>
									</thead>
									<tbody id="myTable" class="text-light">
										<div id="accordion">
											<tr>
												<td colspan="2"><div class="card">
														<div class="card-header bg-dark" id="headingOne">
															<h2 class="mb-0">
																<button class="btn btn-link text-light" type="button"
																	data-toggle="collapse" data-target="#collapseOne"
																	aria-expanded="true" aria-controls="collapseOne">
																	Someday My Prince Will Come - Piano (Bill Evans Trio) </button>
															</h2>
														</div>

														<div id="collapseOne" class="collapse show"
															aria-labelledby="headingOne"
															data-parent="#accordionExample">
															<div class="card-body text-light bg-dark">

																<div id="myfirstchart" style="height: 250px;"></div>



															</div>
														</div>
													</div></td>


												</td>
											</tr>


											<tr>
												<td colspan=2>
													<ul class="pagination" style="margin: 0 0 0 350px;">
														<li class="page-item"><a class="page-link" href="#">Previous</a></li>
														<li class="page-item"><a class="page-link"
															href="index8_Chart.jsp">1</a></li>
														<li class="page-item active"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														<li class="page-item"><a class="page-link" href="#">4</a></li>
														<li class="page-item"><a class="page-link" href="#">5</a></li>
														<li class="page-item"><a class="page-link" href="#">Next</a></li>
													</ul>
										</div>
										</td>


										</tr>
									</tbody>
								</table>
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



    new Morris.Line({
    	  // ID of the element in which to draw the chart.
    	  element: 'myfirstchart',
    	  xLabelAngle:"45",
    	  // Chart data records -- each entry in this array corresponds to a point on
    	  // the chart.
    	  data: [
    		{ date: '2021-08-24',  value: 55 },
     	    { date: '2021-08-25', value: 47 },
    	    { date: '2021-08-26', value: 68 }, 
    	    { date: '2021-08-27', value: 52 },
    	    { date: '2021-08-28', value: 48 },
    	    { date: '2021-08-29', value: 76 },
    	    { date: '2021-08-30', value: 57 },
     	    
/*     	    { date: '2021-08-31', value: 100 } */
    	  ],
    	  // The name of the data record attribute that contains x-values.
    	  xkey: 'date',
    	  // A list of names of data record attributes that contain y-values.
    	  ykeys: ['value'],
    	  // Labels for the ykeys -- will be displayed when you hover over the
    	  // chart.
    	  labels: ['score'],
    	});

</script>




</html>

