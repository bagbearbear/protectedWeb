<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	//============= "���"  Event ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		 $( "button.btn.btn-primary" ).on("click" , function() {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('���')" ).html() );
			fncAddProduct();
		});
	});	

	//============= "���"  Event ó�� ��  ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		 $( "a[href='#' ]" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('���')" ).html() );
				$("form")[0].reset();
		});
	});	

	function fncAddProduct(){
// 		//Form ��ȿ�� ����
		
// 		var name=$("input[name='prodName']").val();
// 	 	//var name = document.detailForm.prodName.value;
// 	 	var detail=$("input[name='prodDetail']").val();
// 		//var detail = document.detailForm.prodDetail.value;
// 		var manuDate=$("input[name='manuDate']").val();
// 		//var manuDate = document.detailForm.manuDate.value;
// 		var price=$("input[name='price']").val();
// 		//var price = document.detailForm.price.value;
	
// 		if(name == null || name.length<1){
// 			alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
// 			return;
// 		}
// 		if(detail == null || detail.length<1){
// 			alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
// 			return;
// 		}
// 		if(manuDate == null || manuDate.length<1){
// 			alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
// 			return;
// 		}
// 		if(price == null || price.length<1){
// 			alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
// 			return;
// 		}
		
		$("form").attr("method", "POST").attr("action" , "/shop/product/addProduct").submit();
	}
	
	$(function() {
		$( "#manuDate" ).datepicker({
				dateFormat: "yy-mm-dd"
		});
	});




</script>
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">�� ǰ �� ��</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="��ǰ���� �ݵ�� �Է����ּ���">
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger"></strong>
		      </span>
		    </div>
		   </div>
		   <div class="form-group">
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�ڵ�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodCode" name="prodCode" placeholder="��ǰ���� �ݵ�� �Է����ּ���">
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger"></strong>
		      </span>
		    </div>
		   </div>
		      
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="country" name="country" placeholder="��ǰ �������� �Է����ּ���">
		    </div>
		    </div>
		    
		     <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="company" name="company" placeholder="��ǰ �������� �Է����ּ���">
		    </div>
		    </div>
	
<!-- 		     <div class="form-group"> -->
<!-- 		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label> -->
<!-- 		    <div class="col-sm-4"> -->
<!-- 		     <input type="file" class="form-control" id="fileName" name="fileName" placeholder="�̹����� ������ּ���"> -->
<!-- 		    </div> -->
<!-- 		    </div> -->
		    
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="��ǰ �������� �Է����ּ���">
		    </div>
		    </div>
		  
		  <div class="form-group">
					<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��������</label>
		    			<div class="col-sm-4">
		     				 <input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="��ǰ�������ڸ� �Է����ּ���" readonly>
						</div>
				</div>
<br>
		    
		    <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">�� 	��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="��ǰ������ �Է����ּ���">
		    </div>
		    </div>
		    
		    <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="stock" name="price" placeholder="�������� �Է����ּ���">
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
	
</body>

</html>
