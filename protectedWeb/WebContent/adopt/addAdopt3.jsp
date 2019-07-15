<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
<title>Add Adopt</title>
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
        
	/*   ���� ��������   ����   */
      #map {
        height: 100%;
      }
      #mapArea {
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
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncAddUser();
			});
			
			$( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
				self.location = "../index.jsp"
			});
			
			$( "button:contains('dd')" ).on("click" , function() {
				alert($('#pop').text());
			});
		});	
		
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
// 				$("form")[0].reset();
				alert("�� ��� ��� -> �������")
			});
		});	
	
		
		function fncAddUser() {
			$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").submit();
		}
		

	</script>		

</head>

<body>




	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
		<h1 class="bg-primary text-center">
			<c:if test="${param.boardCode eq 'AD' }">
	  			�о�� ���
	  		</c:if>
		    <c:if test="${param.boardCode eq 'MS' }">
	  			������ ���
	  		</c:if>
		
		</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		<input type="hidden" name="boardCode" value=" ${ param.boardCode.trim() }" >
		<input type="hidden" name="id" value="user03" >
		<input type="hidden" name="statusCode" value="1" >
		
		  <div class="form-group" >
		    <label for="postTitle" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" placeholder="������"  >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="postContent" class="col-sm-offset-1 col-sm-3 control-label">�۳���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postContent" name="postContent" placeholder="�۳���">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-offset-1 col-sm-3 control-label">����ó</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="phone" name="phone" value="01121234567" placeholder="����ó">
		     <span id="pwdTest" > </span>
		    </div>
		  </div>
		  
		  <c:if test="${param.boardCode eq 'AD' }">
			  <div class="form-group">
			    <label for="adoptArea" class="col-sm-offset-1 col-sm-3 control-label">�о簡������</label>
			    <div class="col-sm-4">
			    <div id="mapArea" style="width: 600px; height: 300px;"  align="center"></div>
			    <span id="pop"></span>
			      <input type="text" class="form-control" id="adoptArea" name="adoptArea" placeholder="3������ ���ð����մϴ�.">
			      <button >dd</button>
			    </div>
			  </div>
		  </c:if>
		
<!-- 		  <br/><br/><br/><br/><br/> -->
		  
		  <div class="form-group">
		    <label for="location" class="col-sm-offset-1 col-sm-3 control-label">
				<c:if test="${param.boardCode eq 'AD' }">
		  			�߰���ġ
		  		</c:if>
			    <c:if test="${param.boardCode eq 'MS' }">
		  			������ġ
		  		</c:if>
			</label>
		    <div class="col-sm-6">
		    
		<!-- 	������  ��ġ ��Ŀ ���   ������	  -->
		      <div id="map" style="width: 600px; height: 300px;"  align="center"></div>
			  <p>���콺�� ��ġ�� �����ϼ���. ��Ŭ���� ��Ŀ�� ������ϴ�.</p>
		      <input type="hidden" class="form-control" id="location" name="location" placeholder="��ġ">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogBreed" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogBreed" name="dogBreed" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogWeight" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="number" class="form-control" id="dogWeight" name="dogWeight" step="any"  >
		    </div>
		  </div>
	  
		  <div class="form-group">
		    <label for="dogSize" class="col-sm-offset-1 col-sm-3 control-label">ũ��</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="dogSize" id="dogSize">
				  	<option value="������" >������</option>
					<option value="������" >������</option>
					<option value="������" >������</option>
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogGender" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="dogGender" id="dogGender">
				  	<option value="����" >����</option>
					<option value="����" >����</option>
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPay" class="col-sm-offset-1 col-sm-3 control-label">���</label>
		    <div class="col-sm-4">
		      <input type="number" class="form-control" id="dogPay" name="dogPay" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogStatus" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogStatus" name="dogStatus" placeholder="������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogChar" class="col-sm-offset-1 col-sm-3 control-label">�ܸ�Ư¡</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogChar" name="dogChar" placeholder="�ܸ�Ư¡">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPersonality" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogPersonality" name="dogPersonality" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogDate" class="col-sm-offset-1 col-sm-3 control-label">
			    <c:if test="${param.boardCode eq 'AD' }">
		  			�߰�����
		  		</c:if>
			    <c:if test="${param.boardCode eq 'MS' }">
		  			��������
		  		</c:if>
		    </label>
		    <div class="col-sm-4">
		      <input type="date" class="form-control" id="dogDate" name="dogDate" placeholder="�߽߰�������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >�� &nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
			</div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
	 
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>

      var map;
      var mapArea;
      var markers = [];
      var markersArea = [];
      
      function initMap() {
	        mapArea = new google.maps.Map(document.getElementById('mapArea'), {
		    	zoom: 13,
		    	center: {lat: 37.564, lng: 127.0017}
	        });
	
	        mapArea.addListener('click', function(event) {
	        	addMarker(event.latLng, "aaa");
	        });
	  ///////////////////////////////////////////////////////////////////////////
	        map = new google.maps.Map(document.getElementById('map'), {
	        	zoom: 13,
	        	center: {lat: 37.564, lng: 127.0017}
	        });
	
	        map.addListener('click', function(event) {
	        	addMarker(event.latLng, "a");
	        });
      }
      
      
      var markerArea;
      var marker;
      var loca;
      var str = "";
