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
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	<link rel="stylesheet" href="/resources/demos/style.css">
  
  </head>
  <body>
	
	
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="#"><span class="img" style="background-image: url(../images/author.jpg);"></span>STAMP</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li class="colorlib-active"><a href="/">Home</a></li>
					<li><a href="/stamp/stamping">My Stamp</a></li>
					<li><a href="/services">Services</a></li>
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
			<section class="ftco-section-no-padding bg-light">
				<div id="section1"></div>
				<div class="hero-wrap">
					<div class="overlay"></div>
					<div class="d-flex align-items-center js-fullheight">
						<div class="author-image text img d-flex">
							<section class="home-slider js-fullheight owl-carousel">
						  <div class="slider-item js-fullheight" id="section1" style="background-image: url(../images/author3.jpg);">
						</div>
					      <div class="slider-item js-fullheight" style="background-image:url(../images/author4.jpg);">
					      </div> 
					      <div class="slider-item js-fullheight" style="background-image:url(../images/author5.jpg);">
					      </div> 
					      <div class="slider-item js-fullheight" style="background-image:url(/resources/images/author6.jpg);">
					      </div> 
					    </section>
						</div>
						<div class="author-info text p-3 p-md-5">
							<div class="desc">
								<span class="subheading"></span>
								<h1 class="big-letter">STAMP</h1>
								<h1 class="mb-4"><span></span>스탬프는 위치기반 이벤트 <br>광고 서비스입니다.</h1>
								<h2 class="mb-4"><span></span></h2>
								<p class="mb-4">스탬프는 지도위의 핀포인트를 통해 나의 이벤트를 알릴 수 있습니다. 다른 스탬퍼들이 등록한 이벤트도 확인해보세요!</p>
								<!--  <h3 class="signature h1">A location-based event service</h3> -->
								<ul class="ftco-social mt-3">
		              <li class="ftco-animate"><a href="https://www.twitter.com"><span class="icon-twitter"></span></a></li>
		              <li class="ftco-animate"><a href="https://www.facebook.com"><span class="icon-facebook"></span></a></li>
		              <li class="ftco-animate"><a href="https://www.instagram.com"><span class="icon-instagram"></span></a></li>
		            </ul>
	            </div>
						</div>
					</div>
				</div>
				
				<div id="dialog" title="공지사항" style="background-color:light-blue">
  					<p>코로나19로 인해 등록된 축제 및<br>대규모 행사 스탬프들이 취소 혹은 변경될 수 있으니 업데이트를 확인바랍니다.<br><br>스탬프를 방문해 주셔서 감사합니다.</p>
				</div>
				
			</section>
			<section class="ftco-section instagram">
				<div class="container">
					<div class="row justify-content-center mb-2 pb-3">
	          <div class="col-md-7 heading-section heading-section-2 text-center ftco-animate">
	            <h2 class="mb-4">Follow us on Instagram</h2>
	          </div>
	        </div>  
					<div class="row no-gutters">
		        <div class="col-sm-12 col-md ftco-animate">
		          <a href="/resources/images/image-a.jpg" class="insta-img image-popup" style="background-image: url(../images/image-a.jpg);">
		            <div class="icon d-flex justify-content-center">
		              <span class="icon-instagram align-self-center"></span>
		            </div>
		          </a>
		        </div>
		        <div class="col-sm-12 col-md ftco-animate">
		          <a href="/resources/images/image-b.jpg" class="insta-img image-popup" style="background-image: url(../images/image-b.jpg);">
		            <div class="icon d-flex justify-content-center">
		              <span class="icon-instagram align-self-center"></span>
		            </div>
		          </a>
		        </div>
		        <div class="col-sm-12 col-md ftco-animate">
		          <a href="/resources/images/image-c.jpg" class="insta-img image-popup" style="background-image: url(../images/image-c.jpg);">
		            <div class="icon d-flex justify-content-center">
		              <span class="icon-instagram align-self-center"></span>
		            </div>
		          </a>
		        </div>
		        <div class="col-sm-12 col-md ftco-animate">
		          <a href="/resources/images/image-d.jpg" class="insta-img image-popup" style="background-image: url(../images/image-d.jpg);">
		            <div class="icon d-flex justify-content-center">
		              <span class="icon-instagram align-self-center"></span>
		            </div>
		          </a>
		        </div>
		        <div class="col-sm-12 col-md ftco-animate">
		          <a href="/resources/images/image-e.jpg" class="insta-img image-popup" style="background-image: url(../images/image-e.jpg);">
		            <div class="icon d-flex justify-content-center">
		              <span class="icon-instagram align-self-center"></span>
		            </div>
		          </a>
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
	<script src="<c:url value="js/jquery.animateNumber.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-datepicker.js"/>"></script>
	<script src="<c:url value="/js/jquery.timepicker.min.js"/>"></script>
	<script src="<c:url value="/js/scrollax.min.js"/>"></script>
	<script src="<c:url value="/js/main.js"/>"></script>
  
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
	
  <script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35ae3838473737ccaa839ae61a71fb9c&libraries=services,clusterer"></script>
    <script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35ae3838473737ccaa839ae61a71fb9c"></script>
  <script src="<c:url value="/js/main.js"/>"></script>
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#dialog" ).dialog();
  } );
  </script>
    
  </body>
</html>