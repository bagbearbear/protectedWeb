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

    <link rel="stylesheet" href="/resources/prodmenu/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/animate.css">
    
    <link rel="stylesheet" href="/resources/prodmenu/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/aos.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/jquery.timepicker.css">

    <link rel="stylesheet" href="/resources/prodmenu/css/flaticon.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/icomoon.css">
    <link rel="stylesheet" href="/resources/prodmenu/css/style.css">
  </head>
  <body class="goto-here">
		<div class="py-1 bg-black">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+ 1235 2355 98</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">youremail@email.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">3-5 Business days delivery &amp; Free Returns</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">protecteddog</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
<!--           	<p class="breadcrumbs"><span class="mr-2"><a href="index0.html">Home</a></span> <span>Checkout</span></p> -->
            <h1 class="mb-0 bread">�о�� ���</h1>
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
				<input type="hidden" name="id" value="user03" >
				<input type="hidden" name="statusCode" value="1" >
				<input type="hidden" class="form-control" id="multiFile" name="multiFile" >
				
				<div class="col-md-12">
				
	          		<div class="cart-detail bg-light p-3 p-md-4">
	          			<h3 class="billing-heading mb-4"><strong>��� ����</strong></h3>
	          			
						<div class="form-group">
							<div class="col-md-12"><strong>1. </strong>addAdopt ��� ��� �߰� ����</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="check" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12"><strong>2. </strong>addAdopt ��� ��� �߰� ����</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="check" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="checkAll" class="mr-2"><strong>��� ����</strong></label>
								</div>
							</div>
						</div>
						
					</div>
				</div>
	          	
	          	
	          	<div class="col-md-12"><br/><hr/><br/></div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postTitle"><strong>������</strong></label>
		                	<input type="text" class="form-control" name="postTitle" placeholder="������ �Է��ϼ���.">
		                </div>
	                </div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="phone"><strong>����ó</strong></label>
		                	<input type="text" class="form-control" name="phone" value="011-2123-4567">
		                </div>
	                </div>
	                
	                <!-- ÷�� ��ư -->
	                <div class="col-md-12">
			            <div id="attach" class="form-group">
			                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox"><strong>�������</strong>&nbsp;&nbsp;�Ǿ� �̹����� ��ǥ�̹����Դϴ�. (�ִ� 8����� ���ε� �����մϴ�.)</label></span>
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
	                
<!-- 	          		<div class="col-md-12"> -->
<!-- 		            	<div class="form-group"> -->
<!-- 		            		<label for="country" class="col-sm-offset-1 col-sm-3 control-label">����ó</label> -->
<!-- 		            		<div class="select-wrap"> -->
<!-- 			                	<div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
<!-- 			                	<div class="col-md-2"> -->
<!-- 			                	<select  class="form-control" name="phone1" id="phone"> <option value="">010</option>-->
<!-- 			                	</select></div> -->
<!-- 			                	<div class="col-md-2"> -->
<!-- 			                	<input type="number" class="form-control" name="phone2" placeholder=""></div> -->
<!-- 			                	<div class="col-md-2"> -->
<!-- 			                	<input type="number" class="form-control" name="phone3" placeholder=""></div> -->
<!-- 		               		</div> -->
<!-- 		            	</div> -->
<!-- 		            </div> -->
		            
