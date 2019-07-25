 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<title>��ȣ�Ұ� �� �о�� ����</title>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css"> 

    
    <style type="text/css">
		
	    html {
	 	 scroll-behavior: smooth;
		}
		
		h1 {
			font-family: 'NanumSquare', sans-serif !important;
/* 			font-size: 22px !important; */
		}
		
		section { 
			font-family: 'NanumSquare', sans-serif !important;
		}
		
	</style>
	
	
  </head>
  <body class="goto-here">
	<jsp:include page="/layout/toolbar.jsp"></jsp:include>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
<!--           	<p class="breadcrumbs"><span class="mr-2"><a href="index0.html">Home</a></span> <span>Checkout</span></p> -->
            <h1 class="mb-0 bread">
            	<c:if test="${adopt.boardCode eq 'AD' }">�о�� ����</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">������ ����</c:if>
            </h1>
          </div>
        </div>
      </div>
    </div>
    
    

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-8 ftco-animate">
			<form  id ="uploadForm"  action="#" class="billing-form">
	          	<div class="row align-items-end">
	          	
	          	
				<input type="hidden" name="boardCode" value=" ${ adopt.boardCode.trim() }" >
				<input type="hidden" name="postNo" value=" ${ adopt.postNo }" >
				<input type="hidden" id="multiFile" name="multiFile" >
				<input type="hidden" id="deleteFile" name="deleteFile" />
				
				
				
	          	
	          	<div class="col-md-12"></div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postTitle"><strong>������</strong>&nbsp;&nbsp;<span name="postTitle"></span></label>
		                	<input type="text" class="form-control" name="postTitle" value="${ adopt.postTitle }" placeholder="������ �Է��ϼ���.">
		                </div>
	                </div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="phone"><strong>����ó</strong>&nbsp;&nbsp;<span name="phone">����ó�� �ٸ� ��� ȸ�������� �������ּ���.</span></label>
		                	<input type="text" class="form-control" name="phone" value="${ adopt.phone }" readonly>
		                </div>
	                </div>
	                
	                <!-- ÷�� ��ư -->
	                <div class="col-md-12">
			            <div id="attach" class="form-group">
			                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox"><strong>�������</strong>&nbsp;&nbsp;�Ǿ� �̹����� ��ǥ�̹����Դϴ�. (�ִ� 5����� ���ε� �����մϴ�.)</label></span>
			                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
			            </div>
		            </div>
		           	<br/>
		            
		            <!-- �̸����� ���� -->
		            <div class="form-group">
			            <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'>
			
							<c:forEach var="name" items="${file}" varStatus="status">            
							<div class="preview-box2" value="${name.fileName}"  style='display:inline;float:left;width:140px' >
			                     <img class="thumbnail" src="/resources/file/fileAdopt/${name.fileName}"  width="120px;" height="120px;"/><br/>
			                            <a href="#" value="${name.fileName}"  onclick="deletePreview2(this)">����</a></div>     
			                </c:forEach>     
			                
			            </div> 
		            </div>
      
	                
	          		<div class="col-md-12">
	                </div>
	                
	          		<div class="col-md-6">
		                <div class="form-group">
		                	<label for="dogBreed"><strong>����</strong>&nbsp;&nbsp;<span name="dogBreed"></span></label>
		                	<input type="text" class="form-control" id="dogBreed" name="dogBreed" value="${ adopt.dogBreed }">
		                </div>
	                </div>
	                
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for=""><strong>ũ��</strong></label>
						      	<select class="form-control" name="dogSize" id="dogSize">
								  	<option value="������" >������</option>
									<option value="������" >������</option>
									<option value="������" >������</option>
								</select>
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogWeight"><strong>ü��</strong>&nbsp;&nbsp;<span name="dogWeight"></span></label>
	                  		<input type="number" class="form-control" name="dogWeight"  value="${ adopt.dogWeight }">
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogGender"><strong>����</strong></label>
						      	<select class="form-control" name="dogGender" id="dogGender">
								  	<option value="����" >����</option>
									<option value="����" >����</option>
								</select>
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogPay"><strong>
		                		<c:if test="${adopt.boardCode eq 'AD' }">å�Ӻ�</c:if>
							    <c:if test="${adopt.boardCode eq 'MS' }">��ʺ�</c:if>
	                		</strong>&nbsp;&nbsp;<span name="dogPay"></span></label>
	                  		<input type="number" class="form-control" name="dogPay" value="${ adopt.dogPay }">
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogDate"><strong>
	                			<c:if test="${adopt.boardCode eq 'AD' }">�߰�����</c:if>
							    <c:if test="${adopt.boardCode eq 'MS' }">��������</c:if>
	                		</strong></label>
	                  		<input type="date" class="form-control" name="dogDate" value="${ adopt.dogDate }" >
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogStatus"><strong>����</strong>&nbsp;&nbsp;<span name="dogStatus"></span></label>
	                  		<input type="text" class="form-control" name="dogStatus"  value="${ adopt.dogStatus }">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogPersonality"><strong>����</strong>&nbsp;&nbsp;<span name="dogPersonality"></span></label>
	                  		<input type="text" class="form-control" name="dogPersonality"  value="${ adopt.dogPersonality }">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogChar"><strong>Ư¡</strong>&nbsp;&nbsp;<span name="dogChar"></span></label>
	                  		<input type="text" class="form-control" name="dogChar"  value="${ adopt.dogChar }">
	               		</div>
               		</div>
               		
               		
               		
	            	<div class="col-md-12">
	            	<br/>
                		<label><strong>
	                		<c:if test="${adopt.boardCode eq 'AD' }">
