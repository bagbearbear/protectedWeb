 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>ADD APPLY</title>
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
            <h1 class="mb-0 bread" id="h1">�Ծ� ��û</h1>
          </div>
        </div>
      </div>
    </div>
    
    

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-8 ftco-animate">
			<form  action="#" class="billing-form">
	          	<div class="row align-items-end">
	          	
	          	
				<input type="hidden" name="id" value="user03" >
				<input type="hidden" name="statusCode" value="1" >
				<input type="hidden" name="adoptNo" value="${ apply.adoptNo }" >
				
				<div class="col-md-12">
				
	          		<div class="cart-detail bg-light p-3 p-md-4">
	          			<h3 class="billing-heading mb-4"><strong>��� ����</strong></h3>
	          			
						<div class="form-group">
							<div class="col-md-12"><strong>1. </strong>
								�Ծ����� �Ծ絿������ ������ ���� ������ ���� �����ϰ�, �����ϰ� ������ �, ������ ���� ��������, ���� �ǰ������� �����ϴ� �� �� �ʿ��� ������ ������ �ǹ��� �ֽ��ϴ�.
							</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="terms" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12"><strong>2. </strong>
								���� �Ծ絿���� ������ �ɷ��� �� �Ծ����� �ż��ϰ� �ʿ��� �������� ġ�Ḧ �ް� �ϰ� �����ϰ� �� ġ�ῡ ���� ���̸� ���� �Ծ絿���� ��ġ�� �Ұ����ϰ� 
								�� ������ �ؽ��� ��쿡�� �̸� ��ü�� �����ϰ� ��ü���� ���� �Ͽ� ����� �����Ͽ��� �ϸ� ���Ƿ� ó���ؼ��� �� �˴ϴ�. 
								�Ծ����� �Ծ絿���� �ڿ����� ��쿡�� ��� �� ����� ��ü�� ������ �ǹ��� �ֽ��ϴ�.
							</div>
							<div class="col-md-12">
								<div class="radio" align="right">
								   <label><input type="checkbox" name="terms" class="mr-2">����</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-12"><strong>3. </strong>
								�Ծ� ��û ��, ��û���� �����ϰų� �����Ͻ� �� �����ϴ�.
							</div>
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
		                	<label for="phone"><strong>����ó</strong></label>
		                	<input type="text" class="form-control" name="phone" value="011-2123-4567">
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
		            

	                
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="job" value="1">�л�</div>
	                		<div class="col-md-2"><input type="radio"  name="job" value="2">������</div>
	                		<div class="col-md-2"><input type="radio"  name="job" value="3">��Ÿ</div>
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ ������ �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="1">����</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="2">����Ʈ</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="3">����</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="4">��Ÿ</div>
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ ���θ� �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="mate" value="1">����</div>
	                		<div class="col-md-2"><input type="radio"  name="mate" value="2">����</div>
	               		</div>
               		</div>
               		
               		<span name="mateAgree"></span>
<!-- 	            	<div class="col-md-12" id="divMateAgree"> -->
<!-- 	              		<div class="form-group"> -->
<!-- 	                		<label for=""><strong><font color="#225cba">������ ���ο��� ������ ������ ���</font>, �������� ���� ���θ� �����ϼ���.</strong></label><br/> -->
<!-- 	                		<div class="col-md-2"><input type="radio"  name="mateAgree" value="1">����</div> -->
<!-- 	                		<div class="col-md-5"><input type="radio"  name="mateAgree" value="2">�������� ����</div> -->
<!-- 	               		</div> -->
<!--                		</div> -->
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>�ݷ��� �������� ���θ� �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="raise" value="1">����</div>
	                		<div class="col-md-5"><input type="radio"  name="raise" value="2">����</div>
	               		</div>
               		</div>
               		
               		<span name="currently"></span>