<!-- 		            <div class="col-md-12"> -->
<!-- 		                <div class="form-group"> -->
<!-- 		                	<label for="firstname"><strong>�̹���</strong></label> -->
<!-- 		                	<input type="text" class="form-control" name="" placeholder=""> -->
<!-- 		                </div> -->
<!-- 	                </div> -->
	                
	          		<div class="col-md-6">
		                <div class="form-group">
		                	<label for="dogBreed"><strong>����</strong></label>
		                	<input type="text" class="form-control" id="dogBreed" name="dogBreed" placeholder="������ �Է��ϼ���.">
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
	                		<label for="dogWeight"><strong>ü��</strong></label>
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
		                		<c:if test="${param.boardCode eq 'AD' }">
						  			å�Ӻ�
						  		</c:if>
							    <c:if test="${param.boardCode eq 'MS' }">
						  			��ʺ�
						  		</c:if>
	                		</strong></label>
	                  		<input type="number" class="form-control" name="dogPay" value="100" placeholder="����� �Է��ϼ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-6">
	              		<div class="form-group">
	                		<label for="dogDate"><strong>
	                			<c:if test="${param.boardCode eq 'AD' }">
						  			�߰�����
						  		</c:if>
							    <c:if test="${param.boardCode eq 'MS' }">
						  			��������
						  		</c:if>
	                		</strong></label>
	                  		<input type="date" class="form-control" name="dogDate" value="2019-07-07" >
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogStatus"><strong>����</strong></label>
	                  		<input type="text" class="form-control" name="dogStatus" value="dd" placeholder="������ ���¸� �������ּ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogPersonality"><strong>����</strong></label>
	                  		<input type="text" class="form-control" name="dogPersonality" value="dd" placeholder="������ ������ �������ּ���.">
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="dogChar"><strong>Ư¡</strong></label>
	                  		<input type="text" class="form-control" name="dogChar" value="dd" placeholder="������ Ư¡��  �������ּ���.">
	               		</div>
               		</div>
               		
               		<c:if test="${param.boardCode eq 'AD' }">
		            	<div class="col-md-12">
		              		<div class="form-group">
		                		<label for="adoptArea"><strong>�о簡������</strong> &nbsp;(3������ ���ð����մϴ�. ��Ŭ������ ��Ŀ�� �������ּ���.)</label>
		                		<div id="mapArea" style="width: wrap; height: 300px;"></div><br/>
		                  		<input type="text" class="form-control" id="adoptArea" name="adoptArea" placeholder="" readonly="readonly">
		                  		<input type="text" class="form-control" id="areaKr" name="areaKr" placeholder="" readonly="readonly">
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
	                		</strong> (��Ŭ������ ��Ŀ�� �������ּ���.)</label>
	                		<div id="map" style="width:wrap; height: 300px;"></div><br/>
	                  		<input type="text" class="form-control" id="location" name="location" placeholder="" >
	                  		<input type="text" class="form-control" id="locationKr" name="locationKr" placeholder="">
	               		</div>
               		</div>
               		
               		
               		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postContent"><strong>�۳���</strong></label>
		                	<input type="text" class="form-control" name="postContent" value="dd" placeholder="������ �Է��ϼ���.">
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
					<p><a href="#"class="btn btn-primary py-3 px-4 col-md-12">���</a></p>
					
					<div class="form-group">
						<div class="col-md-12">
							<div class="radio" align="right">
								<p><a href="#" ><font color="gray">���</font></a></p>
							</div>
						</div>
					</div>
	          	</div>
	          </div>
	          
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <footer class="ftco-footer bg-light ftco-section">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
						</a>
					</div>
      	</div>
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Winkel</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Journal</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
<!--   <script src="/resources/prodmenu/js/google-map.js"></script> -->
  <script src="/resources/prodmenu/js/main.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
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
    	  }
	  ////////////////////        ��: �о簡������               //      �Ʒ�: �о�|������ġ          ////////////////////////////////////////
	  
	      map = new google.maps.Map(document.getElementById('map'), {
	        	zoom: 13,
	        	center: {lat: 37.564, lng: 127.0017}
	      });
	
	      map.addListener('click', function(event) {
	        	addMarker(event.latLng, "loca");
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
		    	          			$("#areaKr").val($("#areaKr").val()+markTest);
		    	         }
		    	 	});

	  	        }else{
	  	        	alert("3������ ���� ������ dialog �߰�");
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
		           });
		        }
		        
		        // �������ڵ� //
		        $.ajax({ url:'https://maps.googleapis.com/maps/api/geocode/json?latlng='+localat+","+localng+'&key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0&sensor=true',
		            success: function(data){
// 		                $('#locationKr').val(JSON.stringify(data));
		                $('#locationKr').val(data.results[2].formatted_address.substring(5, data.results[2].formatted_address.length));
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
       
      $( 'input[name=checkAll]').on('click', function(){
    	  $( 'input[name=check]').prop("checked");
    	  
    	  
// 			var price = $( '#tranPrice').val();
// 			var mileage =  $( "#mileage" ).val() ;
// 			var quantity = $( '#tranQuantity').val(  );
// 			var usermileage = ${purchase.buyer.mileage };
			
//  			if (    $( 'input[type=checkbox]').prop("checked")   ){
// 					console.log ("üũ Ȯ��" );
// 					console.log (  $( 'input[type=checkbox]').val()  );
// // 					$( '#tranPrice').val(  parseInt(price)- parseInt(mileage)  );
// 			}else{
// // 				$( '#tranPrice').val( ${purchase.purchaseProd.price } *  parseInt(quantity)  );
// 			}
	  });
      
      if ( $( 'input[name=check]').prop("checked")){
    	  $( 'input[name=checkAll]').prop("checked");
      }
      
      
	//////////////////////          �� check box         /////////////////////////////////////////////////////////////////////////////////////////////////////////
      

    
 
	
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
	                 
	                //8�� �̻� ���ε��
	                 if(Object.keys(files).length>=8){
	            		alert("������ 8������� ���ε� �����մϴ�.");
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
//                           	console.log("Ȯ��111 : "+JSON.stringify(data));
                          	
                          	var test = data.responses[0].webDetection.bestGuessLabels[0];
                          	console.log("Ȯ��1111111 : "+test.label);
//                             output = data;
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
	
	function fncAddAdopt(){

		var file = $("#multiFile").val(); 
		
		  
	    //============= �������Ͼ��ε� AJAX =============
	    	
	   	   
		
	      $(function() {     
		        var form = $('#uploadForm')[0];
		        var formData = new FormData(form);
		        var boardCode = $( 'input[name=boardCode]' ).val().trim();
		        alert(boardCode);
		
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
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
		        });
	  	  });


		
		
		$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").attr("enctype","multipart/form-data").submit();
		
	}
	
	
    
    
    $(function() {
			$( "a:contains('���')" ).on("click" , function() {
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