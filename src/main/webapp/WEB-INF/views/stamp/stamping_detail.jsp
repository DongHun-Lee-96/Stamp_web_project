<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>STAMPING DETAIL</title>
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
	
	<script type="text/javascript"
    	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35ae3838473737ccaa839ae61a71fb9c&libraries=services,clusterer"></script>

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

</head>

<body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary"
			class="js-fullheight text-center">
			<h1 id="colorlib-logo">
				<a href="/"><span class="img"
					style="background-image: url(../images/author.jpg);"></span>STAMP</a>
			</h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="<c:url value="/stamp/stamping"/>">My Stamp</a></li>
					<li class="colorlib-active"><a href="/services">My Services</a></li>
					<li><a href="aboutus">About Us</a></li>
					<li><a href="/customerservice">Customer Service</a></li>
					<li><a href="/login">Login</a></li>
				</ul>
			</nav>

			<div class="colorlib-footer">
				<h3>Newsletter</h3>
				<div class="d-flex justify-content-center">
					<form action="#" class="colorlib-subscribe-form">
						<div class="form-group d-flex">
							<div class="icon">
								<span class="icon-paper-plane"></span>
							</div>
							<input type="text" class="form-control"
								placeholder="Enter Email Address">
						</div>
					</form>
				</div>
			</div>
		</aside>
		<!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div
						class="row no-gutters slider-text justify-content-center align-items-center">
						<div class="col-md-8 ftco-animate">
							<p class="breadcrumbs">
								<span class="mr-2"><a href="home">Home</a></span> <span>Services</span>
							</p>
							<h1 class="bread">My Services</h1>
						</div>
					</div>
				</div>
			</section>

			<section class="ftco-section">
				<!-- content-->
				<div class="container">

					<!-- ================ contact section start ================= -->
					<div class="d-none d-sm-block mb-5 pb-4">
						<div id="map" style="width: 100%; height: 350px;"></div>
						<!-- <div style="height: 480px; position: relative;overflow: hidden;" id = "map"></div> -->


						 <script type="text/javascript"
							src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e8f2a046346b72fb8576281c02364838"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도의 중심좌표
							mapOption = {
								center : new kakao.maps.LatLng(36.304560, 126.519828), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							var map = new kakao.maps.Map(mapContainer,
									mapOption); // 지도를 생성합니다

							// 지도에 마커를 표시합니다 
							var marker = new kakao.maps.Marker({
								map : map,
								position : new kakao.maps.LatLng(36.304560, 126.519828)
							});

							// 커스텀 오버레이에 표시할 컨텐츠 입니다
							// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
							// 별도의 이벤트 메소드를 제공하지 않습니다 
							var content = '<div class="wrap">'
									+ '    <div class="info">'
									+ '        <div class="title">'
									+ '            07/10 KFQ 워크숍'
									+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
									+ '        </div>'
									+ '        <div class="body">'
									+ '            <div class="img">'
									+ '                <img src="http://kcm.kfq.or.kr/images/main/main_banner02.jpg" width="73" height="70">'
									+ '           </div>'
									+ '            <div class="desc">'
									+ '                <div class="ellipsis">충청남도 보령시 대천5동 해수욕장3길 11-10<br>충남 보령</div>'
									+ '                <div><a href="#" target="_blank" class="link">홈페이지</a></div>'
									+ '            </div>' + '        </div>'
									+ '    </div>' + '</div>';

							// 마커 위에 커스텀오버레이를 표시합니다
							// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
							var overlay = new kakao.maps.CustomOverlay({
								content : content,
								map : map,
								position : marker.getPosition()
							});

							// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
							kakao.maps.event.addListener(marker, 'click',
									function() {
										overlay.setMap(map);
									});

							// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
							function closeOverlay() {
								overlay.setMap(null);
							}
						</script>

					</div>
				</div>
				
				<div class="row">
					<div class="col-12">
					<div class="blog_details">
						<h2 class="contact-title">${ stamp.s_name }</h2>
                        <h5>주소 : ${ stamp.detailaddr }</h5>
                    </div>
                    <div class="story_info">
                        <div class="row">
                        	<div class="col-lg-12">
                        		<div class="col-lg-2"> </div>
                                <div class="col-lg-10">
									${ stamp.detail }
                                </div><br>
                            </div>
						</div>
					</div>
						<a href="<c:url value="/stamp/edit/${ stamp.stampno }"/>" class="btn btn-info">수정</a>
						<a href="<c:url value="/stamp/delete/${ stamp.stampno }"/>" class="btn btn-info">삭제</a>
					</div>
				</div>
			</section>	
		</div>
	</div>

	<!-- ================ contact section end ================= -->

	<!-- Modal -->
	<div class="modal fade custom_search_pop" id="exampleModalCenter"
		tabhome="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="serch_form">
					<input type="text" placeholder="Search">
					<button type="submit">search</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	</section>


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
	</div>
	<!-- END COLORLIB-MAIN -->
	</div>
	<!-- END COLORLIB-PAGE -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

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

  
    <script src ="changeToMap.js"></script>
	<script src="<c:url value="/js/main.js"/>"></script>
     <!-- JS here -->
     <script src="<c:url value="/js/vendor/modernizr-3.5.0.min.js"/>"></script>
     <script src="<c:url value="/js/vendor/jquery-1.12.4.min.js"/>"></script>
     <script src="<c:url value="/js/popper.min.js"/>"></script>
     <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
     <script src="<c:url value="/js/owl.carousel.min.js"/>"></script>
     <script src="<c:url value="/js/isotope.pkgd.min.js"/>"></script>
     <script src="<c:url value="/js/ajax-form.js"/>"></script>
     <script src="<c:url value="/js/waypoints.min.js"/>"></script>
     <script src="<c:url value="/js/jquery.counterup.min.js"/>"></script>
     <script src="<c:url value="/js/imagesloaded.pkgd.min.js"/>"></script>
     <script src="<c:url value="/js/scrollIt.js"/>"></script>
     <script src="<c:url value="/js/jquery.scrollUp.min.js"/>"></script>
     <script src="<c:url value="/js/wow.min.js"/>"></script>
     <script src="<c:url value="/js/nice-select.min.js"/>"></script>
     <script src="<c:url value="/js/jquery.slicknav.min.js"/>"></script>
     <script src="<c:url value="/js/jquery.magnific-popup.min.js"/>"></script>
     <script src="<c:url value="/js/plugins.js"/>"></script>
     <script src="<c:url value="/js/gijgo.min.js"/>"></script>
 
     <!--contact js-->
     <script src="<c:url value="/js/contact.js"/>"></script>
     <script src="<c:url value="/js/jquery.ajaxchimp.min.js"/>"></script>
     <script src="<c:url value="/js/jquery.form.js"/>"></script>
     <script src="<c:url value="/js/jquery.validate.min.js"/>"></script>
     <script src="<c:url value="/js/mail-script.js"/>"></script>
     <script src="<c:url value="/js/main.js"/>"></script>

	<script>
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
	</script>

</body>
</html>