<!-- 	            	<div class="col-md-12" id="divCurrently"> -->
<!-- 	              		<div class="form-group"> -->
<!-- 	                		<label for=""><strong><font color="#225cba">�������� ���ο��� ������ ������ ���</font>, ���� �������θ� �����ϼ���.</strong></label><br/> -->
<!-- 	                		<div class="col-md-2"><input type="radio"  name="currently" value="1">������</div> -->
<!-- 	                		<div class="col-md-6"><input type="radio"  name="currently" value="2">�����ϰ����� ����</div> -->
<!-- 	               		</div> -->
<!--                		</div> -->
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="plan"><strong>�ݷ����� �Ծ��ϰԵ� ���, �������� ��ȹ�� �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="plan"></span></label>
	                  		<input type="text" class="form-control" name="plan" value="�������� ��ȹ" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="pay"><strong>�ݷ����� �Ծ��ϰԵ� ���, 1�Ⱓ�� ���� ���� �� ������ �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="pay"></span></label>
	                  		<input type="text" class="form-control" name="pay" value="������" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="reason"><strong>�ݷ����� �Ծ��ϰ� ���� ������ �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="reason"></span></label>
	                  		<input type="text" class="form-control" name="reason" value="�Ծ�����" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="situation"><strong>�ݷ����� �Ծ��ϰ� ��Ȳ�� �ٲ� ���, ��� ��ó�� �� �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="situation"></span></label>
	                  		<input type="text" class="form-control" name="situation" value="��Ȳ�ٲ�" placeholder="������ �Է��ϼ���.">
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
					<p><button class="btn btn-primary py-3 px-4 col-md-12">��û</button></p>
					
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

			<div id="dialog-terms" title="">
			  <p align="center"><br/>������Ǹ� ��� Ŭ���ϼ���.</p>
			</div>       
			<div id="dialog-job" title="">
			  <p align="center"><br/>������ �����ϼ���.</p>
			</div>       
			<div id="dialog-addr" title="">
			  <p align="center"><br/>������ ������ �����ϼ���.</p>
			</div>       
			<div id="dialog-mate" title="">
			  <p align="center"><br/>������ ���θ� �����ϼ���.</p>
			</div>       
			<div id="dialog-mateAgree" title="">
			  <p align="center"><br/>������ ���� ���θ� �����ϼ���.</p>
			</div>       
			<div id="dialog-afterMateAgree" title="">
			  <p align="center"><br/>������ ���θ� ���� �����ϼ���.</p>
			</div>       
			<div id="dialog-raise" title="">
			  <p align="center"><br/>�������� ���θ� �����ϼ���.</p>
			</div>       
			<div id="dialog-currently" title="">
			  <p align="center"><br/>���� ���� ���θ� �����ϼ���.</p>
			</div>      
			<div id="dialog-afterCurrently" title="">
			  <p align="center"><br/>�������� ���θ� ���� �����ϼ���.</p>
			</div>      
			<div id="dialog-plan" title="">
			  <p align="center"><br/>��ȹ�� �Է����ּ���.</p>
			</div>       
			<div id="dialog-planLength" title="">
			  <p align="center"><br/>��ȹ�� 300�ڱ��� �Է��� �� �ֽ��ϴ�.</p>
			</div>           
			<div id="dialog-pay" title="">
			  <p align="center"><br/>�������� �Է����ּ���.</p>
			</div>       
			<div id="dialog-payLength" title="">
			  <p align="center"><br/>�������� 300�ڱ��� �Է��� �� �ֽ��ϴ�.</p>
			</div>       
			<div id="dialog-reason" title="">
			  <p align="center"><br/>�Ծ� ������ �������ּ���.</p>
			</div>       
			<div id="dialog-reasonLength" title="">
			  <p align="center"><br/>�Ծ� ������ 300�ڱ��� �Է��� �� �ֽ��ϴ�.</p>
			</div>       
			<div id="dialog-situation" title="">
			  <p align="center"><br/>��Ȳ�� ���� ��ó�� �������ּ���.</p>
			</div>       
			<div id="dialog-situationLength" title="">
			  <p align="center"><br/>��Ȳ�� ���� ��ó�� 300�ڱ��� �Է��� �� �ֽ��ϴ�.</p>
			</div>     
			<div id="dialog-confirm" title="��û�� Ȯ��">
			  <p align="left" id="confirm" ></p>
			</div>     
       
