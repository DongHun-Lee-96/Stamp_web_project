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

    <link rel="stylesheet" href="<c:url value="/css/open-iconic-bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/animate.css"/>">
    
    <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/owl.theme.default.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/magnific-popup.css"/>">

    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">

    <link rel="stylesheet" href="<c:url value="/css/ionicons.min.css"/>">

    <link rel="stylesheet" href="<c:url value="/css/bootstrap-datepicker.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/jquery.timepicker.css"/>">

    
    <link rel="stylesheet" href="<c:url value="/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/icomoon.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
  </head>
  
  <body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="/"><span class="img" style="background-image: url(../images/author.jpg);"></span>STAMP</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
				<li><a href="/">Home</a></li>
					<li><a href="/stamp/stamping">My Stamp</a></li>
					<li><a href="/services">Services</a></li>
					<li><a href="/aboutus">About Us</a></li>
					<li class="colorlib-active"><a href="/customerservice">Customer Service</a></li>
					<li><a href="/login">Login</a></li>
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
	            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home</a></span> <span>Customer Service</span></p>
	            <h1 class="bread">Customer Service</h1>
	          </div>
	        </div>
				</div>
			</section>
			<section class="ftco-section contact-section">
	      <div class="container">
	        <div class="row d-flex mb-5 contact-info">
	          <div class="col-md-12 mb-4">
	            <h2 class="h3 font-weight-bold">Contact Information</h2>
	          </div>
	          <div class="w-100"></div>
	          <div class="col-md-5 d-flex" style="color: black;">
	          	<div class="info bg-light p-5">
		            <p><span>Address:</span> 서울특별시 금천구 가산디지털 1로 168 (가산동) 우림라이온스벨리 A동 601호</p>
		          </div>
	          </div>
	          <div class="col-md-5 d-flex" style="color: black;">
	          	<div class="info bg-light p-5">
					<p><span>Phone:</span> <a href="tel://1234567920">02-2025-9000~3</a></p>
					<p><span>Email:</span> <a href="mailto:info@yoursite.com">customer@stamp.com</a></p>
		          </div>
	          </div>
			</div>
		<div>  
		

			<h2 class="h3 font-weight-bold">자주 묻는 질문</h2>  
			<div class="accordion col-lg-10 col-md-10" id="accordionExample" >
				<div class="card">
				  <div class="card-header" id="headingOne">
					<h2 class="mb-0">
					  <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color: black;">
						Q1. STAMP가 뭔가요?
					  </button>
					</h2>
				  </div>
				  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body">
						STAMP는 버스킹 공연, 푸드트럭, 개인 사업장 이벤트에 대하여 개인 사업자들이 직접 위치를 등록해<br>
					많은 사람들에게 알릴 수 있게 해주는 서비스입니다.	
					</div>
				  </div>
				</div>
				<div class="card">
				  <div class="card-header" id="headingTwo">
					<h2 class="mb-0">
					  <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="color: black;">
						Q2. 고정적인 상점 (ex. 음식점, 헬스장, PC방 등) 들도 등록할 수 있나요?
					  </button>
					</h2>
				  </div>
				  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					<div class="card-body">
						네, 가능합니다. 하지만 개인사업자라 할지라도 프랜차이즈 매장은 등록이 불가합니다.<br>
						개인 가게를 운영하거나 개인이 주최하는 이벤트는 무엇이든지 등록 가능합니다.<br>
						단, 지역축제같은 모두가 참여 가능한 큰 규모의 행사는 프랜차이즈 브랜드도 등록이 가능합니다.
					</div>
				  </div>
				</div>
				<div class="card">
				  <div class="card-header" id="headingThree">
					<h2 class="mb-0">
					  <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="color: black;">
						Q3. 어떻게 위치 등록을 하나요?
					  </button>
					</h2>
				  </div>
				  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body">
						마이서비스의 Let's Stamp 버튼을 눌러 원하는 지역과 시간에 이벤트의 정보를 담아 등록해 주시면 됩니다.
					</div>
				  </div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
					  <h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" style="color: black;">
							Q4. 위치 등록 시 등록비가 발생하나요??
						</button>
					  </h2>
					</div>
					<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">
						 기본 스탬프는 비용이 발생하지 않습니다.<br>
						 하지만 스탬프 게시 기간을 늘리고 싶으시다거나 
						 여러 부가 서비스를 이용하기 위해서는 프리미엄 사업자 등록이 필요합니다.	
					  </div>
					</div>
				  <div class="card">
					<div class="card-header" id="headingFive">
					  <h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive" style="color: black;">
							Q5. 스탬프 등록시 사업자 등록증이 필요한가요??
						</button>
					  </h2>
					</div>
					<div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
					  <div class="card-body">
						아니요. 스탬프는 기본적으로 홍보 플래폼이 부족한 개인의 홍보를 위해 만들어진 사이트 입니다.<br>
						그러므로 사업자 등록이 되어 있지 않더라도 스탬프 등록이 얼마든지 가능합니다.<br>
						또한 실제 사업자 등록이 된 가게를 홍보하시더라도 별도의 서류 제출은 필요하지 않습니다.
					  </div>
					</div>
				  </div>
			  </div>

			<br><br>
			</div>
			<h2 class="h3 font-weight-bold">문의사항</h2>
	        <div class="row block-9">
	          <div class="col-md-10 d-flex">
	            <form action="#" class="bg-light p-5 contact-form">
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="성함">
	              </div>
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="이메일">
	              </div>
	              <div class="form-group">
	                <input type="text" class="form-control" placeholder="제목">
	              </div>
	              <div class="form-group">
	                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="무엇을 도와드릴까요?"></textarea>
	              </div>
	              <div class="form-group">
	                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
	              </div>
	            </form>
	          
	          </div>

	         
	        </div>
	      </div>
	    </section>
	   <footer class="ftco-footer ftco-bg-dark ftco-section">
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

  <script src="<c:url value="/js/jquery.min.js"/>"></script>
  <script src="<c:url value="/js/jquery-migrate-3.0.1.min.js"/>"></script>
  <script src="<c:url value="/js/popper.min.js"/>"></script>
  <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
  <script src="<c:url value="/js/jquery.easing.1.3.js"/>"></script>
  <script src="<c:url value="/js/jquery.waypoints.min.js"/>"></script>
  <script src="<c:url value="/js/jquery.stellar.min.js"/>"></script>
  <script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
  <script src="<c:url value="/js/jquery.magnific-popup.min.js"/>"></script>
  <script src="<c:url value="/js/aos.js"/>"></script>
  <script src="<c:url value="/js/jquery.animateNumber.min.js"/>"></script>
  <script src="<c:url value="/js/bootstrap-datepicker.js"/>"></script>
  <script src="<c:url value="/js/jquery.timepicker.min.js"/>"></script>
  <script src="<c:url value="/js/scrollax.min.js"/>"></script>
  <script src="<c:url value="/js/main.js"/>"></script>
    
  </body>
</html>