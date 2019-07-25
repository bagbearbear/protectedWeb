<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
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
    
    	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<link rel="stylesheet" href="/resources/demos/style.css">
  		<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">�����޾ư���</h3>
	       	<c:if test="${ sessionScope.user.role == admin }">
	       		<input type="button" id="couponManage" value="�������/����">
	       	</c:if>
	    </div>
		
		<form class="form-horizontal" name="formal" enctype="multipart/form-data">
			
		<div class="row">
		    <div style="float:left" class="col-md-4">
			   <div style="float:left" class="col-sm-4">
				  <input type="file" class="form-control" id="couponImage" 
				  name="couponImg" style="width: 300px; height: 40px" maxLength="13"/>
			   </div>
		  	</div>	
				
				<div style="float:right; min-width:65%" class="col-md-8"> 
			
					<div class="row">
				  		<div class="col-xs-4 col-md-6"><strong>�����ڵ�</strong></div>
						<div class="col-xs-8 col-md-6">
							<input type="text" id="couponCode" name="couponCode" placeholder="�����ڵ��Է�">
						</div>
					</div>
					
					<hr/>
					
					<div class="row">
				  		<div class="col-xs-4 col-md-6"><strong>�����̸�</strong></div>
						<div class="col-xs-8 col-md-6">
							<input type="text" id="couponName" name="couponName" placeholder="�����̸��Է�">
						</div>
					</div>
					
					<hr/>
					
					<div class="row">
				  		<div class="col-xs-4 col-md-6"><strong>���αݾ�</strong></div>
						<div class="col-xs-8 col-md-6">
							<input type="text" id="discount" name="discount" placeholder="���ΰ����Է�">
						</div>
					</div>
					
					<hr/>
					
					<div class="row">
				  		<div class="col-xs-4 col-md-6"><strong>�������</strong></div>
						<div class="col-xs-8 col-md-6">
							<input type="text" readonly="readonly" id="datepicker1" name="makeDate" placeholder="��������Է�">
						</div>
					</div>
					
					<hr/>
					
					<div class="row">
				  		<div class="col-xs-4 col-md-6"><strong>������</strong></div>
						<div class="col-xs-8 col-md-6">
							<input type="text" readonly="readonly" id="datepicker2" name="limitDate" placeholder="�������Է�">
						</div>
					</div>
					
					<hr/>
					
					<input type="hidden" id="couponStatus" name="couponStatus" value="0">
					
					<div class="row" align="right">
				  		<input type="submit" id="submit" value="�������">
					</div>
				
				</div>
		
		</div>
		
		<hr/>

	</form>
	</div>
	
	
 	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		$(function(){
			$("#datepicker1").datepicker({
				dateFormat: "yy-mm-dd",
				minDate: '-100y',
				yearRange: 'c-100:c+10',
				changeMonth: true,
				changeYear: true
			});
		});
		
		$(function(){
			$("#datepicker2").datepicker({
				dateFormat: "yy-mm-dd",
				minDate: '-100y',
				yearRange: 'c-100:c+10',
				changeMonth: true,
				changeYear: true
			});
		});
		
		 $(function() {
			 $( "#submit" ).on("click" , function() {
				 $("form[name=formal]").attr("method" , "POST").attr("action" , "/coupon/addCouponManage");
				});
		});
		
	</script>

</body>

</html>