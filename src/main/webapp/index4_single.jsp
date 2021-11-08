<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.SongDTO"%>
<%@page import="model.SongDAO"%>

<%
MemberDTO member = (MemberDTO) session.getAttribute("member");
SongDAO dao = new SongDAO();
ArrayList<SongDTO> list = new ArrayList<SongDTO>();

if (member != null) {
	list = dao.showsongs();
}
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function change(a) // no ';' here
	{
		var elem = a;
		if (elem.innerHTML == "즐겨찾기 ♡") {
			Swal.fire({
				title : '',
				text : "좋아요를 누르셨습니다 !",
				icon : 'success',
				showCancelButton : false,
				confirmButtonColor : '#3085d6',
				cancelButtonColor : '#d33',
				confirmButtonText : '완료',
			})
			elem.innerHTML = "즐겨찾기 ♥";
		} else
			elem.innerHTML = "즐겨찾기 ♡";
	}
</script>
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
					<%
					if (member == null) {
					%>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index2_login.jsp">로그인
						</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index3_signup.jsp">회원가입</a>
					</div>
					<%
					} else {
					%>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index10_logout.jsp">로그아웃</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px"
							href="index7_akbo_list.jsp">마이페이지</a>
					</div>
					<%
					}
					%>

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
												<li><a class="active" href="index4_single.jsp">Home</a></li>
											</td>
										</tr>

										<tbody>
											<tr>
												<td>
													<li>
														<div class="containe4r">
															<div class="dropdown">
																<button type="button"
																	class="btn  btn-outline-light dropdown-toggle"
																	data-toggle="dropdown"
																	style="width: 122.83px; height: 38px; margin: 0 0 27px 0;">
																	단일 악기</button>
																<div class="dropdown-menu">
																	<a class="dropdown-item" href="#">기타</a> <a
																		class="dropdown-item" href="#">피아노</a> <a
																		class="dropdown-item" href="#">드럼</a>
																</div>
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
																<a href="index5_multi.jsp"><button type="button"
																		class="btn  btn-outline-light"
																		style="width: 122.83px; height: 38px; margin: 0 0 27px 0;">
																		밴드 악기</button> </a>
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
								style="margin-top: -10rem !important;">
								<h2 class="text-light">악보 검색</h2>
								<p class="text-light">곡 제목을 클릭하면 곡에 대한 상세설명을 볼 수 있습니다.</p>
								<input class="form-control" id="myInput" type="text"
									placeholder="곡 제목을 검색하세요."> <br>

								<div class="fixedTable accordion" id="accordionExample">
									<table class="table table-bordered text-light">
										<thead>
											<tr>

												<th class="fixedHeader" colspan='2'>곡 명</th>

											</tr>
										</thead>


										<tbody id="myTable" class="text-light">
								
											<tr>
												<td>
													<div>
														<div class="card">
															<div class="card-header bg-dark" id="headingTwo">
																<h2 class="mb-0">
																	<button class="btn btn-link text-light collapsed"
																		type="button" data-toggle="collapse"
																		data-target="#collapseTwo" aria-expanded="false"
																		aria-controls="collapseTwo">Sweet Child O Mine_Intro</button>
																</h2>
															</div>
															<div id="collapseTwo" class="collapse"
																aria-labelledby="headingTwo"
																data-parent="#accordionExample">
																<div class="card-body text-light bg-dark">
																	작곡가 : Guns N Roses<br> 악기 : 기타 <br> 곡 난이도:
																	★★★☆☆
																</div>
															</div>
														</div>
												</td>


												<td>
													<button onclick="location.href='index4_single_akbo_guns_guitar.jsp' ">악보조회</button>
													<button>연습하기</button>
													<button onclick="change(a)" id="a">즐겨찾기 ♡</button>
												</td>
											</tr>
											<tr>
												<td>

													<div class="card">
														<div class="card-header  bg-dark" id="headingThree">
															<h2 class="mb-0">
																<button class="btn btn-link collapsed text-light"
																	type="button" data-toggle="collapse"
																	data-target="#collapseThree" aria-expanded="false"
																	aria-controls="collapseThree">Piano Sonata in C minor, D.958</button>
															</h2>
														</div>
														<div id="collapseThree" class="collapse"
															aria-labelledby="headingThree"
															data-parent="#accordionExample">
															<div class="card-body text-light bg-dark">
																 작곡가 : Schubert <br> 악기 : 피아노 <br> 곡 난이도:
																★★★☆☆
															</div>
														</div>
													</div>

												</td>


												<td><button onclick="location.href='index4_single_akbo_schubert_piano.jsp' ">악보조회</button>
													<button>연습하기</button>
													<button onclick="change(b)" id="b">즐겨찾기 ♡</button>
												</td>

											</tr>


										</tbody>
										</div>
									</table>




								</div>



								<ul class="pagination justify-content-center"
									style="margin: 0px 0 0 50vh;">
									<li class="page-item "><a class="page-link" href="#">Previous</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item "><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>


							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
</body>

<script>
	// 게시판 자료 및 검색부분
	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});

	$(document).ready(
			function() {
				$('[data-toggle="popover"]').popover(
						{
							trigger : 'focus',
							// trigger: 'hover',
							html : true,
							content : function() {
								return '<img class="img-fluid" src="'
										+ $(this).data('img') + '" />';
							},
							title : 'Toolbox'
						})
			});

	$(document).ready(function() {
		$('.btn-success').popover({
			title : "Header",
			content : "Blabla",
			animation : true
		});
	});
</script>




</html>