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
	          	
	          	
				<input type="hidden" name="id" value="${ apply.id }" >
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
		                	<label for="phone"><strong>����ó</strong>&nbsp;&nbsp;<span name="phone">����ó�� �ٸ� ��� ȸ�������� �������ּ���.</span></label>
		                	<input type="text" class="form-control" name="phone" value="${ apply.phone }" readonly>
		                </div>
	                </div>
    
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="job" value="�л�">�л�</div>
	                		<div class="col-md-2"><input type="radio"  name="job" value="������">������</div>
	                		<div class="col-md-2"><input type="radio"  name="job" value="��Ÿ">��Ÿ</div>
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ ������ �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="����">����</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="����Ʈ">����Ʈ</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="����">����</div>
	                		<div class="col-md-2"><input type="radio"  name="addr" value="��Ÿ">��Ÿ</div>
	               		</div>
               		</div>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>������ ���θ� �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="mate" value="����">����</div>
	                		<div class="col-md-2"><input type="radio"  name="mate" value="����">����</div>
	               		</div>
               		</div>
               		
               		<span name="mateAgree"></span>
               		
	            	<div class="col-md-12">
	              		<div class="form-group">
	                		<label for=""><strong>�ݷ��� �������� ���θ� �����ϼ���.</strong></label><br/>
	                		<div class="col-md-2"><input type="radio"  name="raise" value="����">����</div>
	                		<div class="col-md-5"><input type="radio"  name="raise" value="����">����</div>
	               		</div>
               		</div>
               		
               		<span name="currently"></span>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="plan"><strong>�ݷ����� �Ծ��ϰԵ� ���, �������� ��ȹ�� �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="plan"></span></label>
	                  		<input type="text" class="form-control" name="plan" value="" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="pay"><strong>�ݷ����� �Ծ��ϰԵ� ���, 1�Ⱓ�� ���� ���� �� ������ �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="pay"></span></label>
	                  		<input type="text" class="form-control" name="pay" value="" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="reason"><strong>�ݷ����� �Ծ��ϰ� ���� ������ �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="reason"></span></label>
	                  		<input type="text" class="form-control" name="reason" value="" placeholder="������ �Է��ϼ���.">
	               		</div>
               		</div>
               		
               		<div class="col-md-12">
	              		<div class="form-group">
	                		<label for="situation"><strong>�ݷ����� �Ծ��ϰ� ��Ȳ�� �ٲ� ���, ��� ��ó�� �� �Է��ϼ���.</strong>&nbsp;&nbsp;<span name="situation"></span></label>
	                  		<input type="text" class="form-control" name="situation" value="" placeholder="������ �Է��ϼ���.">
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
			  <p align="center"><br/>����� ��� �����ؾ� ��û�� �� �ֽ��ϴ�.</p>
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
			<div id="dialog-confirm" title="">
			  <p align="left" id="confirm" ></p>
			</div>     
       
