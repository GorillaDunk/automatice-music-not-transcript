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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var aAudio = new Audio(
			'assets/audio/Equinox - John Coltrane - Bass.wav');
	var a = false;
	/* var bAudio = new Audio('b.mp3'); */
	function myAudioFunction() {
		a ? aAudio.pause() : aAudio.play();
	}

	aAudio.onplaying = function() {
		a = true;
	}
	aAudio.onpause = function() {
		a = false;
	}
	
    function change(a) // no ';' here
    {
       var elem = a;
       if (elem.innerHTML == "���ã�� ��") {
          Swal.fire({
               title:'',
               text: "���ƿ並 �����̽��ϴ� !",
               icon: 'success',
               showCancelButton: false,
               confirmButtonColor: '#3085d6',
               cancelButtonColor: '#d33',
               confirmButtonText: '�Ϸ�',
             })
          elem.innerHTML = "���ã�� ��";
       } else
          elem.innerHTML = "���ã�� ��";
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
						<a style="color: white; font-size: 20px" href="">ȸ��Ұ�</a>
					</div>
					<div
						style="position: relative; left: 1075px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="">������</a>
					</div>
					<%
					if (member == null) {
					%>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">

						<a style="color: white; font-size: 20px" href="index2_login.jsp">�α���</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index3_signup.jsp">ȸ������</a>
					</div>
					<%
					} else {
					%>
					<div
						style="position: relative; left: 1125px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px" href="index10_logout.jsp">�α׾ƿ�</a>
					</div>
					<div
						style="position: relative; left: 1175px; top: 50px; color: white;">
						<a style="color: white; font-size: 20px"
							href="index7_akbo_list.jsp">����������</a>
					</div>
					<%
					}
					%>


				</div>

				<div id="banner">
					<div class="inner">
						<div class="part01">

							<div class="navi">

								<table>
									<ul>
										<tr>
											<td>
												<li><a class="active" href="index4_single_akbo.jsp">Home</a></li>
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
																	onclick="location.href='index4_single.jsp' ">���� �Ǳ�</button>
																<div class="dropdown-menu">
																	<a class="dropdown-item" href="#">��Ÿ</a> <a
																		class="dropdown-item" href="#">�ǾƳ�</a> <a
																		class="dropdown-item" href="#">�巳</a>
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
																
																	<button type="button" class="btn  btn-outline-light "
																		data-toggle="dropdown"
																		style="width: 122.83px; height: 38px; margin: 0 0 27px 0;"
																		onclick="location.href='index5_multi.jsp' ">
																		��� �Ǳ�</button>
																
															</div>
														</div>
												</li>
												</td>
											</tr>
										</tbody>
									</ul>
								</table>
							</div>
							<div class="container mt-3" style="margin-top: -48rem;">

								<table class="table table-bordered text-light">
									<thead>
										<tr>

											<th colspan='3'>Equinox - Bass (John Coltrane Trio)</th>

										</tr>

										<tr>
											<td><img class="akbo" src="assets/img/Equinox - Bass (John Coltrane Trio)-1.jpg"
												width=900px, height=1100px></td>


											<td><a class="btn"
												href="assets/pdf/Equinox - Bass (John Coltrane Trio)-1.pdf"
												data-toggle="tooltip" title="pdf �ٿ�ޱ�" download> <img
													src="assets/img/pdf.png" width=25px, height=25px>
											</a> <br> <a class="btn" href="index6_upload.jsp"
												data-toggle="tooltip" title="�����ϱ�!"> <img
													src="assets/img/practice.png" width=25px, height=25px></a>
												<br> <a class="btn" data-toggle="tooltip" title="�� ���"
												onclick="myAudioFunction();"> <img
													src="assets/img/back.png" width=25px, height=25px></a></td>
										</tr>


									</thead>

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
	// ���콺 �ø��� ���� ������ ��ũ��Ʈ
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>




</html>