<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>STAMP</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Herr+Von+Muellerhoff" rel="stylesheet">

    <link rel="stylesheet" href="/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <link rel="stylesheet" href="/css/aos.css">

    <link rel="stylesheet" href="/css/ionicons.min.css">

    <link rel="stylesheet" href="/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/icomoon.css">
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="home"><span class="img" style="background-image: url(../images/author.jpg);"></span>STAMP</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
                   <li><a href="/">Home</a></li>
					<li><a href="/stamp/stamping">My Stamp</a></li>
					<li class="colorlib-active"><a href="/services">Services</a></li>
					<li><a href="/aboutus">About Us</a></li>
					<li><a href="/customerservice">Customer Service</a></li>
				</ul>
			</nav>

			<div class="colorlib-footer">
				<h3>Newsletter</h3>
				<div class="d-flex justify-content-center">
					<form action="#" class="colorlib-subscribe-form">
            <div class="form-group d-flex">
            	<div class="icon"><span class="icon-paper-plane"></span></div>
              <input type="text" class="form-control" placeholder="Enter Email Address">
            </div>
          </form>
				</div>
			</div>
		</aside> <!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div class="row no-gutters slider-text justify-content-center align-items-center">
	          <div class="col-md-8 ftco-animate">
	            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home</a></span> <span class="mr-2"><a href="#">Services</a></span></p>
	            <h1 class="bread">My Page</h1>
	          </div>
	        		</div>
				</div>
			</section>
			
			<section class="ftco-section">
			<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tabbable" id="tabs-269258">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active show" href="#tab1" data-toggle="tab"><strong>회원정보 수정</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#tab2" data-toggle="tab"><strong>사업 정보 관리</strong></a>
                            </li>
                           
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab1">
                                
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-md-4" align="center">
                                                <br>
                                                <img alt="" src="/images/d982f4ec7d06f6910539472634e1f9b1.png" width="140" height="140" class="rounded-circle"> 
                                                <address>
                                                    <h5>RYAN</h5><br> <abbr title="e-mail"><strong>e-mail :</strong><br></abbr> iamryan@stamp.com<br> <abbr title="Phone"><strong>Phone :</strong><br></abbr> 010-1234-7890
                                                </address>
                                            </div>
                                            <div class="col-md-8">
                                                <form role="form">
                                                    <div class="form-group">
                                                        <br>
                                                        <label for="InputEmail1">
                                                            Email address
                                                        </label>
                                                        <input type="email" class="form-control" id="InputEmail1">
                                                    </div>
                                                    <div class="form-group">
                                                        
                                                        <label for="InputPnum">
                                                            휴대전화
                                                        </label>
                                                        <input type="text" class="form-control" id="InputPnum">
                                                    </div>
                                                    <div class="form-group">
                                                        
                                                        <label for="Inputname">
                                                            이름
                                                        </label>
                                                        <input type="text" class="form-control" id="Inputname">
                                                    </div>
                                                    <div class="form-group">
                                                        
                                                        <label for="exampleInputPassword1">
                                                            비밀번호
                                                        </label>
                                                        <input type="password" class="form-control" id="exampleInputPassword1">
                                                    </div>
                                                    <div class="form-group">
                                                        
                                                        <label for="exampleInputPassword2">
                                                            비밀번호 확인
                                                        </label>
                                                        <input type="password" class="form-control" id="exampleInputPassword2">
                                                    </div>
                                                    <div class="form-group">
                                                        
                                                        <label for="exampleInputFile">
                                                            프로필 사진
                                                        </label>
                                                        <input type="file" class="form-control-file" id="exampleInputFile">
                                                        <p class="help-block">
                                                            140x140 사이즈의 jpg파일.
                                                        </p>
                                                    </div>
                                                    <div class="checkbox">
                                                        
                                                        <label>
                                                            <input type="checkbox"> 이벤트 수신 동의
                                                        </label>
                                                    </div> 
                                                    <button type="submit" class="btn btn-primary">
                                                        수정완료
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <div class="col-md-10"><br>
                                    <h3 class="text-center text-danger">
                                        STAMP 등록 현황
                                    </h3><br>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>
                                                    #
                                                </th>
                                                <th>
                                                    STAMP
                                                </th>
                                                <th>
                                                    이벤트 날짜
                                                </th>
                                                <th>
                                                    Status
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr class="table-active">
                                                <td>
                                                    1
                                                </td>
                                                <td>
                                                    푸드 트럭
                                                </td>
                                                <td>
                                                    30/06/2020
                                                </td>
                                                <td>
                                                    완료
                                                </td>
                                            </tr>
                                            <tr class="table-success">
                                                <td>
                                                    2
                                                </td>
                                                <td>
                                                    푸드 트럭
                                                </td>
                                                <td>
                                                    01/07/2020
                                                </td>
                                                <td>
                                                    취소됨
                                                </td>
                                            </tr>
                                            <tr class="table-warning">
                                                <td>
                                                    3
                                                </td>
                                                <td>
                                                    푸드 트럭
                                                </td>
                                                <td>
                                                    03/07/2020
                                                </td>
                                                <td>
                                                    예정됨
                                                </td>
                                            </tr>
                                            <tr class="table-danger">
                                                <td>
                                                    4
                                                </td>
                                                <td>
                                                    푸드 트럭
                                                </td>
                                                <td>
                                                    04/07/2020
                                                </td>
                                                <td>
                                                    조율중
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
        </div>
    </section>
		</div>

	    <footer class="ftco-footer ftco-bg-dark ftco-section" style="margin-left: 375px;">
	      <div class="container px-md-5">
	        <div class="row mb-5">
	          <div class="col-md">
	            <div class="ftco-footer-widget mb-4 ml-md-4">
	              <h2 class="ftco-heading-2">Recent Photos</h2>
	              <ul class="list-unstyled photo">
	                <li><a href="#" class="img" style="background-image: url(../images/image_a.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(../images/image_b.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(../images/image_c.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(../images/image_d.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(../images/image_e.jpg);"></a></li>
	                <li><a href="#" class="img" style="background-image: url(../images/image_f.jpg);"></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-md">
	             <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2">Locations</h2>
	              <ul class="list-unstyled categories">
	              	<li><a href="#">서울 <span>(105)</span></a></li>
                    <li><a href="#">경기 <span>(212)</span></a></li>
                   	<li><a href="#">부산 <span>(150)</span></a></li>
                   	<li><a href="#">인천 <span>(100)</span></a></li>
                   	<li><a href="#">대전 <span>(200)</span></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-md">
	            <div class="ftco-footer-widget mb-4">
	            	<h2 class="ftco-heading-2">Have a Questions?</h2>
	            	<div class="block-23 mb-3">
		              <ul>
		                <li><span class="icon icon-map-marker"></span><span class="text">서울특별시 금천구 가산디지털1로 168(가산동) 우림라이온스밸리 B동 13층</span></li>
                      	<li><a href="#"><span class="icon icon-phone"></span><span class="text">02-2025-9000~3</span></a></li>
                      	<li><a href="#"><span class="icon icon-envelope"></span><span class="text">customer@stamp.com</span></a></li>
		              </ul>
		            </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-12">

	            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
	      </div>
	    </footer>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/js/jquery.min.js"></script>
  <script src="/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/js/popper.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/jquery.easing.1.3.js"></script>
  <script src="/js/jquery.waypoints.min.js"></script>
  <script src="/js/jquery.stellar.min.js"></script>
  <script src="/js/owl.carousel.min.js"></script>
  <script src="/js/jquery.magnific-popup.min.js"></script>
  <script src="/js/aos.js"></script>
  <script src="/js/jquery.animateNumber.min.js"></script>
  <script src="/js/bootstrap-datepicker.js"></script>
  <script src="/js/jquery.timepicker.min.js"></script>
  <script src="/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/js/google-map.js"></script>
  <script src="/js/main.js"></script>
    
  </body>
</html>