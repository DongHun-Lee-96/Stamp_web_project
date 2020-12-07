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
					<li><a href="./">Home</a></li>
					<li><a href="/stamp/stamping">My Stamp</a></li>
					<li class="colorlib-active"><a href="#">Services</a></li>
					<li><a href="/aboutus">About Us</a></li>
					<li><a href="/customerservice">Customer Service</a></li>
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
	            <p class="breadcrumbs"><span class="mr-2"><a href="home">Home</a></span> <span>Services</span></p>
	            <h1 class="bread">Services</h1>
	          </div>
	        </div>
				</div>
			</section>
		
			<section class="ftco-section">
	      <div class="container">
	        <div class="row">
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-big-lens"></span>
	              	</div>
				  </div>
				  <a href="/stamp/index" target="_self">
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">Find Stamp</h3></a>
	                <p>근처에 있는 스탬프들을 보고싶으신가요?</p>
				  </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-printing-photo"></span>
	              	</div>
				  </div>
				  <a href="/stamp/keywordStamp">
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">KeyWord Stamp</h3></a>
					<p>근처에 재밌는 스탬프가 없나요? 더 넓은 지역에서 조건에 맞는 스탬프를 검색해보세요.</p>
				
				  </div>
				
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-focusing-target"></span>
	              	</div>
	              </div>
	              <a href="/mypage">
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">My Page</h3></a>
	                <p>개인정보를 변경하세요.</p>
	              </div>    
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-camera"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">History</h3>
	                <p>당신이 다녀갔던 스탬프 기록과 구독한 스탬프들을 확인하세요.</p>
	              </div>
	            </div>    
	          </div>
	          <div class="col-md-4 d-flex align-sel Searchf-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-polaroid-pictures"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">Stamper</h3>
	                <p>다른 스탬퍼들과 함께 공유하고 팔로우해보세요.</p>
	              </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-film"></span>
              	</div>
              </div>
              <a href="/aboutus">
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">About Us</h3></a>
                <p>저희에 대해 궁금하신가요?</p>
              </div>
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
  <script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35ae3838473737ccaa839ae61a71fb9c&libraries=services,clusterer"></script>
  <script src="<c:url value="/js/main.js"/>"></script>
    
  </body>
</html>