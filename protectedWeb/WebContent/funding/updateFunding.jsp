<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<!-- ////////////////////�޷� /////////////////////////////-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
		
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
		body {
            padding-top : 50px;
        }
    </style>
</head>

<body>


	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-center">
	       <h3 class=" text-info">�Ŀ���û����</h3>
	       <h5 class="text-muted">�Ŀ� ������ <strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>
	    </div>
	    
	    <!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="fundTargetPay" class="col-sm-offset-1 col-sm-3 control-label">�Ŀ���ǥ�ݾ�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="fundTargetPay" name="fundTargetPay" value="${funding.fundTargetPay}" placeholder="�Ŀ���ǥ�ݾ�" >
		    </div>
		  </div>
		
		  <div class="form-group">
		    <label for="fundTargetDay" class="col-sm-offset-1 col-sm-3 control-label">�Ŀ���ǥ�Ⱓ</label>
		    <div class="col-sm-4">
		       <select class="form-control" name="fundTargetDay" id="fundTargetDay">
		       	<c:forEach var ="i" begin="7" end ="30" step="1">
		       		<c:if test="${funding.fundTargetDay eq i }">
				  	<option value="${funding.fundTargetDay}" selected >${funding.fundTargetDay}</option>
		       		</c:if>
		       		<c:if test="${!(funding.fundTargetDay eq i) }">
		       		<option value="${i}" >${i}</option>
		       		</c:if>
				 </c:forEach>
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="postTitle" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" value="${funding.postTitle}" placeholder="������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="postContent" class="col-sm-offset-1 col-sm-3 control-label">�۳���</label>
		    <div class="col-sm-4">
		      <textarea class="form-control" id="postContent" name="postContent"  placeholder="�۳���">${funding.postContent}</textarea>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">����ó</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="phone1" id="phone1">
				  	<option value="010" ${ ! empty funding.phone1 && funding.phone1 == "010" ? "selected" : ""  } >010</option>
					<option value="011" ${ ! empty funding.phone1 && funding.phone1 == "011" ? "selected" : ""  } >011</option>
					<option value="016" ${ ! empty funding.phone1 && funding.phone1 == "016" ? "selected" : ""  } >016</option>
					<option value="018" ${ ! empty funding.phone1 && funding.phone1 == "018" ? "selected" : ""  } >018</option>
					<option value="019" ${ ! empty funding.phone1 && funding.phone1 == "019" ? "selected" : ""  } >019</option>
				</select>
		    </div>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="phone2" name="phone2" value="${ ! empty funding.phone2 ? funding.phone2 : ''}"  placeholder="�����ȣ">
		    </div>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="phone3" name="phone3" value="${ ! empty funding.phone3 ? funding.phone3 : ''}"   placeholder="�����ȣ">
		    </div>
		    <input type="hidden" name="phone"  />
		  </div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
	  			<button type="button" class="btn btn-primary">����</button>
	  			<button type="button" class="btn btn-warning">���</button>
		    </div>
		  </div>
		  
		<input type="hidden" name="postNo" value="${funding.postNo}" /> 
		</form>
		<!-- form Start /////////////////////////////////////-->
	    
 	</div>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
 	
 	    <!--  ///////////////////////// JavaScript ////////////////////////// --> 
	<script type="text/javascript" >
	
		function fncUpdateProduct() {
			
			var value = "";	
			if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
				var value = $("#phone1 option:selected").val() + "-" 
									+ $("input[name='phone2']").val() + "-" 
									+ $("input[name='phone3']").val();
			}
			$("input:hidden[name='phone']").val( value );
			
			$("form").attr("method","POST").attr("action","/funding/updateFunding").attr("enctype","multipart/form-data").submit();
		}
		
		
		$( function() {
	
			//============= ���� Event  ó�� =============	
			 $( "button.btn.btn-primary" ).on("click" , function() {
				 fncUpdateProduct();
				});
				//============= ��� Event  ó�� =============
			 $( "button.btn.btn-warning").on("click" , function() {
					history.go(-1);
				});
		 });
		 
		//============= "�޷�(��������)"  Event ó�� ��  ���� =============
			$( function() {
				   
			      $( "#manuDate" ).datepicker( { dateFormat: 'yy-mm-dd' });
			   
			  } );
	
		
	</script>
</body>

</html>