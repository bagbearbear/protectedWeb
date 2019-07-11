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
				fncAddUser();
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
	
		
		function fncAddUser() {
			$("form").attr("method" , "POST").attr("action" , "/adopt/updateAdopt").submit();
		}
		
		
	</script>		

</head>

<body>




	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
	
		<h1 class="bg-primary text-center">
			<c:if test="${adopt.boardCode eq 'AD' }">
	  			�о�� ����
	  		</c:if>
		    <c:if test="${adopt.boardCode eq 'MS' }">
	  			������ ����
	  		</c:if>
		
		</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		<input type="hidden" name="boardCode" value=" ${ adopt.boardCode.trim() }" >
		<input type="hidden" name="postNo" value=" ${ adopt.postNo }" >
		
		  <div class="form-group">
		    <label for="postTitle" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" value="${ adopt.postTitle }" placeholder="������"  >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="postContent" class="col-sm-offset-1 col-sm-3 control-label">�۳���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postContent" name="postContent" value="${ adopt.postContent }" placeholder="�۳���">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-offset-1 col-sm-3 control-label">����ó</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="phone" name="phone"  value="${ adopt.phone }" placeholder="����ó">
		     <span id="pwdTest" > </span>
		    </div>
		  </div>
		  
		  <c:if test="${adopt.boardCode eq 'AD' }">
			  <div class="form-group">
			    <label for="adoptArea" class="col-sm-offset-1 col-sm-3 control-label">�о簡������</label>
			    <div class="col-sm-4">
			      <input type="text" class="form-control" id="adoptArea" name="adoptArea" value="${ adopt.adoptArea }" placeholder="�о簡������">
			    </div>
			  </div>
		  </c:if>
		  
		  
		   <div class="form-group">
		    <label for="location" class="col-sm-offset-1 col-sm-3 control-label">
				<c:if test="${adopt.boardCode eq 'AD' }">
		  			�߰���ġ
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			������ġ
		  		</c:if>
			</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="location" name="location" value="${ adopt.location }" placeholder="��ġ">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogBreed" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogBreed" name="dogBreed" value="${ adopt.dogBreed }" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogWeight" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="number" class="form-control" id="dogWeight" name="dogWeight" value="${ adopt.dogWeight }" step="any"  >
		    </div>
		  </div>
	  
		  <div class="form-group">
		    <label for="dogSize" class="col-sm-offset-1 col-sm-3 control-label">ũ��</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="dogSize" id="dogSize">
				  	<option value="������" >������</option>
					<option value="������" >������</option>
					<option value="������" >������</option>
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogGender" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="dogGender" id="dogGender">
				  	<option value="����" >����</option>
					<option value="����" >����</option>
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPay" class="col-sm-offset-1 col-sm-3 control-label">
				<c:if test="${adopt.boardCode eq 'AD' }">
		  			å�Ӻ�
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			��ʺ�
		  		</c:if>
			</label>
		    <div class="col-sm-4">
		      <input type="number" class="form-control" id="dogPay" name="dogPay"  value="${ adopt.dogPay }" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogStatus" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogStatus" name="dogStatus" value="${ adopt.dogStatus }" placeholder="������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogChar" class="col-sm-offset-1 col-sm-3 control-label">�ܸ�Ư¡</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogChar" name="dogChar" value="${ adopt.dogChar }" placeholder="�ܸ�Ư¡">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogPersonality" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogPersonality" name="dogPersonality" value="${ adopt.dogPersonality }" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="dogDate" class="col-sm-offset-1 col-sm-3 control-label">
			    <c:if test="${adopt.boardCode eq 'AD' }">
		  			�߰�����
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			��������
		  		</c:if>
		    </label>
		    <div class="col-sm-4">
		      <input type="date" class="form-control" id="dogDate" name="dogDate" placeholder="�߽߰�������">
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