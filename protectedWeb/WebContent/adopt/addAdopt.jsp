 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>ADD ADOPT</title>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <style type="text/css">
	    html {
	 	 scroll-behavior: smooth;
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
            <h1 class="mb-0 bread" id="h1">
           		<c:if test="${param.boardCode eq 'AD' }">�о�� ���</c:if>
			    <c:if test="${param.boardCode eq 'MS' }">������ ���</c:if>
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
<!-- 							<h3 class="mb-4 billing-heading">����</h3> -->
	          	<div class="row align-items-end">
	          	
	          	
				<input type="hidden" name="boardCode" value=" ${ param.boardCode.trim() }" >
				<input type="hidden" name="id" value="${ sessionScope.user.id }" >
				<input type="hidden" name="statusCode" value="1" >
				<input type="hidden" class="form-control" id="multiFile" name="multiFile" >
				
				<div class="col-md-12">
				
	          		<div class="cart-detail bg-light p-3 p-md-4">
	          			<h3 class="billing-heading mb-4"><strong>��� ����</strong></h3>
	          			
						<div class="form-group">
							<div class="col-md-12"><strong>1. </strong>
								<c:if test="${param.boardCode eq 'AD' }">�о���� ����ϰ�, �Ծ��û���� ��ϵǰų� �о�Ϸ� ���·� �����Ͻ� ��� ���� �����ϰų� �����Ͻ� �� �����ϴ�.</c:if>
			 					<c:if test="${param.boardCode eq 'MS' }">�������� ����ϰ�, ã��Ϸ� ���·� �����Ͻ� ��� ���� �����ϰų� �����Ͻ� �� �����ϴ�.</c:if>
							</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="terms" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12"><strong>2. </strong>��û���� ����ȸ ȭ�鿡�� Ȯ���Ͻ� �� ������, ��û���� Ȯ���ϰ� ���� �����Ͻø� �˴ϴ�.</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="terms" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="termsAll" class="mr-2"><strong>��� ����</strong></label>
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
			
	          	
	          	<div class="col-md-12"><br/><hr/><br/></div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postTitle"><strong>������</strong>&nbsp;&nbsp;<span name="postTitle"></span></label>
		                	<input type="text" class="form-control" name="postTitle" value="����" placeholder="������ �Է��ϼ���.">
		                </div>
	                </div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="phone"><strong>����ó</strong>&nbsp;&nbsp;<span name="phone">����ó�� �ٸ� ��� ȸ�������� �������ּ���.</span></label>
		                	<input type="text" class="form-control" name="phone" value="${ sessionScope.user.phone }" readonly >
		                </div>
	                </div>

	                <div class="col-md-12"><br/></div>
	                
	                <!-- ÷�� ��ư -->
	                <div class="col-md-12">
			            <div id="attach" class="form-group">
			                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">
			               		<strong>�̹��� ���</strong>&nbsp;&nbsp;�Ǿ� �̹����� ��ǥ�̹����Դϴ�. (�ִ� 5����� ���ε� �����մϴ�.)
			                </label></span>
			                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
			            </div>
		            </div>
		           	<br/>
		            
		            <!-- �̸����� ���� -->
		            <div class="col-md-12">
			            <div class="form-group">
			           	 <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'></div> 
			            </div>
		            </div>
		            
		            <div class="col-md-12"><br/></div>
	                
	          		<div class="col-md-6">
		                <div class="form-group">
		                	<label for="dogBreed"><strong>����</strong>&nbsp;&nbsp;<span name="dogBreed"></span></label>
		                	<input type="text" class="form-control" id="dogBreed" name="dogBreed" placeholder="�̹��� ��� �� �ڵ����� �Էµ˴ϴ�.">
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
	                  		<input type="number" class="form-control" name="dogWeight"  value="5.5" placeholder="������ ü���� �Է��ϼ���.">
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
		                		<c:if test="${param.boardCode eq 'AD' }">å�Ӻ�</c:if>
							    <c:if test="${param.boardCode eq 'MS' }">��ʺ�</c:if>
	                		</strong>&nbsp;&nbsp;<span name="dogPay"></span></label>
	                  		<input type="text" class="form-control" name="dogPay" value="123456" placeholder="����� �Է��ϼ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogDate"><strong>
	                			<c:if test="${param.boardCode eq 'AD' }">�߰�����</c:if>
							    <c:if test="${param.boardCode eq 'MS' }">��������</c:if>
	                		</strong></label>
	                  		<input type="date" class="form-control" name="dogDate" value="2019-07-07" >
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogStatus"><strong>����</strong>&nbsp;&nbsp;<span name="dogStatus"></span></label>
	                  		<input type="text" class="form-control" name="dogStatus" value="dd" placeholder="������ ���¸� �������ּ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogPersonality"><strong>����</strong>&nbsp;&nbsp;<span name="dogPersonality"></span></label>
	                  		<input type="text" class="form-control" name="dogPersonality" value="dd" placeholder="������ ������ �������ּ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogChar"><strong>Ư¡</strong>&nbsp;&nbsp;<span name="dogChar"></span></label>
	                  		<input type="text" class="form-control" name="dogChar" value="dd" placeholder="������ Ư¡��  �������ּ���.">
	               		</div>
               		</div>
               		
               		
               		
	            	<div class="col-md-12" id="areaFocus">
	            	<br/>
                		<label><strong>
                		<c:if test="${param.boardCode eq 'AD' }">
                			�� ������ Ŭ���ϸ� ��Ŀ�� �����Ǹ�, ��Ŭ���� ��� ��Ŀ�� ��� �����˴ϴ�. <br/>Ư�� ��Ŀ�� ��Ŭ���� ��� ��Ŭ���� ��Ŀ�� �����˴ϴ�.
                		</c:if>
                		<c:if test="${param.boardCode eq 'MS' }">
                			������ Ŭ���ϸ� ��Ŀ�� �����Ǹ�, ������ ��Ŭ���ϰų� ��Ŀ�� ��Ŭ���� ��� ��Ŀ�� �����˴ϴ�. 
                		</c:if>
                		</strong></label>
               		</div>
               		
               		
               		
               		<c:if test="${param.boardCode eq 'AD' }">
		            	<div class="col-md-12">
		              		<div class="form-group">
		                		<label for="adoptArea"><strong>�о簡������</strong> &nbsp;(3������ ���������ϸ�, ó�� ������ ������ ����Ʈ�� ǥ�õ˴ϴ�.)</label>
		                		<div id="mapArea" style="width: wrap; height: 300px;"></div><br/>
		                  		<input type="hidden" class="form-control" id="adoptArea" name="adoptArea" >
		                  		<input type="text" class="form-control" id="areaKr" name="areaKr" placeholder="��Ŀ ��ġ�� �Էµ˴ϴ�." readonly="readonly">
		               		</div>
	               		</div>
               		</c:if>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="location"><strong>
		                		<c:if test="${param.boardCode eq 'AD' }">
						  			�߰���ġ
						  		</c:if>
							    <c:if test="${param.boardCode eq 'MS' }">
						  			������ġ
						  		</c:if>
	                		</strong></label>
	                		<div id="map" style="width:wrap; height: 300px;"></div><br/>
	                  		<input type="hidden" class="form-control" id="location" name="location">
	                  		<input type="text" class="form-control" id="locationKr" name="locationKr" placeholder="��Ŀ ��ġ�� �Էµ˴ϴ�." readonly>
	               		</div>
               		</div>
               		
               		
               		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postContent"><strong>�۳���</strong></label>&nbsp;&nbsp;<span name="postContent"></span>
<!-- 		                	<input type="text" class="form-control" name="postContent" value="dd" placeholder="������ �Է��ϼ���."> -->
		                	<textarea  class="form-control"  name="postContent"  rows="5" value="dd"  placeholder="������ �Է��ϼ���."></textarea>
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
					<p><button class="btn btn-primary py-3 px-4 col-md-12">���</button></p>
					
					<div class="form-group">
						<div class="col-md-12">
							<div class="radio" align="right">
								<p><a href="#" ><font color="gray">���</font></a></p>
							</div>
						</div>
					</div>
	          	</div>
	          </div>
	          
	          
 <!-- 	����������������������������������������������       dialog       ������������������������������������������������������� -->
			<div class="modal fade " id="imgModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-sm" style="vertical-align: middle;" role="document">
					<div class="modal-content">
<!-- 						<div class="modal-header"> -->
<!-- 							<h5 class="modal-title" id="exampleModalLabel"></h5> -->
<!-- 							<button type="button" class="close" data-dismiss="modal" -->
<!-- 								aria-label="Close"> -->
<!-- 								<span aria-hidden="true">&times;</span> -->
<!-- 							</button> -->
<!-- 						</div> -->
						<div class="modal-body" align="center">�̹����� ������ּ���.</div>
						<div class="modal-footer">
							<button type="button"  class="btn btn-primary"  data-dismiss="modal">��</button>
						</div>
					</div>
				</div>
			</div>
			<div id="dialog-terms" title="">
			  <p align="center"><br/>����� ��� �����ؾ� ����� �� �ֽ��ϴ�.</p>
			</div>  
			<div id="dialog-img" title="">
			  <p align="center"><br/>�̹����� ������ּ���.</p>
			</div>        

			<div id="dialog-area" title="">
			  <p align="center"><br/>�о簡�������� �������ּ���.</p>
			</div>       
			<div id="dialog-location" title="">
			  <p align="center"><br/>
			  		<c:if test="${param.boardCode eq 'AD' }">�߰���ġ�� �������ּ���.</c:if>
			  		<c:if test="${param.boardCode eq 'MS' }">������ġ�� �������ּ���.</c:if>
			  </p>
			</div>   

       
<!-- 	��������������������������������������������������������   dialog  �������������������������������������������������������������������� -->      
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    
    <jsp:include page="/layout/footer.jsp"></jsp:include>
  


  <!-- dialog -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <!-- ���ø� -->
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
  <script type="text/javascript" src="/resources/events.js"></script>
<!--   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script><script type="text/javascript" src="js/bootstrap.js"></script>
  <script>

 	  var mapArea;
      var map;
      
      var markersArea = [];
      var markers = [];
      
      
      function initMap() {
    	  
    	  if( $('input[name=boardCode]').val().trim() =='AD'){
		        mapArea = new google.maps.Map(document.getElementById('mapArea'), {
			    	zoom: 13,
			    	center: {lat: 37.564, lng: 127.0017}
		        });
		
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
	  ////////////////////        ��: �о簡������               //      �Ʒ�: �о�|������ġ          ////////////////////////////////////////
	  
	      map = new google.maps.Map(document.getElementById('map'), {
	        	zoom: 13,
	        	center: {lat: 37.564, lng: 127.0017}
	      });
	
	      map.addListener('click', function(event) {
	        	addMarker(event.latLng, "loca");
	      });
	      
	      map.addListener('rightclick', function() {
	        	deleteMarkers();
	        	$('#location').val('');
	        	$('#locationKr').val('');
		  });
      }
      
      
      var markerArea;
      var marker;
      var loca;
      var str = "";
      var markTest="";
      var mmm = "";
      
/////////////////////////////////////////////////////////////////////////////////////////////
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
// 	  	        	alert("3������ ���� ������ dialog �߰�");
	  	        }
	    		 

	  	        if (markerArea != undefined){
	  	        	
	  	        	markerArea.addListener('rightclick', function() {
	  	        		
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
// 	  		   	               		alert(JSON.stringify(data));
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
// 		                $('#locationKr').val(JSON.stringify(data));
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
      
     // �������������������������������������        �� map         ���������������������������������������������
     
     
       

	  //============= "�������Ͼ��ε� ���ϸ� �����ؼ� value" =============   
	  function fnAddFile(fileNameArray) {
	  	   $("#multiFile").val(fileNameArray)    
	  }   

	  //============= "�������Ͼ��ε�"  Event ó�� ��  ���� =============      

	  //������ file object����
	 var files = {};
	 var previewIndex = 0;
	 var fileNameArray = new Array();
	 
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
	            var imgSelectName = "img";
	
	            var reader = new FileReader();
	            reader.onload = function(img) {
	                 //div id="preview" ���� �����ڵ��߰�.
	                 //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
	                 
	                 var imgNum = previewIndex++;
	                 
	                //8�� �̻� ���ε��
	                 if(Object.keys(files).length>=5){
	            		alert("�̹����� 5����� ���ε� �����մϴ�.");
	                    delete files[imgNum];
	                 }else{
	          		 // 8�� ���� 
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
// 	                	console.log("[b64]"+b64);
	                	if(b64.indexOf('png') != -1){
	                		b64 = b64.replace(  'data:image/png;base64,'   ,    ''  ); // remove content type
	                	}else {
	                		b64 = b64.replace(  'data:image/jpeg;base64,'   ,   ''  );
	                	}
	                	
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
                          	console.log("��� Ȯ�� : "+JSON.stringify(data));
                          	
	                          	var test = data.responses[0].webDetection.bestGuessLabels[0];
	                          	var breed = test.label;
	                          	console.log("���� Ȯ�� : "+breed);
	                       		fncBreed( breed );
                          },
                          error: function (data, textStatus, errorThrown) {
	                            console.log('���� error: ' + JSON.stringify(data));
	                            fncBreed( '��' );
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

	 //============= ���� Ȯ���� validation üũ =============
	 function validation(fileName) {
	     fileName = fileName + "";
	     var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
	     var fileNameExtension = fileName.toLowerCase().substring(
	             fileNameExtensionIndex, fileName.length);
	     if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png') || (fileNameExtension === 'jpeg') )) {
	         alert('jpg, gif, png, jpeg Ȯ���ڸ� ���ε� �����մϴ�.');
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
	
	// �������������������������������������   �� ���Ͼ��ε�      �������������������������������������������������������


	function fncBreed(breed) {
		if ( breed.toLowerCase().indexOf( 'bichon' ) != -1 || breed.toLowerCase().indexOf( '���' ) != -1  ) {
			breed = '���';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'pomeranian' ) != -1 || breed.toLowerCase().indexOf( '����' ) != -1 ) {
			breed = '���޶�Ͼ�';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'bull' ) != -1 || breed.toLowerCase().indexOf( '�ҵ�' ) != -1) {
			breed = '�ҵ�';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'chihuahua' ) != -1 || breed.toLowerCase().indexOf( 'ġ�Ϳ�' ) != -1  ) {
			breed = 'ġ�Ϳ�';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'maltese' ) != -1 || breed.toLowerCase().indexOf( '��Ƽ��' ) != -1 ) {
			breed = '��Ƽ��';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'poodle' ) != -1 || breed.toLowerCase().indexOf( 'poedel' ) != -1 || breed.toLowerCase().indexOf( 'Ǫ��' ) != -1 ) {
			breed = 'Ǫ��';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'retriever' ) != -1 || breed.toLowerCase().indexOf( '��Ʈ����' ) != -1 ) {
			breed = '��Ʈ����';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'jindo' ) != -1 || breed.toLowerCase().indexOf( '������' ) != -1 ) {
			breed = '������';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'welsh' ) != -1 || breed.toLowerCase().indexOf( 'corgi' ) != -1 || breed.toLowerCase().indexOf( '����' ) != -1 ) {
			breed = '�����ڱ�';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'chow' ) != -1 || breed.toLowerCase().indexOf( '����' ) != -1 ) {
			breed = '��������';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'dobermann') != -1 || breed.toLowerCase().indexOf( '��������' ) != -1 ) {
			breed = '��������';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'spaniel') != -1 || breed.toLowerCase().indexOf( '�Ͽ�' ) != -1 || breed.toLowerCase().indexOf( '�Ͼ�' ) != -1 ) {
			breed = '���ĴϿ�';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'spitz') != -1 || breed.toLowerCase().indexOf( '������' ) != -1 ) {
			breed = '������';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'husky' ) != -1 || breed.toLowerCase().indexOf( '�㽺Ű' ) != -1 ) {
			breed = '�㽺Ű';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else if ( breed.toLowerCase().indexOf( 'shih' ) != -1 || breed.toLowerCase().indexOf( '����' ) != -1 ) {
			breed = '����';
			$('select[name=dogSize]').val('������').attr("selected","selected");
		}else{
			breed = '�� �� ����';
		}

	    $( "#dogBreed" ).val(breed);
	 }
	
	
	//��������������������������������������      �� ��������      ����������������������������������������������
	
	$( 'input[name=termsAll]').on('click', function(){
	    if (  $("input[name=termsAll]:checkbox").prop("checked")  ) {
		    $("input[name=terms]:checkbox").prop("checked", "checked");
		}else{
		    $("input[name=terms]:checkbox").prop('checked', false);
		}
	});
	
	$( "input[name=terms]:checkbox" ).on('click', function(){
		if($("input[name=terms]:checkbox:checked").length == 2){
			$("input[name=termsAll]:checkbox").prop("checked", "checked");
		}else{
			$("input[name=termsAll]:checkbox").prop("checked", false);
		}
	});
	
	//������������������������������������     ��      check box        ����������������������������������������������



	var boardCode = $( 'input[name=boardCode]' ).val().trim();
	
	$( function() {
	    $( "#dialog-terms" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=terms]:checkbox").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
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
	

	
	//����������������������������������������     ��  dialog      ����������������������������������������������	

	$( "input[name=postTitle]" ).keyup(function( ) {
		if($("input[name=postTitle]").val().length > 10 ){
			$("span[name=postTitle]").text('10�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=postTitle]").text('');
		}
	});
	
	$( "input[name=phone2], input[name=phone3]" ).keyup(function( ) {
		$( '#phone' ).val( $('#phone1').val()+'-'+$('#phone2').val()+'-'+$('#phone3').val() );
		
		if($("input[name=phone]").val().length > 13 ){
			$("span[name=phone]").text('����ó�� ��Ȯ�� �Է��ϼ���.');
		}else{
			$("span[name=phone]").text('');
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
		}else{
			$("span[name=dogPay]").text('');
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

	//������������������������������������      ��  ���ڼ�üũ           �����������������������������������������
	
	
	// ��Ϲ�ư ������
	function fncAddAdopt(){
		
		  $( '#phone' ).val( $('#phone1').val()+'-'+$('#phone2').val()+'-'+$('#phone3').val() );
		
		  if( $("input:checkbox:checked").length != 3){
			  $('#dialog-terms').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			  $('#dialog-terms').dialog("open");
// 			  $("input[name=terms]:checkbox").prop('checked', false).focus();
			  return;
		  }
		  if( $("input[name=postTitle]").val().trim() == '' || $("input[name=postTitle]").val().length >10){
			  $("input[name=postTitle]").focus();
			  return;
		  }
		  if( $("input[name=phone]").val().length > 13 || $("input[name=phone]").val().length < 12 ){
			  $("input[name=phone]").focus();
			  return;
		  }
		  if( $("input[name=dogBreed]").val().length >10){
			  $("input[name=dogBreed]").focus();
			  return;
		  }
		  if( $(".preview-box").length == 0 ){
			  $('#imgModal').modal('show');
// 			  $('#dialog-img').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 			  $('#dialog-img').dialog( "open" );
			  return;
		  }
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
	    	
	   	  var file = $("#multiFile").val(); 
		
	      $(function() {     
		        var form = $('#uploadForm')[0];
		        var formData = new FormData(form);
// 		        alert(boardCode);
		
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
			                    alert('jpg, gif, png, jpeg Ȯ���ڸ� ���ε� �����մϴ�.');
			                    // ���� ���� ...
			                } else if (result === -2) {
			                    alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
			                    // ���� ���� ...
			                } else {
			                    alert('�̹��� ���ε� ����');
			                }
		            },
					error: function(request, status, error){ 
						console.log("�̹��� code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
		        });
	  	  });


		
		$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").attr("enctype","multipart/form-data").submit();
		
	}
	
	
    
    
    $(function() {
			$( "button:contains('���')" ).on("click" , function() {
				fncAddAdopt();
			});
			
			$( "a:contains('���')" ).on("click" , function() {
				self.location = "/adopt/listAdopt?boardCode=${param.boardCode}"
			});
	 });	
      
      
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&callback=initMap"
    async defer></script>
  
  
  
  
  </body>
</html>