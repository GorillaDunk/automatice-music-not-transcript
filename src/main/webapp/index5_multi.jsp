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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
   <script type="text/javascript">
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

                    <a href="index1_main.jsp"><div class="logo"><img src="assets/img/logo.png"></div></a>

                    <div style="position: relative; left: 1025px; top:50px; color: white;">
                        <a style=" color:white; font-size:20px" href="">ȸ��Ұ�</a>
                    </div>
                    <div style="position: relative; left: 1075px; top: 50px; color: white;">
                        <a style="color:white ; font-size:20px " href="">������</a>
                    </div>
                    <%if(member == null){ %>
                    <div style="position: relative; left: 1125px; top: 50px; color: white;">
                       
                        <a style=" color:white; font-size:20px " href="index2_login.jsp">�α���</a>
                    </div>
                    <div style="position: relative; left: 1175px; top: 50px; color: white;">
                        <a style=" color:white; font-size:20px " href="index3_signup.jsp">ȸ������</a>
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

                <!-- Banner -->
                <div id="banner">
                    <div class="inner">
                        <div class="part01">

                            <div class="navi">
                                <table>

                                    <ul>
                                        <tr>
                                            <td>
                                                <li><a class="active" href="#home">Home</a></li>
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
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;"
                                                                    onclick="location.href='index4_single.jsp' ">                                                                
                                                                   ���� �Ǳ� 
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="index4_single.jsp">��Ÿ</a>
                                                                    <a class="dropdown-item" href="index4_single.jsp">�ǾƳ�</a>
                                                                    <a class="dropdown-item" href="index4_single.jsp">�巳</a>
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
                                                            <a href = "index5_multi.jsp">
                                                                <button type="button" class="btn  btn-outline-light "
                                                                    data-toggle="dropdown"
                                                                    style="width:122.83px; height:38px;  margin: 0 0 27px 0;">
                                                                    ��� �Ǳ�
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



                            <div class="container mt-3" style="margin-top: -10rem!important;">
                                <h2 class="text-light">�Ǻ� �˻�</h2>
                                <p class="text-light"> �� ������ Ŭ���ϸ� � ���� �󼼼����� �� �� �ֽ��ϴ�.</p>
                                <input class="form-control" id="myInput" type="text" placeholder="Search..">
                                <br>

                                <div class="fixedTable accordion" id="accordionExample">
                                    <table class="table table-bordered text-light">
                                        <thead>
                                            <tr>

                                                <th class="fixedHeader" colspan=''> �� ��</th>
                                                <th class="fixedHeader" colspan=''> �Ǻ���ȸ & �����ϱ� / ���ã�⢽</th>

                                            </tr>
                                        </thead>


                                        <tbody id="myTable" class="text-light">



                                            <tr>
                                                <td>
                                                    <div>

                                                        <div class="card">
                                                            <div class="card-header bg-dark" id="headingOne">
                                                                <h2 class="mb-0">
                                                                    <button class="btn btn-link text-light"
                                                                        type="button" data-toggle="collapse"
                                                                        data-target="#collapseOne" aria-expanded="false"
                                                                        aria-controls="collapseOne">
                                                                        Someday My Prince Will Come
                                                                    </button>
                                                                </h2>
                                                            </div>

                                                            <div id="collapseOne" class="collapse"
                                                                aria-labelledby="headingOne"
                                                                data-parent="#accordionExample">
                                                                <div class="card-body text-light bg-dark">
                                                                    ������ : Bill Evans Trio
                                                                    <br>
                                                                    �Ǳ� : �ǾƳ�, ���̽�
                                                                    <br>
                                                                    �� ���̵�: �ڡڡڡ١�
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <td style="padding-bottom:40px;">
                                                        
                                                            <br>
                                                            <button class="btn_icon" type="button" onclick="location.href='index5_multi_akbo_bill_piano.jsp' ">
                                                                 <a style="color: #000913;" data-toggle="tooltip" title="�ǾƳ� �Ǻ�" > 
                                                                    <img id="btn_icon_img" src="assets/img/piano.png" alt=""></a>
                                                            </button> 
                                                            <button class="btn_icon" type="button" onclick="location.href='index5_multi_akbo_bill_bass.jsp' ">
                                                                <a style="color: #000913;" data-toggle="tooltip" title="���̽� �Ǻ�">
                                                                    <img id="btn_icon_img" src="assets/img/bass.png" alt=""></a>
                                                            </button>
                                                            <!-- <button class="btn_icon" type="button" href="index5_multi_akbo.jsp">
                                                                 <a style="color: #000913;" data-toggle="tooltip" title="��Ÿ �Ǻ�">
                                                                    <img id="btn_icon_img" src="assets/img/guitar.png" alt=""></a>
                                                            </button>
                                                            <button class="btn_icon" type="button" href="index5_multi_akbo.jsp">
                                                                 <a style="color: #000913;" data-toggle="tooltip" title="������ �Ǻ�">
                                                                    <img id="btn_icon_img" src="assets/img/saxsophone.png"alt=""></a>
                                                            </button> -->
                                                             <button onclick="change(a)" id="a">���ã�� ��</button>
                                                        </td>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div>
                                                        <div class="card">
                                                            <div class="card-header bg-dark" id="headingTwo">
                                                                <h2 class="mb-0">
                                                                    <button class="btn btn-link text-light collapsed"
                                                                        type="button" data-toggle="collapse"
                                                                        data-target="#collapseTwo" aria-expanded="false"
                                                                        aria-controls="collapseTwo">
                                                                        Equinox
                                                                    </button>
                                                                </h2>
                                                            </div>
                                                            <div id="collapseTwo" class="collapse"
                                                                aria-labelledby="headingTwo"
                                                                data-parent="#accordionExample">
                                                                <div class="card-body text-light bg-dark">
                                                                    ������ : John Coltrane Quartet
                                                                    <br>
                                                                    �Ǳ� : �ǾƳ�, ���̽�, ������
                                                                    <br>
                                                                    �� ���̵�: �ڡڡڡڡ�
                                                                </div>
                                                            </div>
                                                        </div>



                                                </td>
                                                <td style="padding-bottom:40px;">
                                                    <br>
                                                    <button class="btn_icon" type="button" onclick="location.href='index5_multi_akbo_john_piano.jsp' ">
                                                        <a style="color: #000913; data-toggle="tooltip" title="�ǾƳ�">
                                                            <img id="btn_icon_img" src="assets/img/piano.png" alt=""></a>
                                                    </button>

                                                    &nbsp; &nbsp;

                                                    <button class="btn_icon" type="button" onclick="location.href='index5_multi_akbo_john_bass.jsp' ">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="���̽�">
                                                            <img id="btn_icon_img" src="assets/img/bass.png" alt=""></a>
                                                    </button>
                                                    <!-- <button class="btn_icon" type="button" href="index3.jsp">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="��Ÿ">
                                                            <img id="btn_icon_img" src="assets/img/guitar.png" alt=""></a>
                                                    </button> -->
                                                    <button class="btn_icon" type="button" onclick="location.href='index5_multi_akbo_john_saxophone.jsp' ">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="������">
                                                            <img id="btn_icon_img" src="assets/img/saxsophone.png"
                                                                alt=""></a>
                                                    </button>
                                                  
                                                    <button onclick="change(c)" id="c">���ã�� ��</button>
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
                                                                    aria-controls="collapseThree">
                                                                    Autumns Leaves
                                                                </button>
                                                            </h2>
                                                        </div>
                                                        <div id="collapseThree" class="collapse"
                                                            aria-labelledby="headingThree"
                                                            data-parent="#accordionExample">
                                                            <div class="card-body text-light bg-dark">
                                                                ������ : Michel Petrucciani Trio
                                                                <br>
                                                                �Ǳ� : �ǾƳ�, ���̽�, ��Ÿ
                                                                <br>
                                                                �� ���̵�: �ڡڡڡ١�
                                                            </div>
                                                        </div>
                                                    </div>

                                                </td>
                                                <td style="padding-bottom:40px;">
                                                    <br>
                                                    <button class="btn_icon" type="button" href="index4_single_akbo.jsp">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="�ǾƳ�">
                                                            <img id="btn_icon_img" src="assets/img/piano.png" alt=""></a>
                                                    </button>

                                                    &nbsp; &nbsp;
                                                    
                                                    <button class="btn_icon" type="button" href="index3.jsp">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="���̽�">
                                                            <img id="btn_icon_img" src="assets/img/bass.png" alt=""></a>
                                                    </button>
                                                    <button class="btn_icon" type="button" href="index3.jsp">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="��Ÿ">
                                                            <img id="btn_icon_img" src="assets/img/guitar.png" alt=""></a>
                                                    </button>
                                                    <!-- <button class="btn_icon" type="button" href="index3.jsp">
                                                         <a style="color: #000913;" data-toggle="tooltip" title="������">
                                                            <img id="btn_icon_img" src="assets/img/saxsophone.png"
                                                                alt=""></a>
                                                    </button> -->
                                                    
                                                     <button onclick="change(b)" id="b">���ã�� ��</button>
                                                </td>
                                            </tr>

                                        </tbody>
                                </div>
                                </table>




                            </div>



                            <ul class="pagination justify-content-center" style=" margin: 0px 0 0 50vh;">
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




    // �Խ��� �ڷ� �� �˻��κ�
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });


    $(document).ready(function () {
        $('[data-toggle="popover"]').popover({
            trigger: 'focus',
            // trigger: 'hover',
            html: true,
            content: function () {
                return '<img class="img-fluid" src="' + $(this).data('img') + '" />';
            },
            title: 'Toolbox'
        })
    });


    $(document).ready(function () {
        $('.btn-success').popover({ title: "Header", content: "Blabla", animation: true });
    });

</script>




</html>
