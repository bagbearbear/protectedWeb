<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
<title> ��� �׽�Ʈ</title>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
        body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
        #map {
	    	height: 100%;
	    }
	    html, body {
		    height: 100%;
		    margin: 0;
		    padding: 0;
	    }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	
		$(function() {
			$( "button:contains('����')" ).on("click" , function() {
				self.location = "/adoptReview/updateAdoptReview?postNo=${board.postNo}"
			});
			
			$( "button:contains('����')" ).on("click" , function() {
				alert("�����Ϸ� dialog")
				self.location = "/adoptReview/delAdoptReview?postNo=${board.postNo}"
			});
			
			$( "button:contains('���')" ).on("click" , function() {
				$("form").attr("method" , "POST").attr("action" , "/adoptReivew/listAdoptReview").submit();
			});
			
			$( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
				self.location = "../index.jsp"
			});
		});	
		
	</script>		

</head>

<body>




	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
		<h1 class="bg-primary text-center">����׽�Ʈ</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		<input type="hidden" name="id" value="user03" >
		<input type="hidden" name="nickName" value="�ȳ�" >
		<input type="hidden" name="boardCode" value="AR" >
		
		  

		  <div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�۹�ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${board.postNo}</div>
		</div>
		
		<hr/>

		  <div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${board.postTitle}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�۳���</strong></div>
			<div class="col-xs-8 col-md-4">${board.postContent}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>���</strong></div>
	  		<div id="map" style="width: 600px; height: 400px;"></div>
<%-- 			<div class="col-xs-8 col-md-4">${board.route}</div> --%>
			<input type="hidden" value="${board.route}">
		</div>
		
		<hr/>
		
		  
		  &nbsp;
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >����</button>
		      <button type="button" class="btn btn-primary"  >����</button>
			  <a class="btn btn-primary btn" href="#" role="button">���</a>
			</div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  	<script>
	  	
	  	
  	 var poly;
  	 var map;
     var marker;
     var markers = [];
     var route = "${board.route}";
     var routeTest = [];
     var routeMark = [];
     var infowindowF;
     var infowindowL;
     
     
     if (route.indexOf("#") != -1){
   	  var routeArray = route.split("#");
   	  
   	  for ( i=0; i<routeArray.length-1; i++){
   		routeTest[i] = routeArray[i].substring( routeArray[i].indexOf("(")+1, routeArray[i].indexOf(",") )+","+ (routeArray[i].substring( routeArray[i].indexOf(",")+1, routeArray[i].indexOf(")") )).trim() ;
   		routeMark[i] = "marker"+i.toString();
   	  }   	  
     }
     
     
     
     function initMap() {
	    map = new google.maps.Map(document.getElementById('map'), {
			    zoom: 16,
			    center: { lat: parseFloat(routeTest[0].substring( 0, routeTest[0].indexOf(",") )   ) ,
			    		lng: parseFloat(routeTest[0].substring( routeTest[0].indexOf(",")+1, routeTest[0].length )) }
		});
	    
	    poly = new google.maps.Polyline({
	        strokeColor: '#000000',
	        strokeOpacity: 0.5,
	        strokeWeight: 5,
	        map: map
        });
	    
	    infowindowF = new google.maps.InfoWindow();
        infowindowL = new google.maps.InfoWindow();
	    
	    var aaa = "";
	    
	    for ( i=0; i<routeTest.length; i++){
	    	
	 	    var path = poly.getPath();

 	        path.push(new google.maps.LatLng(    parseFloat(routeTest[i].substring( 0, routeTest[i].indexOf(",") )),
 	        								parseFloat(routeTest[i].substring( routeTest[i].indexOf(",")+1, routeTest[i].length ))));
//  	        console.log("Ȯ�� : "+centerLocaArea);
		    marker= routeMark[i];
		
		    marker = new google.maps.Marker({
		        position: {lat: parseFloat(routeTest[i].substring( 0, routeTest[i].indexOf(",") )), 
					lng: parseFloat(routeTest[i].substring( routeTest[i].indexOf(",")+1, routeTest[i].length )) },
    			title: '#' + path.getLength(),
    			map: map
		    });
		    
		    markers.push(marker);
	    }
	    
		// pop up
	    infowindowF.setContent("���");
        infowindowF.open(map, markers[0]);
        
        infowindowL.setContent("����");
        infowindowL.open(map, markers[markers.length-1]);
     }
	      
 	 </script>
  
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
  
  
</body>

</html>