<!-- 	                			������ Ŭ���ϸ� ��Ŀ�� �����Ǹ�, ��Ŭ���� ��� ��Ŀ�� ��� �����˴ϴ�. <br/>Ư�� ��Ŀ�� ��Ŭ���� ��� ��Ŭ���� ��Ŀ�� �����˴ϴ�.<br/> -->
	                			�о簡�������� �����Ͻ� ��� ������ ��Ŭ���ϰ� ��Ŀ�� �ٽ� �������ּ���.
	                		</c:if>
	                		<c:if test="${adopt.boardCode eq 'MS' }">
	                			������ Ŭ���ϸ� ��Ŀ�� �����Ǹ�, ������ ��Ŭ���ϰų� ��Ŀ�� ��Ŭ���� ��� ��Ŀ�� �����˴ϴ�. 
	                		</c:if>
                		</strong></label>
               		</div>
               		
               		
               		
               		<c:if test="${adopt.boardCode eq 'AD' }">
		            	<div class="col-md-12">
		              		<div class="form-group">
		                		<label for="adoptArea"><strong>�о簡������</strong> &nbsp;(3������ ���ð����մϴ�.)</label>
		                		<div id="mapArea" style="width: wrap; height: 300px;"></div><br/>
		                  		<input type="hidden" class="form-control" id="adoptArea" name="adoptArea"  value="${ adopt.adoptArea }">
		                  		<input type="text" class="form-control" id="areaKr" name="areaKr" value="${ adopt.areaKr }" placeholder="��Ŀ ��ġ�� �Էµ˴ϴ�." readonly="readonly">
		               		</div>
	               		</div>
               		</c:if>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="location"><strong>
		                		<c:if test="${adopt.boardCode eq 'AD' }">
						  			�߰���ġ
						  		</c:if>
							    <c:if test="${adopt.boardCode eq 'MS' }">
						  			������ġ
						  		</c:if>
	                		</strong></label>
	                		<div id="map" style="width:wrap; height: 300px;"></div><br/>
	                  		<input type="hidden" class="form-control" id="location" name="location" value="${ adopt.location }" >
	                  		<input type="text" class="form-control" id="locationKr" name="locationKr" value="${ adopt.locationKr }" placeholder="��Ŀ ��ġ�� �Էµ˴ϴ�." readonly>
	               		</div>
               		</div>
               		
               		
               		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postContent"><strong>�۳���</strong>&nbsp;&nbsp;<span name="postContent"></label>
