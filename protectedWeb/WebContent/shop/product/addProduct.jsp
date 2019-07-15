<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


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
		 $( "#addbutton" ).on("click" , function() {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('���')" ).html() );
			fncAddProduct();
		});
	});	

	//============= "���"  Event ó�� ��  ���� =============
	$(function() {
		 $( "#canclebutton" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('���')" ).html() );
				$("form")[0].reset();
		});
	});	

	function fncAddProduct(){
		//Form ��ȿ�� ����
		
		var prodName=$("input[name='prodName']").val();
	 	//var name = document.detailForm.prodName.value;
	 	var price=$("input[name='price']").val();
		//var detail = document.detailForm.prodDetail.value;
		var manuDate=$("input[name='manuDate']").val();
		//var manuDate = document.detailForm.manuDate.value;
		var company=$("input[name='company']").val();
		//var price = document.detailForm.price.value;
		var country=$("input[name='country']").val();
		//var price = document.detailForm.price.value;
		var discountPrice=$("input[name='discountPrice']").val();
		//var price = document.detailForm.price.value;
		var quantity=$("input[name='quantity']").val();
		//var price = document.detailForm.price.value;
		var prodDatail=$("input[name='prodDetail']").val();
		//var price = document.detailForm.price.value;
	
		if(name == null || prodName.length<1){
			alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(prcie == null || price.length<1){
			alert("��ǰ������ �Է����ּ���");
			return;
		}
		if(company == null || company.length<1){
			alert("��ǰ �����縦 �Է����ּ���");
			return;
		}
		if(country == null || country.length<1){
			alert("�������� �Է����ּ���.");
			return;
		}
		if(discountPrice == null || discountPrice.length<1){
			alert("��ǰ ���ΰ��� �Է����ּ���");
			return;
		}
		if(price == null || quantity.length<1){
			alert("��ǰ������ �Է����ּ���");
			return;
		}
		if(price == null || prodDetail.length<1){
			alert("��ǰ �������� �Է����ּ���");
			return;
		}
		
		$("form").attr("method", "POST").attr("action" , "/shop/Product/addProduct").submit();
	}
	
	$(function() {
		$( "#manuDate" ).datepicker({
				dateFormat: "yy-mm-dd"
		});
	});




</script>
</head>

<body>

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">

		<h2>DOG SHOP | <small>��ǰ���</small></h2>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label" >��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="��ǰ���� �ݵ�� �Է����ּ���">
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger"></strong>
		      </span>
		    </div>
		   </div>
	
		     <!--  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		     <input type="file" class="form-control" id="fileName" name="fileName" placeholder="�̹����� ������ּ���">
		    </div>
		    </div>-->
		  
		    
		    <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">�� 	��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="��ǰ������ �Է����ּ���">
		    </div>
		    </div>
		    
		    <div class="form-group">
		    <label for="discountPrice" class="col-sm-offset-1 col-sm-3 control-label">���ΰ�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="discountPrice" name="discoutPrice" placeholder="���ξ��� �Է����ּ���">
		    </div>
		    </div>
		    
		    
		    <div class="form-group">
		    <label for="country" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="quantity" name="quantity" placeholder="�������� �Է����ּ���">
		    </div>
		    </div>
		    
		     <div class="form-group">
		    <label for="country" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="country" name="country" placeholder="�������� �Է����ּ���">
		    </div>
		    </div>
		    
		     <div class="form-group">
		    <label for="company" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="company" name="company" placeholder="�����縦 �Է����ּ���">
		    </div>
		    </div>
		    
		    <div class="form-group">
			<label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
		    <div class="col-sm-4">
		     		<input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="��ǰ�������ڸ� �Է����ּ���" readonly>
			</div>
			</div>
<br>
		    
		    <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <textarea class="form-control" rows="3" placeholder="��ǰ�󼼳����� �������ּ���" id="prodDetail" name="prodDetail"></textarea>
		    </div>
		    </div>
		    
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-default btn-lg" id="addbutton">�� &nbsp;��</button>
			  <a class="btn btn-default btn-lg" href="#" role="button" id="canclebutton">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
</body>

</html>