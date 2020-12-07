<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>STAMP ALL</title>
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
    
	<style>
        #mapwrap{position:relative;overflow:hidden;}
        .category, .category *{margin:0;padding:0;color:#000;}   
        .category {position:absolute;overflow:hidden;top:10px;left:10px;width:200px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
        .category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
        .category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
        .category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png') no-repeat;} 
        .category .ico_all {background-position:-10px 0;}  
        .category .ico_coffee {background-position:-10px -144px;}  
        .category .ico_store {background-position:-10px -36px;}   
        .category .ico_carpark {background-position:-10px -72px;} 
    </style>    

    <script type="text/javascript"
    	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35ae3838473737ccaa839ae61a71fb9c&libraries=services,clusterer"></script>
    <script src="<c:url value="/js/stamping_temp.js"/>"></script>
     
</head>

<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="/"><span class="img" style="background-image: url(../images/author.jpg);"></span>STAMP</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="<c:url value="/stamp/stamping"/>">My Stamp</a></li>
					<li class="colorlib-active"><a href="/services">Services</a></li>
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
	            <h1 class="bread">My Services</h1>
	          </div>
	        </div>
				</div>
			</section>
			
			<section class="ftco-section">            <!-- content -->
	      <div class="container">
              
               <!-- ================ contact section start ================= -->
				<div class="d-none d-sm-block mb-5 pb-4">
                    <div id="mapwrap"> 
                        <!-- 지도가 표시될 div -->
                        <div id="map" style="width: 800px; height: 480px; position: relative; margin-left:155px;"> </div>
                        <!-- 지도 위에 표시될 마커 카테고리 -->
                        <div class="category" style="margin-left:155px;">
                            <ul>
                                <li id="allMenu" onclick="changeMarker('all')">
                                    <span class="ico_comm ico_all"></span>
                                    	전체
                                </li>
                                <li id="concertMenu" onclick="changeMarker('concert')">
                                    <span class="ico_comm ico_coffee"></span>
                                    	공연
                                </li>
                                <li id="festivalMenu" onclick="changeMarker('festival')">
                                    <span class="ico_comm ico_store"></span>
                                    	축제
                                </li>
                                <li id="promotionMenu" onclick="changeMarker('promotion')">
                                    <span class="ico_comm ico_carpark"></span>
                                    	프로모션
                                </li>
                            </ul>
                        </div>
                    </div>  
                </div>
                
            <div class="row">
                <div class="col-12" style="margin-left:100px;">
                <form action="<c:url value="/stamp/search" />" method="get">
                <div class="row">
					<div class="col-sm-4">
						<div class="form-group">
							<select class="form-control w-100" name="location">
								<option data-display="지역별" value="*">지역</option>
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
							<option data-display="카테고리" value="*">카테고리</option>
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
				<button type="submit" class="btn btn-primary py-3 px-5">STAMP 검색</button>
			</div>
			</form>
			</div>
                
                <div class="col-12" style="margin-left:175px;">
                    <h2 class="contact-title">STAMP LIST</h2>
                </div>
                
                <div class="col-lg-8 mb-5 mb-lg-0" style="margin-left:175px;">
                <c:forEach var="stamp" items="${stamp}" varStatus="status">
                    <div class="blog_left_sidebar">
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="/images/${ stamp.image }" alt="" style="max-height:900px;">
                                <a href="<c:url value="/stamp/${ stamp.stampno }"/>" class="blog_item_date">
                                    <p style="font-size:1.5em;"><fmt:formatDate pattern="yyyy-MM-dd" value="${ stamp.startdate }"/> ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${ stamp.enddate }"/></p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="<c:url value="/stamp/${ stamp.stampno }"/>">
                                    <h3>${ stamp.s_name }</h3>
                                </a>
                                <ul class="blog-info-link">
                                    <li><a href="<c:url value="/stamp/${ stamp.stampno }"/>"><i class="fa fa-user"></i>${ stamp.location }, ${ stamp.category }</a></li>
                                    <li><a href="<c:url value="/stamp/${ stamp.stampno }"/>"><i class="fa fa-comments"></i> 03 Comments</a></li>
                                </ul>
                            </div>
                        </article>
                    </div>
                    <hr><br>
          		</c:forEach>
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                            	<!-- 이전 페이지 -->
                                <li class="page-item">
                                    <a href="<c:url value="/stamp/index?pageNum=1" />" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left">&laquo</i>
                                    </a>
                                </li>
                                
                                <c:forEach var="i" begin="${ paging.start }" end="${ paging.end }" step="1">
                                	<li class="page-item" id="review-page-index-${i}"><a class="page-link" href="<c:url value="/stamp/index?pageNum=${i}" />">${ i }</a></li>
     							</c:forEach>
                                
                                <!-- 다음 페이지 -->
                                <li class="page-item">
                                    <a href="<c:url value="/stamp/index?pageNum=${paging.lastPageNum}" />" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right">&raquo</i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
          		</div>

               
            </div>
        </div>

    </div>
</section>
<!-- ================ contact section end ================= -->

<!-- Modal -->
<div class="modal fade custom_search_pop" id="exampleModalCenter" tabhome="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
  <div class="modal-content">
    <div class="serch_form">
        <input type="text" placeholder="Search" >
        <button type="submit">search</button>
    </div>
  </div>
</div>
</div>
          </div>    
        </section>
            
	
	    <footer class="ftco-footer ftco-bg-dark ftco-section" style="margin-left: 337px;">
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

	<Script>
		$.urlParam = function(name){
		    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		    if (results == null){
		       return null;
		    }
		    else{
		       return results[1] || 0;
		    }
		}
		var pageNum = $.urlParam('pageNum')
		if (pageNum == null) {
		    pageNum = 1;
		}
		$("#review-page-index-" + pageNum).addClass("active");
	</Script>
</body>
</html>