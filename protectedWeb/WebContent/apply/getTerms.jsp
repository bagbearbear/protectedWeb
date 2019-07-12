<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
	
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button:contains('����')" ).on("click" , function() {
				 if(  $( '#termsAll').is(":checked") == false  ){
					 alert("��� ���ǿ� üũ�ϼ���");
				 } else{
					 $(self.location).attr("href","/apply/addApply?postNo=${param.postNo}");
				 }
			});
			
			 $( "button:contains('���')" ).on("click" , function() {
				 $(self.location).attr("href","/adopt/listAdopt?boardCode=AD");
			});
			 
			 $( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
					self.location = "../index.jsp"
			});
		});
		
	</script>
	
</head>

<body>

	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
		<div class="page-header">
	       <h3 class=" text-info">�Ծ��û�� �� ���</h3>
	    </div>
	
		<hr/>
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>1.</strong></div>
			<div class="col-xs-8 col-md-4">�Ծ��û�� �� ������ �� </div>
		</div>
		
		<hr/>
		
<!-- 		<div class="row"> -->
<!-- 	  		<input type="checkbox" value="terms1"> ���� -->
<!-- 		</div> -->
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>2.</strong></div>
			<div class="col-xs-8 col-md-4">�Ծ��û�� �� ������ ��2 </div>
		</div>
		
		<hr/>
		
<!-- 		<div class="row"> -->
<!-- 	  		<input type="checkbox" value="terms2"> ���� -->
<!-- 		</div> -->
		
		<hr/>


		<hr/>

		<hr/>
		<hr/>
		
		<div class="row">
	  		<input type="checkbox"  id="termsAll" > ��ε���
		</div>
		
		<hr/>
	
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  			<button type="button" class="btn btn-primary">����</button>
	  		</div>
		</div>
		
		<br/>
		
 	</div>

</body>

</html>