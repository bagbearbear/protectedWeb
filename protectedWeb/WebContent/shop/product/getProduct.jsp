<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   <link href="/css/styles.css">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원정보수정 Event  처리 =============	
		
		 $( function() {
				$("#buy").bind("click", function() {
					alert("구매정보를 입력해주세요.")
					self.location = "/purchase/addOrder?prodNo=${product.prodNo }";
					
				});
				
				$("#re").bind("click", function() {
					self.location = "/product/updateProduct?prodNo=${product.prodNo}"
				});
				
				
				$( "#yes" ).on("click" , function() {
					self.location = "/product/listProduct?menu=search";
				});
			});
		
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
							<h3 class=" text-info">상품상세조회</h3>
							
							 <h5 class="text-muted">내 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5>
	    </div>
		
		<hr/>
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>상품번호</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodNo }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-4">${ product.prodDetail}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품가격</strong></div>
			<div class="col-xs-8 col-md-4">${ product.price}</div>
		</div>
		
		<hr/>
		
		
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>할인가격</strong></div>
			<div class="col-xs-8 col-md-4">${product.discountPrice}</div>
		</div>
		
		<hr/>
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>제조사</strong></div>
			<div class="col-xs-8 col-md-4">${ product.company}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>원산지</strong></div>
			<div class="col-xs-8 col-md-4">${ product.country}</div>
		</div>
		<hr/>
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			       
	  			       <button type="button" class="btn btn-primary" id="buy">구매</button>
	  			
	  			<button type="button" class="btn btn-primary" id="yes">이전</button>
	  		</div>
		</div>
		
		<br/>
		
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->
 	

</body>

</html>