<!-- 		                	<input type="text" class="form-control" name="postContent" value="dd" placeholder="������ �Է��ϼ���."> -->
		                	<textarea  class="form-control"  name="postContent"  rows="5"  placeholder="������ �Է��ϼ���.">${adopt.postContent }</textarea>
		                </div>
	                </div>
               		

               		
               		<div class="w-100"></div>
		            <div class="w-100"></div>
               		<div class="w-100"></div>
                
	            </div>
	          </form>
	          
	          <!-- END -->


	          <div class="row mt-5 pt-3 d-flex">
	          	<div class="col-md-12">
					<p><button class="btn btn-primary py-3 px-4 col-md-12">����</button></p>
					
					<div class="form-group">
						<div class="col-md-12">
							<div class="radio" align="right">
								<p><a href="#" ><font color="gray">���</font></a></p>
							</div>
						</div>
					</div>
	          	</div>
	          </div>
	          
	          
 <!-- 	/////////////////////////////////////////       dialog       ///////////////////////////////////////////////////////////////////// -->
   
 
 
			<div id="dialog-img" title="">
			  <p align="center"><br/>�̹����� ������ּ���.</p>
			</div>        
			<div id="dialog-area" title="">
			  <p align="center"><br/>�о簡�������� �������ּ���.</p>
			</div>       
			<div id="dialog-location" title="">
			  <p align="center"><br/>
			  		<c:if test="${adopt.boardCode eq 'AD' }">�߰���ġ�� �������ּ���.</c:if>
			  		<c:if test="${adopt.boardCode eq 'MS' }">������ġ�� �������ּ���.</c:if>
			  </p>
			</div>   

       
