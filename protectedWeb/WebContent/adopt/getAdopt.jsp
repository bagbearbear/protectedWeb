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
		
		//============= ȸ���������� Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button:contains('����')" ).on("click" , function() {
					self.location = "/adopt/updateAdopt?postNo=${adopt.postNo}"
			});
			
			 $( "button:contains('����')" ).on("click" , function() {
				 	alert("�����Ͻðڽ��ϱ� dialog �߰�");
					self.location = "/adopt/updateStatusCode?postNo=${adopt.postNo}"
			});
			
			 $( "button:contains('��û')" ).on("click" , function() {
					self.location = "../apply/getTerms.jsp?postNo=${adopt.postNo}"
			});
			
			 $( "button:contains('���')" ).on("click" , function() {
					self.location = "/adopt/listAdopt?boardCode=${adopt.boardCode}"
			});
			
			 $( "button:contains('��û�ۺ���')" ).on("click" , function() {
					self.location = "/apply/listApply?adoptNo=${adopt.postNo}"
			});
			
			 $( "button:contains('��ȣ�Ұ�')" ).on("click" , function() {
					self.location = "../index.jsp"
			});
		 
		});
		
		
		 $(function() {			
				$( "button:contains('�о�Ϸ�')" ).on("click" , function() {
					var postNo = ${adopt.postNo};
					alert(typeof postNo);

					$.ajax( 
						 		{
									url : "/adopt/json/updateStatusCode/"+postNo ,
									method : "GET" ,
									dataType : "json" ,
									headers : {
												"Accept" : "application/json",
												"Content-Type" : "application/json"
											  },
									success : function(status) {
										$( '#complete' ).text('<b>�Ϸ��</b>');
									},
									error: function(request, status, error){ 
										alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
							        }
						});
				});	
			
		 });
		
// 		function fncAddUser() {
// 			self.location = "/adopt/listAdopt?boardCode=${adopt.boardCode}"
// 		}
		
	</script>
	
</head>

<body>

	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<button type="button" class="btn btn-primary">��ȣ�Ұ�</button>
	
		<div class="page-header">
	       <h3 class=" text-info">
		        <c:if test="${adopt.boardCode eq 'AD' }">
		  			�о�� ����ȸ
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			������ ����ȸ
		  		</c:if>
	       </h3>
	    </div>
	    <input type="hidden" name="postNo" value=" ${ adopt.postNo }" >
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�Խ����ڵ�</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.boardCode}</div>
		</div>
		
		<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�۹�ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.postNo}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>���̵�</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.id}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.postTitle}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�۳���</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.postContent}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����ó</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.phone}</div>
		</div>
		
		<hr/>
		
		<c:if test="${adopt.boardCode eq 'AD' }">
			<div class="row">
		  		<div class="col-xs-4 col-md-2 "><strong>�о簡������</strong></div>
				<div class="col-xs-8 col-md-4">${adopt.adoptArea}</div>
			</div>
			
			<hr/>
		</c:if>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>
	  			<c:if test="${adopt.boardCode eq 'AD' }">
		  			�߰���ġ
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			������ġ
		  		</c:if>
	  		</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.location}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogBreed}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogWeight}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>ũ��</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogSize}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogGender}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>
				<c:if test="${adopt.boardCode eq 'AD' }">
		  			å�Ӻ�
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			��ʺ�
		  		</c:if>
			</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogPay}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogStatus}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�ܸ�Ư¡</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogChar}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>����</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogPersonality}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>
	  			<c:if test="${adopt.boardCode eq 'AD' }">
		  			�߰�����
		  		</c:if>
			    <c:if test="${adopt.boardCode eq 'MS' }">
		  			��������
		  		</c:if>
	  		</strong></div>
			<div class="col-xs-8 col-md-4">${adopt.dogDate}</div>
		</div>
		
		<hr/>

		<hr/>
		
		
	
		
		<div class="row">
	  		<div class="col-md-12 text-center ">
	  		
	  			<c:if test="${adopt.statusCode eq '1' }">
		  			<button type="button" class="btn btn-primary">����</button>
		  			<button type="button" class="btn btn-primary">����</button>
		  			<c:if test="${adopt.boardCode eq 'MS' }">
				  		<button type="button" class="btn btn-primary">ã��Ϸ�</button>
				  	</c:if>
	  			</c:if>
	  			<c:if test="${adopt.statusCode eq '2' }">
	  				<button type="button" class="btn btn-primary">�о�Ϸ�</button>
	  				<button type="button" class="btn btn-primary">��û�ۺ���</button>
	  			</c:if>
	  			<br/><br/>
	  			<button type="button" class="btn btn-primary">���</button>
<%-- 	  			<c:if test="${user.role eq 'admin' }"> --%>
<!-- 	  				<button type="button" class="btn btn-default">���</button> -->
<%-- 	  			</c:if> --%>
				<c:if test="${adopt.boardCode eq 'AD' }">
		  			<button type="button" class="btn btn-primary">�Ծ��û</button>
		  		</c:if>
		  		<br/><br/>
		  		<span id="complete">${adopt.statusCode }</span>
	  		</div>
		</div>
		
		<br/>
		
 	</div>
 	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->

</body>

</html>