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
	
// 		$(function() {
// 			$( "button" ).on("click" , function() {
// 				alert( $('#pop').text().trim() );
// 			});
// 	  	});
  	
	
		 $(function() {
			$( "button:contains('����')" ).on("click" , function() {
				fncAddApply();
			});
			
// 			$( "button:contains('Ȯ��')" ).on("click" , function() {
// 				alert(  $('#inputTest').val()  );
// 			});
			
			$( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
				self.location = "../index.jsp"
			});
		});	
		
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
// 				$("form")[0].reset();
				alert("�� ��� ��� -> �������")
			});
		});	
	
		
		function fncAddApply() {
			alert("��û�Ϸ� dialog")
			$("form").attr("method" , "POST").attr("action" , "/adoptreview/updateAdoptReview").submit();
		}
		
		
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
		<input type="hidden" name="postNo" value="${ board.postNo }" >
		
		  




		  <div class="form-group">
		    <label for="postTitle" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" value="${board.postTitle }" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="postContent" class="col-sm-offset-1 col-sm-3 control-label">�۳���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postContent" name="postContent" value="${board.postContent}">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="route" class="col-sm-offset-1 col-sm-3 control-label">��Ʈ</label>
		    <div class="col-sm-4">
		    <div id="map" style="width: 600px; height: 400px;">${board.route }</div>
		      <input type="hidden" class="form-control" id="route" name="route" value="${board.route }">
		      <span id="pop"></span>
		      <p>��θ� ������ ���, ������ ��Ŭ���ϰ� �ٽ� �����ϼ���.</p>
		    </div>
		    <p></p>
		  </div>
		  
		  &nbsp;
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
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
	      var route = $('#route').val();
	      var routeTest = [];
	      var routeMark = [];
          var infowindowF;
          var infowindowL;
	      
	      //��Ŀ�� �ϳ��� ������
	      if (route.indexOf("#") != -1){
	       	  var routeArray = route.split("#");
	       	  
	       	  for ( i=0; i<routeArray.length-1; i++){
	       		routeTest[i] = routeArray[i].substring( routeArray[i].indexOf("(")+1, routeArray[i].indexOf(",") )+","+ (routeArray[i].substring( routeArray[i].indexOf(",")+1, routeArray[i].indexOf(")") )).trim() ;
	       		routeMark[i] = "marker"+i.toString();
	       	  }   	  
	      }
	      
	      function initMap() {
		        map = new google.maps.Map(document.getElementById('map'), {
			        zoom: 13,
			        center: { lat: parseFloat(routeTest[0].substring( 0, routeTest[0].indexOf(",") )   ) ,
			    			lng: parseFloat(routeTest[0].substring( routeTest[0].indexOf(",")+1, routeTest[0].length )) }
				});
	
		        poly = new google.maps.Polyline({
			        strokeColor: '#000000',
			        strokeOpacity: 0.5,
			        strokeWeight: 5,
			        map: map
		        });
		        
		        var aaa = "";
		        
		        for ( i=0; i<routeTest.length; i++){
			    	
			 	    var path = poly.getPath();
	
		 	        path.push(new google.maps.LatLng(    parseFloat(routeTest[i].substring( 0, routeTest[i].indexOf(",") )),
		 	        								parseFloat(routeTest[i].substring( routeTest[i].indexOf(",")+1, routeTest[i].length ))));

				    marker= routeMark[i];
				
				    marker = new google.maps.Marker({
				        position: {lat: parseFloat(routeTest[i].substring( 0, routeTest[i].indexOf(",") )), 
							lng: parseFloat(routeTest[i].substring( routeTest[i].indexOf(",")+1, routeTest[i].length )) },
		    			title: '#' + path.getLength(),
		    			map: map
				    });
				    
				    markers.push(marker);
				    
			    }
	
		        infowindowF = new google.maps.InfoWindow();
		        infowindowL = new google.maps.InfoWindow();
		        infowindowF.setContent("���");
	 	        infowindowF.open(map, markers[0]);
	 	        infowindowL.setContent("����");
	 	        infowindowL.open(map, markers[markers.length-1]);
	
		        map.addListener('click', addLatLng);
		        map.addListener('rightclick', function() {
		        	for (var i = markers.length-1; i >=0; i--) {
		        		markers[i].setMap(null);
		        		markers.splice(i, 1 );
		        		poly.getPath().removeAt(i);
		        		$( "#route ").val( '' );
		            }
	       	    });
	      }

	     
	      function addLatLng(event) {
	    	  
		        if (markers.length <5){
		        	 
		        	var path = poly.getPath();
		 	        path.push(event.latLng);
		 	        
		       		var marker = new google.maps.Marker({
				        position: event.latLng,
				        title: '#' + path.getLength(),
				        map: map
		       		});
		       		
		       		markers.push(marker);
		        	
		        	$( "#route ").val(  $( "#route ").val()+ event.latLng.toString()+"#"  );
		        	
		        	// pop up
		        	infowindowF.setContent("���");
		 	        infowindowF.open(map, markers[0]);
		 	        
		 	        if(markers.length > 1){
			        	infowindowL.setContent("����");
			 	        infowindowL.open(map, marker);
		 	        }
		 	        
		        }else{
			        alert("5������ ���� ������ dialog �߰�");
			    }
		        
		        
		        if (marker != undefined){
		        	
		            marker.addListener('rightclick', function() {
		            	
						for (var i = 0; i < markers.length; i++) {
					    	if (markers[i] === marker) {
								markers[i].setMap(null);
								markers.splice(i, 1);
				
								poly.getPath().removeAt(i);
					    	}
						}
						
						var test = "";
						
				    	for (var i = 0; i < markers.length; i++) {
				    		test += markers[i].position+"#";
				    		
				    		//pop up
				        	infowindowF.setContent("���");
				 	        infowindowF.open(map, markers[0]);
				 	        
				 	        infowindowL.setContent("����");
				 	        infowindowL.open(map, markers[markers.length-1]);
					 	}
				    	
				    	$( "#route ").val(  test  );
					 	
		            });
		        }
		        
	      }
	      
 	 </script>
  
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
  
  
</body>

</html>