<!-- 	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->      
	          
	          
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
  <script type="text/javascript" src="/resources/events.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

 	  

	
	$( function() {
	    $( "#dialog-terms, #dialog-job, #dialog-addr, #dialog-mate, #dialog-mateAgree, #dialog-afterMateAgree, #dialog-raise, #dialog-currently, #dialog-afterCurrently, #dialog-plan, #dialog-planLength, #dialog-pay, #dialog-payLength, #dialog-reason, #dialog-reasonLength, #dialog-situation, #dialog-situationLength" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 150,
		      modal: true
	    });
	});
	
	$( function() {
	    $( "#dialog-confirm" ).dialog({
	    	  autoOpen: false,
		      width: 470,
		      height: 600,
		      modal: true,
		      buttons: {
		        	��û: function() {
		        		$("form").attr("method" , "POST").attr("action" , "/apply/addApply").submit();
		        	},
		        	���: function() {
		          		$( this ).dialog( "close" );
		        	}
		      }
	    });
	});

//////////////////////    ��  dialog        ////////////////////////////////////////////////	
	
	$( 'input[name=termsAll]').on('click', function(){
	    if (  $("input[name=termsAll]:checkbox").prop("checked")  ) {
		    $("input[name=terms]:checkbox").prop("checked", "checked");
		}else{
		    $("input[name=terms]:checkbox").prop('checked', false);
		}
	});
	
	$( "input[name=terms]:checkbox" ).on('click', function(){
		if($("input[name=terms]:checkbox:checked").length == 3){
			$("input[name=termsAll]:checkbox").prop("checked", "checked");
		}else{
			$("input[name=termsAll]:checkbox").prop("checked", false);
		}
	});
	
	$( "input[name=mateAgree]" ).on('click', function(){
		if( $('input[name=mate]').length != 1 ){
			$('#dialog-afterMateAgree').dialog( "open" );
			$( "input[name=mateAgree]").prop('checked', false);
		}
	});
	
	$( "input[name=currently]" ).on('click', function(){
		if( $('input[name=raise]').length != 1 ){
			$('#dialog-afterCurrently').dialog( "open" );
			$( "input[name=currently]").prop('checked', false);
// 			$($( "input[name=raise]")[0]).focus();
		}
	});
	
	$( "input[name=mate]" ).on('click', function(){
		if( $(this).val() == 2 ){
			$( 'input[name=mateAgree]').attr('disabled', true);
			$( "input[name=mateAgree]").prop('checked', false);
			$( '#divMateAgree').hide('blind','slow');
		}else{
			$( 'input[name=mateAgree]').attr('disabled', false);
			if( $('#divMateAgree').length = 1 ){
				$( '#divMateAgree').remove();
			}
			var divMateAgree = "<div class=\"col-md-12\" id=\"divMateAgree\">"
	      		+"<div class=\"form-group\">"
	    		+"<label for=\"\"><strong><font color=\"#225cba\">������ ���ο��� ������ ������ ���</font>, �������� ���� ���θ� �����ϼ���.</strong></label><br/>"
	    		+"<div class=\"col-md-2\"><input type=\"radio\"  name=\"mateAgree\" value=\"1\">����</div>"
	    		+"<div class=\"col-md-5\"><input type=\"radio\"  name=\"mateAgree\" value=\"2\">�������� ����</div>"
	    		+"</div></div>";
// 			$( 'span[name=mateAgree]').html(divMateAgree);
			$( 'span[name=mateAgree]').append(divMateAgree).hide().show('blind','slow');
		}
	});
	
	$( "input[name=raise]" ).on('click', function(){
		if( $(this).val() == 2 ){
			$( 'input[name=currently]').attr('disabled', true);
			$( "input[name=currently]").prop('checked', false);
			$( '#divCurrently').hide('blind','slow');
		}else{
			$( 'input[name=currently]').attr('disabled', false);
			if( $('#divCurrently').length = 1 ){
				$( '#divCurrently').remove();
			}
			var divCurrently = "<div class=\"col-md-12\" id=\"divCurrently\">"
			      			+"<div class=\"form-group\">"
			        		+"<label for=\"\"><strong><font color=\"#225cba\">�������� ���ο��� ������ ������ ���</font>, ���� �������θ� �����ϼ���.</strong></label><br/>"
			        		+"<div class=\"col-md-4\"><input type=\"radio\"  name=\"currently\" value=\"1\">���� ��</div>"
			        		+"<div class=\"col-md-6\"><input type=\"radio\"  name=\"currently\" value=\"2\">�����ϰ� ���� ����</div>"
			       			+"</div></div>";
			$( 'span[name=currently]').append(divCurrently).hide().show('blind','slow');
		}
	});
	
