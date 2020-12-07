window.onload = function() {
	stamping_temp();
}

function stamping_temp() {
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
        mapOption = { 
            center: new kakao.maps.LatLng(37.520135, 127.093414), // 지도의 중심좌표 
            level: 10 // 지도의 확대 레벨 
        }; 

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
    // 커피숍 마커가 표시될 좌표 배열입니다
    var concert_positions = [
        {
            content:'<div>청계 광장 시즌마켓</div>',
            latlng: new kakao.maps.LatLng(37.569043, 126.982395)
        
        },
        {
            content:'<div>밤도깨비 야시장</div>',
            latlng: new kakao.maps.LatLng(37.530676, 126.928761)
        
        }         
    ];

    // 편의점 마커가 표시될 좌표 배열입니다
    var festival_positions = [
        {
            content:'<div>홍대 버스킹</div>',
            latlng: new kakao.maps.LatLng(37.555374, 126.9235777)
        
        },
        {
            content:'<div>대학로 소극장</div>',
            latlng: new kakao.maps.LatLng(37.582613, 127.003320)
        
        }
    ];

    // 주차장 마커가 표시될 좌표 배열입니다
    var promotion_positions = [
        {
            content:'<div>전포 카페거리</div>',
            latlng: new kakao.maps.LatLng(35.155426, 129.062555)
        
        },
        {
            content:'<div>길거리 캐리커쳐</div>',
            latlng: new kakao.maps.LatLng(37.552016, 126.921399)   
        
        }                 
    ];  
    
    var all = document.getElementById("allMenu");
    all.addEventListener('click', function(){
        changeMarker('all');
    });

    var concert = document.getElementById("concertMenu");
    concert.addEventListener('click', function(){
        changeMarker('concert');
    });

    var festival = document.getElementById("festivalMenu");
    festival.addEventListener('click', function(){
        changeMarker('fetival');
    });

    var promotion = document.getElementById("promotionMenu");
    promotion.addEventListener('click', function(){
        changeMarker('promotion');
    });

    var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
        concert_markers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
        festival_markers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
        promotion_markers = []; // 주차장 마커 객체를 가지고 있을 배열입니다

        
    createConcertMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
    createFestivalMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다
    createPromotionMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다

    changeMarker('all'); // 지도에 커피숍 마커가 보이도록 설정합니다    


    // 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
    function createMarkerImage(src, size, options) {
        var markerImage = new kakao.maps.MarkerImage(src, size, options);
        return markerImage;            
    }
    
    // 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
    function createMarker(position, image) {
        var marker = new kakao.maps.Marker({
            position: position,
            image: image
        });
        
        return marker;  
    }   
    
    // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
    function createConcertMarkers() {
        
        for (var i = 0; i < concert_positions.length; i++) {  
            
            var imageSize = new kakao.maps.Size(22, 26),
                imageOptions = {  
                    spriteOrigin: new kakao.maps.Point(10, 0),    
                    spriteSize: new kakao.maps.Size(36, 98)  
                };     
            
            // 마커이미지와 마커를 생성합니다
            var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
                marker = createMarker(concert_positions[i].latlng, markerImage);  
            
            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new kakao.maps.InfoWindow({
                content: concert_positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

            // 생성된 마커를 커피숍 마커 배열에 추가합니다
            concert_markers.push(marker);
        }     
    }

    // 커피숍 마커들의 지도 표시 여부를 설정하는 함수입니다
    function setConcertMarkers(map) {        
        for (var i = 0; i < concert_markers.length; i++) {  
            concert_markers[i].setMap(map);
        }        
    }

    // 편의점 마커를 생성하고 편의점 마커 배열에 추가하는 함수입니다
    function createFestivalMarkers() {
        for (var i = 0; i < festival_positions.length; i++) {
            
            var imageSize = new kakao.maps.Size(22, 26),
                imageOptions = {   
                    spriteOrigin: new kakao.maps.Point(10, 36),    
                    spriteSize: new kakao.maps.Size(36, 98)  
                };       
        
            // 마커이미지와 마커를 생성합니다
            var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
                marker = createMarker(festival_positions[i].latlng, markerImage);  

            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new kakao.maps.InfoWindow({
                content: festival_positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

            // 생성된 마커를 편의점 마커 배열에 추가합니다
            festival_markers.push(marker);    
        }        
    }

    // 편의점 마커들의 지도 표시 여부를 설정하는 함수입니다
    function setFestivalMarkers(map) {        
        for (var i = 0; i < festival_markers.length; i++) {  
            festival_markers[i].setMap(map);
        }        
    }

    // 주차장 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
    function createPromotionMarkers() {
        for (var i = 0; i < promotion_positions.length; i++) {
            
            var imageSize = new kakao.maps.Size(22, 26),
                imageOptions = {   
                    spriteOrigin: new kakao.maps.Point(10, 72),    
                    spriteSize: new kakao.maps.Size(36, 98)  
                };       
        
            // 마커이미지와 마커를 생성합니다
            var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
                marker = createMarker(promotion_positions[i].latlng, markerImage);  

            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new kakao.maps.InfoWindow({
                content: festival_positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
            // 이벤트 리스너로는 클로저를 만들어 등록합니다 
            // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
            kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

            // 생성된 마커를 주차장 마커 배열에 추가합니다
            promotion_markers.push(marker);        
        }                
    }

    // 주차장 마커들의 지도 표시 여부를 설정하는 함수입니다
    function setPromotionMarkers(map) {        
        for (var i = 0; i < promotion_markers.length; i++) {  
            promotion_markers[i].setMap(map);
        }        
    }

    // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
    function makeOverListener(map, marker, infowindow) {
        return function() {
            infowindow.open(map, marker);
        };
    }

    // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
    function makeOutListener(infowindow) {
        return function() {
            infowindow.close();
        };
    }

    // 카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
    function changeMarker(type){
        var allMenu = document.getElementById('allMenu');
        var concertMenu = document.getElementById('concertMenu');
        var fetivalMenu = document.getElementById('festivalMenu');
        var promotionMenu = document.getElementById('promotionMenu');
        
        if (type === 'all') {
            concertMenu.className = 'menu_selected';
            festivalMenu.className = 'menu_selected';
            promotionMenu.className = 'menu_selected';

            setConcertMarkers(map);
            setFestivalMarkers(map);
            setPromotionMarkers(map);

        } else if (type === 'concert') {  // 커피숍 카테고리가 클릭됐을 때
        
            // 커피숍 카테고리를 선택된 스타일로 변경하고
            concertMenu.className = 'menu_selected';
            
            // 편의점과 주차장 카테고리는 선택되지 않은 스타일로 바꿉니다
            festivalMenu.className = '';
            promotionMenu.className = '';
            
            // 커피숍 마커들만 지도에 표시하도록 설정합니다
            setConcertMarkers(map);
            setFestivalMarkers(null);
            setPromotionMarkers(null);
            
        } else if (type === 'fetival') { // 편의점 카테고리가 클릭됐을 때
        
            // 편의점 카테고리를 선택된 스타일로 변경하고
            concertMenu.className = '';
            festivalMenu.className = 'menu_selected';
            promotionMenu.className = '';
            
            // 편의점 마커들만 지도에 표시하도록 설정합니다
            setConcertMarkers(null);
            setFestivalMarkers(map);
            setPromotionMarkers(null);
            
        } else if (type === 'promotion') { // 주차장 카테고리가 클릭됐을 때
        
            // 주차장 카테고리를 선택된 스타일로 변경하고
            concertMenu.className = '';
            fetivalMenu.className = '';
            promotionMenu.className = 'menu_selected';
            
            // 주차장 마커들만 지도에 표시하도록 설정합니다
            setConcertMarkers(null);
            setFestivalMarkers(null);
            setPromotionMarkers(map);  
        }    
    } 
}
