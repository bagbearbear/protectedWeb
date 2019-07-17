<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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
	<title>Insert title here</title>
</head>
<body>

		<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">ȸ �� �� ��</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" name="formal">
		<input type="hidden" id="kakao" name="kakao" value="${ kakao }">
		  <div class="form-group">
		    <label for="id" class="col-sm-offset-1 col-sm-3 control-label">�� �� ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="id" name="id" placeholder="�ߺ�Ȯ���ϼ���">
		       <span id="helpBlock" class="help-block">
		      </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw" class="col-sm-offset-1 col-sm-3 control-label">��й�ȣ</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="pw" name="pw" placeholder="��й�ȣ">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw2" class="col-sm-offset-1 col-sm-3 control-label">��й�ȣ Ȯ��</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="pw2" name="pw2" placeholder="��й�ȣ Ȯ��">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">�̸�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userName" name="userName" placeholder="ȸ���̸�">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="nickname" class="col-sm-offset-1 col-sm-3 control-label">�г���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="nickname" name="nickname" placeholder="�г���">
		    </div>
		  </div>
		  

		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <input type="submit" id="submit" name="submit" class="btn btn-primary" value="�� &nbsp;��">
		      <input type="submit" id="addition" name="addition" class="btn btn-primary" value="�߰�����">
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		
 	</div>


     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "����"  Event ���� =============
		$(function() {
			
			$( "#submit" ).on("click" , function() {
				var id=$("input[name='id']").val();
				var pw=$("input[name='pw']").val();
				var pw_confirm=$("input[name='pw2']").val();
				var name=$("input[name='userName']").val();
				
				
				if(id == null || id.length <1){
					alert("���̵�� �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(pw == null || pw.length <1){
					alert("�н������  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(pw_confirm == null || pw_confirm.length <1){
					alert("�н����� Ȯ����  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(name == null || name.length <1){
					alert("�̸���  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				
				if( pw != pw_confirm ) {				
					alert("��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�.");
					$("input:text[name='password2']").focus();
					return;
				}
				
				$("form[name=formal]").attr("method" , "POST").attr("action" , "/users/addUsersBase");
			});
		});	
		
		$(function(){
			
			$("#id").keyup(function(){
				var id=$("#id").val();
				var checkId=JSON.stringify({id:id});
				$.ajax({
					type : "POST",
					contentType : "application/json",
					url : "/users/json/checkDuplication",
					data : checkId,
					datatype : "json" ,
					success : function(response){
						if($.trim(response.result)==0){
							$('#helpBlock').html("��밡��");
							$('#submit').attr('disabled', false);
						}else{
							$('#helpBlock').html("���Ұ�");
							$('#submit').attr('disabled', true);
						}
					},
					error : function(request,status,error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				})
			});
		});
	
		
		$(function() {
			
			$( "#addition" ).on("click" , function() {
				var id=$("input[name='id']").val();
				var pw=$("input[name='pw']").val();
				var pw_confirm=$("input[name='pw2']").val();
				var name=$("input[name='userName']").val();
				
				
				if(id == null || id.length <1){
					alert("���̵�� �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(pw == null || pw.length <1){
					alert("�н������  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(pw_confirm == null || pw_confirm.length <1){
					alert("�н����� Ȯ����  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(name == null || name.length <1){
					alert("�̸���  �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				
				if( pw != pw_confirm ) {				
					alert("��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�.");
					$("input:text[name='password2']").focus();
					return;
				}
				
				$("form[name=formal]").attr("method" , "POST").attr("action" , "/users/addUsersBase2");
			});
		});	
		
		
		//============= "���"  Event ó�� ��  ���� =============
		$(function() {
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
	

		


		
		

	</script>		
</body>
</html>