<!-- 	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->      
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <jsp:include page="/layout/footer.jsp"></jsp:include>
    
  

  <!-- loader -->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

  <script src="/resources/prodmenu/js/jquery.min.js"></script>
  <script src="/resources/prodmenu/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/prodmenu/js/popper.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.easing.1.3.js"></script>
  <script src="/resources/prodmenu/js/jquery.waypoints.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.stellar.min.js"></script>
  <script src="/resources/prodmenu/js/owl.carousel.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/prodmenu/js/aos.js"></script>
  <script src="/resources/prodmenu/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap-datepicker.js"></script>
  <script src="/resources/prodmenu/js/scrollax.min.js"></script>
  <script src="/resources/prodmenu/js/main.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
  <script>

  var map;
  var marker;
  var markers = [];
  var loca = "${adopt.location}";
  var localat = parseFloat(  loca.substring( loca.indexOf("(")+1 ,loca.indexOf(",") )  );
  var localng = parseFloat(  loca.substring( loca.indexOf(",")+1, loca.indexOf(")") )  );
  
  var mapArea;
  var markerArea;
  var markersArea = [];
  var adArea = "${adopt.adoptArea}";
  var arrayTest = [];
  var arrayMark = [];
  
  var str = "";
  var markTest="";
  var mmm = "";
  
  
  if (adArea.indexOf("#") != -1){
	  var areaArray = adArea.split("#");
	  
	  for ( i=0; i<areaArray.length-1; i++){
		  arrayTest[i] = areaArray[i].substring( areaArray[i].indexOf("(")+1, areaArray[i].indexOf(",") )+","+ (areaArray[i].substring( areaArray[i].indexOf(",")+1, areaArray[i].indexOf(")") )).trim() ;
		  arrayMark[i] = "markerArea"+i.toString();
	  }   	  
  }
  
  
  
  function initMap() {
	  
	   if( $('input[name=boardCode]').val().trim() =='AD'){
	    	mapArea = new google.maps.Map(document.getElementById('mapArea'), {
				    zoom: 11,
				    center: { lat: parseFloat(arrayTest[0].substring( 0, arrayTest[0].indexOf(",") ))  ,
				    		lng: parseFloat(arrayTest[0].substring( arrayTest[0].indexOf(",")+1, arrayTest[0].length )) }
			});
		    
		    for ( i=0; i<arrayTest.length; i++){
		    	
			    markerArea= arrayMark[i];
			
			    markerArea = new google.maps.Marker({
			        position: { lat: parseFloat(arrayTest[i].substring( 0, arrayTest[i].indexOf(",") ))  ,
			    			lng: parseFloat(arrayTest[i].substring( arrayTest[i].indexOf(",")+1, arrayTest[i].length )) },
			        map: mapArea
		   		});
			    
			    markersArea.push(markerArea);
	   		}
		    
		    mapArea.addListener('click', function(event) {
	        	addMarker(event.latLng, "area");
	        });
		    
		    mapArea.addListener('rightclick', function() {
		    	if( markersArea.length > 0 ){
   		        	
		    		for (var i = markersArea.length-1; i >=0; i--) {
   		        		markersArea[i].setMap(null);
   		        		markersArea.splice(i, 1 );
   		            }
   		        	
   		        	$('#adoptArea').val('');
   		        	$('#areaKr').val('');
		    	}
		    });
		    
	    }
    
    //////////////////////////////////////////////////////////////
    
        map = new google.maps.Map(document.getElementById('map'), {
        	zoom: 15,
        	center: {lat: localat, lng: localng}
        });
        
        marker = new google.maps.Marker({
            position: {lat: localat, lng: localng},
            map: map
        });
        
        markers.push(marker);
        
        map.addListener('click', function(event) {
        	deleteMarkers();
        	addMarker(event.latLng, "loca");
      	});
        
        map.addListener('rightclick', function() {
        	deleteMarkers();
        	$('#location').val('');
        	$('#locationKr').val('');
	    });
   
  }
  
  
  
  function addMarker(location, str) {
	  
	  if ( str == "area"){
		  
    		 if (markersArea.length <3){
  		        var markerArea = new google.maps.Marker({
  			        position: location,
  			        map: mapArea
  		        });
  		        
  		     	markersArea.push(markerArea);
  		   		 
		   		$("#adoptArea").val( $("#adoptArea").val()+location+"#");
		   			
	    	    var localat = parseFloat(  location.toString().substring( location.toString().indexOf("(")+1 ,location.toString().indexOf(",") )  );
			 	var localng = parseFloat(  location.toString().substring( location.toString().indexOf(",")+1, location.toString().indexOf(")") )  );
	    	    $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
	    	         success: function(data){
	    	           			markTest = data.results[2].formatted_address.substring(5, data.results[2].formatted_address.length)+"  ";
	    	           			if( markTest.indexOf('Ư��') != -1  ){
	    	           				markTest = markTest.replace('Ư��' ,   '');
	    	           			}
	    	           			if( markTest.indexOf('����') != -1  ){
	    	           				markTest = markTest.replace('����' ,   '');
	    	           			}
	    	           			if( markTest.indexOf('��ġ') != -1  ){
	    	           				markTest = markTest.replace('��ġ' ,   '');
	    	           			}
	    	          			$("#areaKr").val($("#areaKr").val()+markTest);
	    	         }
	    	 	});

  	        }else{
//	  	        	alert("3������ ���� ������ dialog �߰�");
  	        }
    		 

  	        if (markerArea != undefined){
  	        	
  	        	markerArea.addListener('rightclick', function() {
  	        		alert(markerArea.position);
  	        		
  					for (var i = 0; i < markersArea.length; i++) {
  				      	if (markersArea[i] === markerArea) {
		  				   markersArea[i].setMap(null);
		  				   markersArea.splice(i, 1);
  				       	}
  					}
  					
  					markTest="";
  					mmm="";
  					for (var i = 0; i < markersArea.length; i++) {
  						
  						mmm += markersArea[i].position+"#";
  						var localat = parseFloat(  markersArea[i].position.toString().substring( markersArea[i].position.toString().indexOf("(")+1, markersArea[i].position.toString().indexOf(",") )  );
  				 	    var localng = parseFloat(  markersArea[i].position.toString().substring( markersArea[i].position.toString().indexOf(",")+1, markersArea[i].position.toString().indexOf(")") )  );
  				 		
  		    	        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
  		    	            success: function(data){
//	  		   	               		alert(JSON.stringify(data));
  		    	              	markTest += data.results[2].formatted_address.substring(5, data.results[2].formatted_address.length)+"  ";
  		    	                if( markTest.indexOf('Ư��') != -1  ){
	    	           				markTest = markTest.replace('Ư��' ,   '');
	    	           			}
	    	           			if( markTest.indexOf('����') != -1  ){
	    	           				markTest = markTest.replace('����' ,   '');
	    	           			}
	    	           			if( markTest.indexOf('��ġ') != -1  ){
	    	           				markTest = markTest.replace('��ġ' ,   '');
	    	           			}
  		    	       			$("#areaKr").val(markTest);
  		    	            }
  		    	 		});
  					}
  					$("#areaKr").val(markTest);
  					$("#adoptArea").val(mmm);
  	            });
  	        }
  	        