/////////////////////////////////////////////////////////////////////////////////////////////
      function addMarker(location, str) {
    	  
    	  if ( str == "aaa"){
	    		 if (markersArea.length <3){
	  		        var markerArea = new google.maps.Marker({
	  			        position: location,
	  			        map: mapArea
	  		        });
	  		        
	  		     	markersArea.push(markerArea);
	  		   		 
	  		   		if(markersArea.length >0){
	  			   		 var markTest="";
	  			   		 for (var i = 0; i < markersArea.length; i++) {
// 	  			   			markTest += markersArea[i].position+"#" ;
	  			   			
	  			   			
	  			   	// �������ڵ� //
	  		    	        var localat = parseFloat(  markersArea[i].position.toString().substring( markersArea[i].position.toString().indexOf("(")+1 ,markersArea[i].position.toString().indexOf(",") )  );
	  				 	    var localng = parseFloat(  markersArea[i].position.toString().substring( markersArea[i].position.toString().indexOf(",")+1, markersArea[i].position.toString().indexOf(")") )  );
	  		    	        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
	  		    	            success: function(data){
	  		//    	                 alert(JSON.stringify(data));
	  		//    	                 alert(data.results[0].formatted_address);
	  		//    	                 $('p').text(JSON.stringify(data));
	  		
	  		    	               markTest+= data.results[0].formatted_address.substring(5, data.results[0].formatted_address.length)+"#";
// 	  		    	             alert(markTest);
	  		    	             $("#pop").text(markTest);
	  		    	            }
	  		    	 		});
	  				 	 }
// 	  			   		 alert(markTest);
// 	  		       		 $("#pop").text(markTest);
	  		   		}
	
	  	        }else{
	  	        	alert("3������ ���� ������");
	  	        }
	    		 ////////////////////////////////////////////////
	  	        if (markerArea != undefined){
	  	        	markerArea.addListener('rightclick', function() {
// 	  	        		$("#pop").text('����');



	  					for (var i = 0; i < markersArea.length; i++) {
	  				       if (markersArea[i] === markerArea) {
			  				   markersArea[i].setMap(null);
			  				   markersArea.splice(i, 1 );
	  				       }
	  			 	  	} 
	  					var markTest="";
	  					for (var i = 0; i < markersArea.length; i++) {
	  				       
	  				       
	  				 		 // �������ڵ� //
	  		    	        var localat = parseFloat(  markersArea[i].position.substring( markersArea[i].position.indexOf("(")+1 ,markersArea[i].position.indexOf(",") )  );
	  				 	    var localng = parseFloat(  markersArea[i].position.substring( markersArea[i].position.indexOf(",")+1, markersArea[i].position.indexOf(")") )  );
	  		    	        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
	  		    	            success: function(data){
	  		//    	                 alert(JSON.stringify(data));
	  		//    	                 alert(data.results[0].formatted_address);
	  		//    	                 $('p').text(JSON.stringify(data));
	  		    	               markTest+= data.results[0].formatted_address.substring(5, data.results[0].formatted_address.length);
	  		    	             $("#pop").text(markTest);
	  		    	            }
	  		    	 		});
	  	    	        
// 	  		    	      markTest += markersArea[i].position;
	  			 	  	}// $("#pop").text(markTest);
	  			 	  	
	  	            });
	  	        }
	    	        
		  	      	
	    	        
    	  }else if( str == "a"){
		    	if (marker != undefined){
		    		deleteMarkers();
		    	}
		    	
		        marker = new google.maps.Marker({
			        position: location,
			        map: map
		        });
		        
		        markers.push(marker);
		        $( '#location' ).val(location);
		        loca =  $( '#location' ).val().toString();
		
		 	    var localat = parseFloat(  loca.substring( loca.indexOf("(")+1 ,loca.indexOf(",") )  );
		 	    var localng = parseFloat(  loca.substring( loca.indexOf(",")+1, loca.indexOf(")") )  );
		        
		        if (marker != undefined){
		           marker.addListener('rightclick', function() {
		            	deleteMarkers();
		           });
		        }
		        
		        // �������ڵ� //
		        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
		            success: function(data){
		//                 alert(JSON.stringify(data));
		//                 alert(data.results[0].formatted_address);
		//                 $('p').text(JSON.stringify(data));
		                $('p').text(data.results[0].formatted_address.substring(5, data.results[0].formatted_address.length));
		            }
		 		});
    	  }
      }

      function setMapOnAll(map) {
	        for (var i = 0; i < markers.length; i++) {
	          	markers[i].setMap(map);
	        }
      }

      function deleteMarkers() {
	    	setMapOnAll(null);
	        markers = [];
      }
      
      
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
	
</body>

</html>