<!-- 	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->      
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <jsp:include page="/layout/footer.jsp"></jsp:include>
    
    
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
	    $( "#dialog-job" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=job]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-addr" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=addr]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-mate" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=mate]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-mateAgree" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=mateAgree]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-afterMateAgree" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=afterMateAgree]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-raise" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=raise]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-currently" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=currently]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	$( function() {
	    $( "#dialog-afterCurrently" ).dialog({
	    	  autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=afterCurrently]:radio").prop('checked', false).focus();
		    	  }
		      }
	    });
	});
	
	
	$( function() {
	    $( "#dialog-confirm" ).dialog({
	    	  autoOpen: false,
		      width: 470,
		      height: 500,
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
			$('#dialog-afterMateAgree').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-afterMateAgree').dialog( "open" );
			$( "input[name=mateAgree]").prop('checked', false);
		}
	});
	
	$( "input[name=currently]" ).on('click', function(){
		if( $('input[name=raise]').length != 1 ){
			$('#dialog-afterCurrently').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-afterCurrently').dialog( "open" );
			$( "input[name=currently]").prop('checked', false);
		}
	});
	
	$( "input[name=mate]" ).on('click', function(){
		if( $(this).val() == "����" ){
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
	    		+"<label for=\"\"><strong>�������� ���� ���θ� �����ϼ���.<\/strong></label><br/>"
	    		+"<div class=\"col-md-12\"><input type=\"radio\"  name=\"mateAgree\" value=\"����\">����<\/div>"
	    		+"<div class=\"col-md-12\"><input type=\"radio\"  name=\"mateAgree\" value=\"�������� ����\">�������� ����<\/div>"
	    		+"<\/div><\/div>";
			$( 'span[name=mateAgree]').append(divMateAgree).hide().show('blind','slow');
		}
	});
	
	$( "input[name=raise]" ).on('click', function(){
		if( $(this).val() == "����" ){
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
			        		+"<label for=\"\"><strong>���� �������θ� �����ϼ���.<\/strong></label><br/>"
			        		+"<div class=\"col-md-12\"><input type=\"radio\"  name=\"currently\" value=\"���� ��\">���� ��<\/div>"
			        		+"<div class=\"col-md-12\"><input type=\"radio\"  name=\"currently\" value=\"�����ϰ� ���� ����\">�����ϰ� ���� ����<\/div>"
			       			+"<\/div><\/div>";
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
			$('#dialog-terms').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-terms').dialog( "open" );
			return;
		}
		// ����üũ
		if( $("input[name=job]:radio:checked").length != 1){
			$('#dialog-job').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-job').dialog( "open" );
			return;
		}
		// ������üũ
		if( $("input[name=addr]:checked").length != 1){
			$('#dialog-addr').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-addr').dialog( "open" );
			return;
		}
		// �����ο���üũ
		if( $("input[name=mate]:checked").length != 1){
			$('#dialog-mate').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-mate').dialog( "open" );
			return;
		}else{
			// ������������ üũ�ߴµ� ���ǿ���üũ ������ ���
			if( $( "input[name=mate]:checked" ).val() == 1 ){
				if( $("input[name=mateAgree]:checked").length != 1){
					$('#dialog-mateAgree').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
					$('#dialog-mateAgree').dialog( "open" );
					return;
				}
			}
		}
		// ��������üũ
		if( $("input[name=raise]:checked").length != 1){
			$('#dialog-raise').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			$('#dialog-raise').dialog( "open" );
			return;
			  
		}else{
			// �������������� üũ�ߴµ� �����������üũ ������ ���
			if( $( "input[name=raise]:checked" ).val() == 1 ){
				if( $("input[name=currently]:checked").length != 1){
					$('#dialog-currently').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
					$('#dialog-currently').dialog( "open" );
					return;
				}
			}
		}
		// �Է� ������ ��� || �������� �Ѿ��� ���
		if( $("input[name=plan]").val() == '' || $("input[name=plan]").val().length > 300 ){
			$("input[name=plan]").focus();
			return;
		}
		if( $("input[name=pay]").val() == '' || $("input[name=pay]").val().length > 300 ){
			$("input[name=pay]").focus();
			 return;
		}
		if( $("input[name=reason]").val() == '' || $("input[name=reason]").val().length > 300 ){
			$("input[name=reason]").focus();
			return;
		}
		if( $("input[name=situation]").val() == '' || $("input[name=situation]").val().length > 300 ){
			$("input[name=situation]").focus();
			return;
		}

    	
    	var job = $("input[name=job]:checked").val();
    	var addr = $("input[name=addr]:checked").val();
    	var mate = $("input[name=mate]:checked").val();
    	var mateAgree = $("input[name=mateAgree]:checked").val();
    	var raise = $("input[name=raise]:checked").val();
    	var currently = $("input[name=currently]:checked").val();
    	var plan = $("input[name=plan]").val();
    	var pay = $("input[name=pay]").val();
    	var reason = $("input[name=reason]").val();
    	var situation = $("input[name=situation]").val();
    	var confirmHTML;
    	
    	
    	if( $("input[name=mate]:checked").val() == "����" && $("input[name=raise]:checked").val() == "����" ){
    		confirmHTML = '<strong>[����]<\/strong> : '+job
						+'<br\/><strong>[������ ����]<\/strong> : '+addr
						+'<br\/><strong>[������ ����]<\/strong> : '+mate
						+'<br\/><strong>[��������]<\/strong> : '+raise
						+'<br\/><strong>[���� ���� ����]<\/strong> : '+currently
						+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+plan
						+'<br\/><strong>[1�� ������]<\/strong> : '+pay
						+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+reason
						+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+situation 
						+'<br\/><br\/><br\/><strong>��û �� <u>��ȸ, ����, ����<\/u>�� �Ұ����մϴ�. ��û�Ͻðڽ��ϱ�?<\/strong>';
    		
    	}else if($("input[name=mate]:checked").val() == "����" &&  $("input[name=raise]:checked").val() == "����"  ) {
    		confirmHTML = '<strong>[����]<\/strong> : '+job
						+'<br\/><strong>[������ ����]<\/strong> : '+addr
						+'<br\/><strong>[������ ����]<\/strong> : '+mate
						+'<br\/><strong>[��������]<\/strong> : '+raise
						+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+plan
						+'<br\/><strong>[1�� ������]<\/strong> : '+pay
						+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+reason
						+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+situation 
						+'<br\/><br\/><br\/><strong>��û �� <u>��ȸ, ����, ����<\/u>�� �Ұ����մϴ�. ��û�Ͻðڽ��ϱ�?<\/strong>';
    	}else if($("input[name=mate]:checked").val() == "����" &&  $("input[name=raise]:checked").val() == "����"  ) {
    		confirmHTML = '<strong>[����]<\/strong> : '+job
						+'<br\/><strong>[������ ����]<\/strong> : '+addr
						+'<br\/><strong>[������ ����]<\/strong> : '+mate
						+'<br\/><strong>[���� ����]<\/strong> : '+mateAgree
						+'<br\/><strong>[��������]<\/strong> : '+raise
						+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+plan
						+'<br\/><strong>[1�� ������]<\/strong> : '+pay
						+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+reason
						+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+situation 
						+'<br\/><br\/><br\/><strong>��û �� <u>��ȸ, ����, ����<\/u>�� �Ұ����մϴ�. ��û�Ͻðڽ��ϱ�?<\/strong>';
    	}else{
    		confirmHTML = '<strong>[����]<\/strong> : '+job
						+'<br\/><strong>[������ ����]<\/strong> : '+addr
						+'<br\/><strong>[������ ����]<\/strong> : '+mate
						+'<br\/><strong>[���� ����]<\/strong> : '+mateAgree
						+'<br\/><strong>[��������]<\/strong> : '+raise
						+'<br\/><strong>[���� ���� ����]<\/strong> : '+currently
						+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+plan
						+'<br\/><strong>[1�� ������]<\/strong> : '+pay
						+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+reason
						+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+situation 
						+'<br\/><br\/><br\/><strong>��û �� <u>��ȸ, ����, ����<\/u>�� �Ұ����մϴ�. ��û�Ͻðڽ��ϱ�?<\/strong>';
    	}
    	
    	if( mateAgree == '' ){
    		$("input[name=mateAgree]:checked").val('X');
    	}
    	if( currently == '' ){
    		$("input[name=currently]:checked").val('X');
    	}
    	
		$('#cfHTML').remove();
		$('#confirm').html( confirmHTML );
		$('#dialog-confirm').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
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