//////////////////////////////////////////////////////////////////////////////////////////////////////////////	        
	  	      	
	  }else if( str == "loca"){
		  
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
	
	 	    var localat = parseFloat(  loca.substring( loca.indexOf("(")+1, loca.indexOf(",") )  );
	 	    var localng = parseFloat(  loca.substring( loca.indexOf(",")+1, loca.indexOf(")") )  );
	        
	        if (marker != undefined){
	           marker.addListener('rightclick', function() {
	            	deleteMarkers();
	            	$('#locationKr').val('');
	           });
	        }
	        
	        // �������ڵ� //
	        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
	            success: function(data){
//		                $('#locationKr').val(JSON.stringify(data));
	            	var locaKrkr = data.results[2].formatted_address.substring(5, data.results[2].formatted_address.length);
	                if( locaKrkr.indexOf('Ư��') != -1  ){
	                	locaKrkr = locaKrkr.replace('Ư��' ,   '');
           			}
           			if( locaKrkr.indexOf('����') != -1  ){
           				locaKrkr = locaKrkr.replace('����' ,   '');
           			}
           			if( locaKrkr.indexOf('��ġ') != -1  ){
           				locaKrkr = locaKrkr.replace('��ġ' ,   '');
           			}
	                $('#locationKr').val( locaKrkr );
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
  

      
      //////////////////////        �� map         /////////////////////////////////////////////////////////////////////////////////////////////////////////
       

	  //============= "�������Ͼ��ε� ���ϸ� �����ؼ� value" =============   
	  function fnAddFile(fileNameArray) {
	  	   $("#multiFile").val(fileNameArray);    
	  }   
      
	  //============= "�������Ͼ��ε� ���ϸ� �����ؼ� delete�� value" =============   
	  function fnDeleteFile(deletefileNameArray) {
	       $("#deleteFile").val(deletefileNameArray);    
	  } 

	  //============= "�������Ͼ��ε�"  Event ó�� ��  ���� =============      

	  //������ file object����
	 var files = {};
	 var previewIndex = 0;
	 var fileNameArray = new Array();
     //�����ִ����� ������ array
     var deletefileNameArray = new Array();
	 
	 // image preview ��� ����
	 // input = file object[]
	 function addPreview(input) {
	     if (input[0].files) {
	         //���� ������ ���������� ���� ����
	         for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
	
	            var file = input[0].files[fileIndex];
	            
	            if (validation(file.name))
	                 continue;
	
	            var fileName = file.name + "";   
	            var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
	            var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex, fileName.length);       
	            
	            //append�Ҷ� ������ �̹��� �������ֱ�
	            var imgSelectName = "img";
	            if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
	             	imgSelectName = "iframe";
	            }                           
	
	            var reader = new FileReader();
	            reader.onload = function(img) {
	                 //div id="preview" ���� �����ڵ��߰�.
	                 //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
	                 
	                 var imgNum = previewIndex++;
	                 
	                //5�� �̻� ���ε��
	                 if(Object.keys(files).length>=5){
	            		alert("������ 5������� ���ε� �����մϴ�.");
	                    delete files[imgNum];
	                 }else{
	          		 // 5�� ���� 
	                	$("#preview").append(
	                                 "<div class=\"preview-box\" value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
	                                         + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/><br\/>"
	                                         + "<a href=\"#\" value=\""
	                                         + imgNum
	                                         + "\" onclick=\"deletePreview(this)\">"
                                             + "����" + "</a>" + "</div> ");
	
		                 files[imgNum] = file;
		                 fileNameArray[imgNum]=file.name;
		                 fnAddFile(fileNameArray);
	                 }
	                
	                if( imgNum == 0){
	                	var b64 = img.target.result;
	                	
	                	b64 = b64.replace('data:image/jpeg;base64,', ''); // remove content type
                        request = {
                          "requests":[
                            {
                              "image":{ "content": b64 },
                              "features":[
                                {
                                  // if you want to detect more faces, or detect something else, change this
                                  "type":"WEB_DETECTION",
                                  "maxResults":1
                                }
                              ]
                            }
                          ]
                        };
                        
                        $.ajax({
                          method: 'POST',
                          url: 'https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0',
                          contentType: 'application/json',
                          data: JSON.stringify(request),
                          processData: false,
                          success: function(data){
//                           	console.log("Ȯ�� : "+data);
//                           	console.log("��� Ȯ�� : "+JSON.stringify(data));
                          	
                          	var test = data.responses[0].webDetection.bestGuessLabels[0];
                          	console.log("���� Ȯ�� : "+test.label);
//                             var faceData = data.responses[0].faceAnnotations[0];
//                             console.log('joy: ' + faceData.joyLikelihood);
//                             console.log('sorrow: ' + faceData.sorrowLikelihood);
//                             console.log('anger: ' + faceData.angerLikelihood);
//                             console.log('surprise: ' + faceData.surpriseLikelihood);
                       		$( "#dogBreed" ).val(test.label);
//                        		$( "#test" ).html(test.label.replace(/ /gi, "") );
                          },
                          error: function (data, textStatus, errorThrown) {
                            console.log('error: ' + data);
                          }
                        })
	                	
	                }
	             };
	
	             reader.readAsDataURL(file);
	         }
	     } else
	         alert('invalid file input'); // ÷��Ŭ�� �� ��ҽ��� ����å�� ������ �ʾҴ�.
	 }

	 //============= preview �������� ���� ��ư Ŭ���� �ش� �̸������̹��� ���� ���� =============
	 function deletePreview(obj) {
	     var imgNum = obj.attributes['value'].value;
	     delete files[imgNum];
	     fileNameArray.splice(imgNum,1);
	     fnAddFile(fileNameArray);
	     $("#preview .preview-box[value=" + imgNum + "]").remove();
	     resizeHeight();
	 }
	 
	 //=============�����ִ������� ������ư������ =============
     function deletePreview2(obj) {
         var imgName = obj.attributes['value'].value;
         deletefileNameArray.push(imgName);
         fnDeleteFile(deletefileNameArray);
         $("#preview .preview-box2[value=\"" + imgName + "\"]").remove();
         resizeHeight();
     }


	 //============= ���� Ȯ���� validation üũ =============
	 function validation(fileName) {
	     fileName = fileName + "";
	     var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
	     var fileNameExtension = fileName.toLowerCase().substring(
	             fileNameExtensionIndex, fileName.length);
	     if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png')||(fileNameExtension === 'avi')||(fileNameExtension === 'mp4'))) {
	         alert('jpg, gif, png, avi, mp4 Ȯ���ڸ� ���ε� �����մϴ�.');
	         return true;
	     } else {
	         return false;
	     }
	 }
	 

	$(document).ready(function() {
	      //============= �����̸����� =============
		$('#attach input[type=file]').change(function() {
			addPreview($(this)); //preview form �߰��ϱ�
		});
	});
	
	

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	var boardCode = $( 'input[name=boardCode]' ).val().trim();
	
	$( function() {
	    $( "#dialog-img" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("span[name=phone]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-area" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("#areaFocus"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-location" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("input[name=areaKr]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});

//////////////////////��  dialog        ////////////////////////////////////////////////

	$( "input[name=postTitle]" ).keyup(function( ) {
		if($("input[name=postTitle]").val().length > 10 ){
			$("span[name=postTitle]").text('10�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=postTitle]").text('');
		}
	});

	$( "input[name=dogBreed]" ).keyup(function( ) {
		if($("input[name=dogBreed]").val().length > 10 ){
			$("span[name=dogBreed]").text('10�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=dogBreed]").text('');
		}
	});

	$( "input[name=dogWeight]" ).keyup(function( ) {
		if($("input[name=dogWeight]").val().length > 6 ){
			$("span[name=dogWeight]").text('6�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=dogWeight]").text('');
		}
	});

	$( "input[name=dogPay]" ).keyup(function( ) {
		if($("input[name=dogPay]").val().length > 6 ){
			$("span[name=dogPay]").text('100���� �̻��� �Է��Ͻ� �� �����ϴ�.');
// 			$("span[name=dogDate]").text("  ");
		}else{
			$("span[name=dogPay]").text('');
// 			$("span[name=dogDate]").text('');
		}
	});
	
	$( "input[name=dogStatus]" ).keyup(function( ) {
		if($("input[name=dogStatus]").val().length > 20 ){
			$("span[name=dogStatus]").text('20�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=dogStatus]").text('');
		}
	});
	
	$( "input[name=dogPersonality]" ).keyup(function( ) {
		if($("input[name=dogPersonality]").val().length > 20 ){
			$("span[name=dogPersonality]").text('20�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=dogPersonality]").text('');
		}
	});

	$( "input[name=dogChar]" ).keyup(function( ) {
		if($("input[name=dogChar]").val().length > 20 ){
			$("span[name=dogChar]").text('20�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=dogChar]").text('');
		}
	});
	
	$( "textarea[name=postContent]" ).keyup(function( ) {
		if($("textarea[name=postContent]").val().length > 100 ){
			$("span[name=postContent]").text('100�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=postContent]").text('');
		}
	});


	
//////////////////////       ��  ���ڼ�üũ         ////////////////////////////////////////////////



	// ��Ϲ�ư ������
	function fncUpdateAdopt(){
		
		  if( $("input[name=postTitle]").val().trim() == '' || $("input[name=postTitle]").val().length >10){
			  $("input[name=postTitle]").focus();
			  return;
		  }
// 		  if( $(".preview-box").length == 0 ){
// 			  $('#dialog-img').dialog( "open" );
// 			  return;
// 		  }
		  if( $("input[name=dogWeight]").val().trim() == '' || $("input[name=dogWeight]").val().length > 6 ){
			  $("input[name=dogWeight]").focus();
			  return;
		  }
		  if( $("input[name=dogPay]").val().trim() == '' || $("input[name=dogPay]").val().length > 6 ){
			  $("input[name=dogPay]").focus();
			  return;
		  }
		  if( $("input[name=dogDate]").val().trim() == '' ){
			  $("input[name=dogDate]").focus();
			  return;
		  }
		  if( $("input[name=dogStatus]").val().trim() == '' || $("input[name=dogStatus]").val().length > 20 ){
			  $("input[name=dogStatus]").focus();
			  return;
		  }
		  if( $("input[name=dogPersonality]").val().trim() == '' || $("input[name=dogPersonality]").val().length > 20 ){
			  $("input[name=dogPersonality]").focus();
			  return;
		  }
		  if( $("input[name=dogChar]").val().trim() == '' || $("input[name=dogChar]").val().length > 20 ){
			  $("input[name=dogChar]").focus();
			  return;
		  }
		  if( boardCode == 'AD' ){
			  if( $("input[name=adoptArea]").val().trim() == ''){
				  $('#dialog-area').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
				  $('#dialog-area').dialog( "open" );
				  return;
			  }
		  }
		  if( $("input[name=location]").val().trim() == ''){
			  $('#dialog-location').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			  $('#dialog-location').dialog( "open" );
			  return;
		  }
		  if( $("textarea[name=postContent]").val().trim() == '' || $("textarea[name=postContent]").val().length > 100 ){
			  $("textarea[name=postContent]").focus();
			  return;
		  }
		
		  
	    //============= �������Ͼ��ε� AJAX =============
	    	
// 	   	  var file = $("#multiFile").val(); 
		
	      $(function() {     
		        var form = $('#uploadForm')[0];
		        var formData = new FormData(form);
		
		        for (var index = 0; index < 100; index++) {
		            formData.append('files',files[index]);
		        }
	            
	            $.ajax({
		            type : 'POST',
		            enctype : 'multipart/form-data',
		            processData : false,
		            contentType : false,
		            cache : false,
		            timeout : 600000,
		            url : '/Images/json/imageupload/'+boardCode,
		            dataType : 'JSON',
		            data : formData,
		            success : function(result) {
			                if (result === -1) {
			                    alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
			                    // ���� ���� ...
			                } else if (result === -2) {
			                    alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
			                    // ���� ���� ...
			                } else {
			                    alert('�̹��� ���ε� ����');
			                }
		            },
					error: function(request, status, error){ 
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
		        });
	  	  });


		
		
		$("form").attr("method" , "POST").attr("action" , "/adopt/updateAdopt").attr("enctype","multipart/form-data").submit();
		
	}
	
	
    
    
    $(function() {
			$( "button:contains('����')" ).on("click" , function() {
				fncUpdateAdopt();
			});
			
			$( "a:contains('���')" ).on("click" , function() {
				self.location = "/adopt/getAdopt?postNo=${adopt.postNo}"
			});
	 });	
      
      
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
  
  
  
  
  
  </body>
</html>