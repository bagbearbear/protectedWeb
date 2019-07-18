<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
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
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		 $(function() {
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncAddApply();
			});
			
			$( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
				self.location = "../index.jsp"
			});
		});	
		
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
// 				$("form")[0].reset();
				alert("�� ��� ��� -> �������")
			});
		});	
	
		
		function fncAddApply() {
			alert("��û�Ϸ� dialog")
			$("form").attr("method" , "POST").attr("action" , "/apply/addApply").submit();
		}
		
		
	</script>		

</head>

<body>




	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
		<h1 class="bg-primary text-center">�Ծ��û</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		<input type="hidden" name="id" value="user03" >
		<input type="hidden" name="adoptNo" value="${ apply.adoptNo }" >
		
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-offset-1 col-sm-3 control-label">����ó</label>
		    <div class="col-sm-4">
		      <input type="number" class="form-control" id="phone" name="phone" value="01121234567" placeholder="����ó">
		     <span id="pwdTest" > </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="adoptArea" class="col-sm-offset-1 col-sm-3 control-label">������ �����ϼ���.</label>
		    <div class="col-sm-4">
		      <input type="radio"  name="jop" value="1">�л�
		      <input type="radio"  name="jop" value="2">������
		      <input type="radio"  name="jop" value="3">��Ÿ
		    </div>
		  </div>
	  
		  <div class="form-group">
		    <label for="location" class="col-sm-offset-1 col-sm-3 control-label">�������� �����ϼ���.</label>
		    <div class="col-sm-4">
		      <input type="radio"  name="addr" value="1">����Ʈ
		      <input type="radio"  name="addr" value="2">����
		      <input type="radio"  name="addr" value="3">����
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogBreed" class="col-sm-offset-1 col-sm-3 control-label">������ ���θ� �����ϼ���.</label>
		    <div class="col-sm-4">
		      <input type="radio"  name="mate" value="1">����
		      <input type="radio"  name="mate" value="2">����
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogWeight" class="col-sm-offset-1 col-sm-3 control-label"><u>�������� �ִ� ���</u>, <br/>���� ���θ� �����ϼ���.</label>
		    <div class="col-sm-4">
		      <input type="radio"  name="mateAree" value="1">����
		      <input type="radio"  name="mateAree" value="2">����
		    </div>
		  </div>
	  
		  <div class="form-group">
		    <label for="dogSize" class="col-sm-offset-1 col-sm-3 control-label">�ݷ��� ���������� �ֽ��ϱ�?</label>
		     <div class="col-sm-2">
		      <input type="radio"  name="raise" value="1">����
		      <input type="radio"  name="raise" value="2">����
		   	 </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogGender" class="col-sm-offset-1 col-sm-3 control-label"><u>�ݷ��� ���������� �ִ� ���</u>, <br/>���� ���� �� �Դϱ�?</label>
		     <div class="col-sm-2">
		      <input type="radio"  name="currently" value="1">������
		      <input type="radio"  name="currently" value="2">�����߾ƴ�
		     </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPay" class="col-sm-offset-1 col-sm-3 control-label">�ݷ����� �Ծ��ϰ� �� ���, <br/>�������� ��ȹ�� �������ּ���.</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="plan" name="plan" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogStatus" class="col-sm-offset-1 col-sm-3 control-label">�ݷ����� �Ծ��ϰ� �� ���, <br/>1�Ⱓ�� ���� ��� ���ּ���.</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="pay" name="pay" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogChar" class="col-sm-offset-1 col-sm-3 control-label">�ݷ����� �Ծ��ϰ� ���� ������ �������ּ���.</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="reason" name="reason">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPersonality" class="col-sm-offset-1 col-sm-3 control-label">�ݷ����� �Ծ��ϰ� ��Ȳ�� �ٲ� ���, <br/>��ó����� �������ּ���.</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="situation" name="situation">
		    </div>
		  </div>
		  
		  &nbsp;
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >��û</button>
			  <a class="btn btn-primary btn" href="#" role="button">���</a>
			</div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
</body>

</html>