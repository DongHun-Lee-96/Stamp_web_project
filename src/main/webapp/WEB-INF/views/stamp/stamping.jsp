<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>STAMPING</title>
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
    <script src="/js/stamping2.js"></script>		
</head>


<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="/"><span class="img" style="background-image: url(../images/author.jpg);"></span>STAMP</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="/">Home</a></li>
					<li class="colorlib-active"><a href="<c:url value="#"/>">My Stamp</a></li>
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
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div class="row no-gutters slider-text justify-content-center align-items-center">
	          			<div class="col-md-8 ftco-animate">
	            			<p class="breadcrumbs"><span class="mr-2"><a href="/">Home</a></span> <span>STAMPING</span></p>
	            			<h1 class="bread">STAMPING</h1>
	          			</div>
	        		</div>
				</div>
			</section>
			
			<section class="ftco-section-3">
				<div class="photograhy">
					<div class="row">
							<form name="stamping" action="/stamp/new" method="post" enctype="multipart/form-data">
						<div class="container">
							<div class="col-12 ftco-animate" ><br>
								<h1 style="font-weight: 700; margin-left:90px;">STAMP 등록하기</h1>
							</div>
						
							<div class="d-none d-sm-block mb-5 pb-4">
								<div style="height: 480px; width:930px; margin-left:90px; position: relative; overflow: hidden;" id="map"></div>  
							</div> 
						</div>
						<div class="col-lg-10" style="margin:0 auto;">
								<div class="row">
							<div class="col-sm-6 form-group">
                              <div class="form-group">
                                 <input class="form-control valid" name="s_name" id="s_name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '제목'" placeholder="제목">
                              </div>
                           </div>
                           <div class="col-sm-3 form-group ">
                              <div class="form-group">                           
                                 <input type="text" id="datepicker" name="startdate" class="form-control w-100" placeholder="시작하는 날">
                              </div>
                           </div>
                           <div class="col-sm-3 form-group ">
                              <div class="form-group">                           
                                 <input type="text" id="datepicker2" name="enddate" class="form-control w-100" placeholder="끝나는 날">
                              </div>
                           </div>
                           <div class="col-sm-4">
                              <div class="form-group">
                                 <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = '시간을 알려주세요! ex.10-13'" placeholder="시간을 알려주세요! ex.10-13">
                              </div>
                           </div>
							<div class="col-sm-4">
								<div class="form-group">
									<select class="form-control w-100" name="location">
										<option data-display="지역별">지역</option>
										<option disabled="disabled">---------- 선택하세요 ----------</option>
										<option value="서울">서울</option>
										<option value="경기">경기</option>
										<option value="인천">인천</option>
										<option value="대전">대전</option>
										<option value="대구">대구</option>
										<option value="부산">부산</option>
										<option value="울산">울산</option>
										<option value="광주">광주</option>
										<option value="제주">제주</option>
										<option value="강원">강원</option>
										<option value="충청">충청</option>
										<option value="전라">전라</option>
										<option value="경상">경상</option>
									</select>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="form-group">
									<select class="form-control w-100" name="category">
										<option data-display="카테고리">카테고리</option>
										<option disabled="disabled">---------- 선택하세요 ----------</option>
										<option value="공연">공연</option>
										<option value="음식">음식</option>
										<option value="프로모션">프로모션</option>
										<option value="스포츠">스포츠</option>
										<option value="축제">축제</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</div>
							<div class="col-12 form-group ">
                              	<div class="form-group">                           
                               		<input type="text" id="detailaddr" name="detailaddr" class="form-control w-100" placeholder="상세주소" onclick="pre();" value=""/>
                            	</div>
                           	</div>
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="detail" id="detail" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = '상세내용'" placeholder=" 상세내용"></textarea>
								</div>
							</div>
							<div class="col-sm-10">
							    <div class="form-group form-group-lg">
									<input name="file" class="form-control-file w-100" type="file">
							    </div>
							</div>
								<button type="submit" class="btn btn-primary py-3 px-5">STAMP 등록하기</button>
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
	<script src="<c:url value="js/jquery.animateNumber.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap-datepicker.js"/>"></script>
	<script src="<c:url value="/js/jquery.timepicker.min.js"/>"></script>
	<script src="<c:url value="/js/scrollax.min.js"/>"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="<c:url value="/js/main.js"/>"></script>
  
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>										

	<script>
            $('#datepicker').datepicker({
                iconsLibrary: 'fontawesome',
                icons: {
                rightIcon: '<span class="fa fa-caret-down"></span>'
             }
            });
            $('#datepicker2').datepicker({
                iconsLibrary: 'fontawesome',
                icons: {
                rightIcon: '<span class="fa fa-caret-down"></span>'
             }
    
            });
            
	</script>

   <script>
     $( function() {
       $( "#datepicker" ).datepicker();
     } );
  </script>

</body>
</html>