//////////////////////     ��      check box         ////////////////////////////////////////////////



	$( "input[name=plan]" ).keyup(function( ) {
		if($("input[name=plan]").val().length > 300 ){
			$("span[name=plan]").text('300�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=plan]").text('');
		}
	});

	$( "input[name=pay]" ).keyup(function( ) {
		if($("input[name=pay]").val().length > 300 ){
			$("span[name=pay]").text('300�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=pay]").text('');
		}
	});

	$( "input[name=reason]" ).keyup(function( ) {
		if($("input[name=reason]").val().length > 300 ){
			$("span[name=reason]").text('300�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=reason]").text('');
		}
	});

	$( "input[name=situation]" ).keyup(function( ) {
		if($("input[name=situation]").val().length > 300 ){
			$("span[name=situation]").text('300�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=situation]").text('');
		}
	});
	
//////////////////////       ��  ���ڼ�üũ         ////////////////////////////////////////////////

	
	// ��Ϲ�ư ������
	function fncAddApply(){
		
		// ��� ����
		if( $("input:checkbox:checked").length != 4){
			$('#dialog-terms').dialog( "open" );
			return;
		}
		// ����üũ
		if( $("input[name=job]:radio:checked").length != 1){
			$('#dialog-job').dialog( "open" );
			return;
		}
		// ������üũ
		if( $("input[name=addr]:checked").length != 1){
			$('#dialog-addr').dialog( "open" );
			return;
		}
		// �����ο���üũ
		if( $("input[name=mate]:checked").length != 1){
			$('#dialog-mate').dialog( "open" );
			return;
		}else{
			// ������������ üũ�ߴµ� ���ǿ���üũ ������ ���
			if( $( "input[name=mate]:checked" ).val() == 1 ){
				if( $("input[name=mateAgree]:checked").length != 1){
					$('#dialog-mateAgree').dialog( "open" );
					return;
				}
			}
		}
		// ��������üũ
		if( $("input[name=raise]:checked").length != 1){
			$('#dialog-raise').dialog( "open" );
			return;
			  
		}else{
			// �������������� üũ�ߴµ� �����������üũ ������ ���
			if( $( "input[name=raise]:checked" ).val() == 1 ){
				if( $("input[name=currently]:checked").length != 1){
					$('#dialog-currently').dialog( "open" );
					return;
				}
			}
		}
		// �Է� ������ ��� || �������� �Ѿ��� ���
		if( $("input[name=plan]").val() == ''){
			$('#dialog-plan').dialog( "open" );
			return;
		}
		if( $("input[name=plan]").val().length > 300 ){
			$('#dialog-planLength').dialog( "open" );
			return;
		}
		if( $("input[name=pay]").val() == ''){
			$('#dialog-pay').dialog( "open" );
			 return;
		}
		if( $("input[name=pay]").val().length > 300 ){
			$('#dialog-payLength').dialog( "open" );
			return;
		}
		if( $("input[name=reason]").val() == ''){
			$('#dialog-reason').dialog( "open" );
			return;
		}
		if( $("input[name=reason]").val().length > 300 ){
			$('#dialog-reasonLength').dialog( "open" );
			return;
		}
		if( $("input[name=situation]").val() == ''){
			$('#dialog-situation').dialog( "open" );
			return;
		}
		if( $("input[name=situation]").val().length > 300 ){
			$('#dialog-situationLength').dialog( "open" );
			return;
		}
		

    	
    	var job;
    	var addr;
    	var mate;
    	var mateAgree='';
    	var raise;
    	var currently='';
    	var plan = $("input[name=plan]").val();
    	var pay = $("input[name=pay]").val();
    	var reason = $("input[name=reason]").val();
    	var situation = $("input[name=situation]").val();
    	
    	// ����
    	if( $("input[name=job]:checked").val() == 1 ){
    		job = '�л�';
    	}else if($("input[name=job]:checked").val() == 2) {
    		job = '������';
    	}else if($("input[name=job]:checked").val() == 3) {
    		job = '��Ÿ';
    	}
    	// ������
    	if( $("input[name=addr]:checked").val() == 1 ){
    		addr = '����';
    	}else if($("input[name=addr]:checked").val() == 2) {
    		addr = '����Ʈ';
    	}else if($("input[name=addr]:checked").val() == 3) {
    		addr = '����';
    	}else if($("input[name=addr]:checked").val() == 4) {
    		addr = '��Ÿ';
    	}
    	// ������
    	if( $("input[name=mate]:checked").val() == 1 ){
    		mate = '����';
    		// ����
        	if( $("input[name=mateAgree]:checked").val() == 1 ){
        		mateAgree = '����';
        	}else if($("input[name=mateAgree]:checked").val() == 2) {
        		mateAgree = '�������� ����';
        	}
    	}else if($("input[name=mate]:checked").val() == 2) {
    		mate = '����';
    	}
    	// ��������
    	if( $("input[name=raise]:checked").val() == 1 ){
    		raise = '����';
    		// ����
        	if( $("input[name=currently]:checked").val() == 1 ){
        		currently = '���� ��';
        	}else if($("input[name=currently]:checked").val() == 2) {
        		currently = '�����ϰ� ���� ����';
        	}
    	}else if( $("input[name=raise]:checked").val() == 2) {
    		raise = '����';
    	}
    	

		$('#confirm').html( '<strong>����</strong> : '+job
							+'<br/><strong>������ ����</strong> : '+addr
							+'<br/><strong>������ ����</strong> : '+mate
							+'<br/><strong>���� ����</strong> : '+mateAgree
							+'<br/><strong>��������</strong> : '+raise
							+'<br/><strong>���� ���� ����</strong> : '+currently
							+'<br/><strong>�������� ��ȹ</strong> : <br/>'+plan
							+'<br/><strong>1�� ������</strong> : <br/>'+pay
							+'<br/><strong>�Ծ��û ����</strong> : <br/>'+reason
							+'<br/><strong>��Ȳ�� ���� ��ó</strong> : <br/>'+situation 
							+'<br/><br/><br/><strong>��û �� <u>��ȸ, ����, ����</u>�� �Ұ����մϴ�. ��û�Ͻðڽ��ϱ�?</strong>');
		
		$('#dialog-confirm').dialog( "open" );
				
	}
	
    
    $(function() {
		$( "button:contains('��û')" ).on("click" , function() {
			fncAddApply();
		});
		
		$( "a:contains('���')" ).on("click" , function() {
			self.location = "/adopt/getAdopt?postNo=${apply.adoptNo}"
		});
	 });	
      
      
    </script>
  
  
  </body>
</html>