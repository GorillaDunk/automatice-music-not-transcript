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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
						<a style="color: white; font-size: 20px"
							href="index7_akbo_list.jsp">����������</a>
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
												<li><a class="active" href="index7_akbo_list.jsp">MyPage</a></li>
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
																		style="width: 123.83px; height: 38px;">�� �Ǻ�
																		���</button> </a>
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
																		style="width: 123.83px; height: 38px;">�������</button> </a>
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
																		style="width: 123.83px; height: 38px;">���ƿ� ���</button>
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
																		style="width: 123.83px; height: 38px;">��������</button>
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
								<h2 class="text-light">�� �Ǻ� ���</h2>
								<p class="text-light">������ ��ȯ�� �Ǻ������ �����ݴϴ�. ä���� �Ǻ��� Ȯ���ϰ�
									����Ʈ���� �Ǻ��� ������ �� �ֽ��ϴ�.</p>
								<br>
								<table class="table table-bordered text-light">
									<thead>
										<tr>

											<th>�� ��</th>
											<th>����</th>

										</tr>
									</thead>
									<tbody id="myTable" class="text-light">
										<div id="accordion">
											<tr>
												<td>Piano Sonata in C minor, D.958 (Schubert) - �ǾƳ�</td>
												<td>
													<button  onclick="location.href='index4_single_akbo_schubert_piano.jsp' ">
														<i class="fas fa-music"> �Ǻ���ȸ</i>
													</button>
													<button>
														<i class="fas fa-trash"></i>����
													</button>
												</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<button>
														<i class="fas fa-music"> �Ǻ���ȸ</i>
													</button>
													<button>
														<i class="fas fa-trash"></i>����
													</button>
												</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<button>
														<i class="fas fa-music"> �Ǻ���ȸ</i>
													</button>
													<button>
														<i class="fas fa-trash"></i>����
													</button>
												</td>
												</td>
											</tr>
											<tr>
												<td></td>
												<td>
													<button>
														<i class="fas fa-music"> �Ǻ���ȸ</i>
													</button>
													<button>
														<i class="fas fa-trash">����</i>
													</button>
												</td>
												</td>
											</tr>
											</td>
											</tr>

										</div>


									</tbody>

								</table>
								<div>
									<ul class="pagination" style="margin: 0 0 0 350px;">
										<li class="page-item"><a class="page-link" href="#">Previous</a></li>
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
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
		</div>
	</div>




</body>





<script>




    // �Խ��� �ڷ� �� �˻��κ�
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

