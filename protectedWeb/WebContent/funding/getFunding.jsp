<%@ page contentType="text/html; charset=EUC-KR"%>
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
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>

		.container{
		width: 500px;
		}	
		
		#voteDate{
		width:320px;
		float:left;
		}
     </style>
   

</head>

<body>
	<!-- ToolBar Start /////////////////////////////////////-->
	 <jsp:include page="/layout/toolbar.jsp"></jsp:include>
   	<!-- ToolBar End /////////////////////////////////////-->
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class=" col-md-offset-3 ">
			<font size=5>${funding.postTitle}</font> &emsp;${funding.id} 
				<div  align="right"  ><b>${funding.voteStartDate }</b></div>
	    </div>
	    
	    <div class="media">  
		<div class="media-left media-middle col-md-offset-3 ">
		      <img class="media-object" src="/resources/file/fileSF/${file.fileName }" width="450px;" height="280px;" >
		</div>
		<div class="media-body">
		
			<h3 class="media-heading">${funding.fundPay }��</h3>
			    
			<h4 class="media-heading">�����Ⱓ ${funding.voteRemainDate }��</h4>
			    
			 <div class="progress">
			  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="50" style="width: 20%;"></div>
			 </div>
			   <div  id="voteDate" >${funding.voteStartDate}</div>  <div >${funding.voteEndDate}</div>
	
			    
			    
		</div>
		</div>


		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�Ŀ���ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${funding.postNo}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�Ŀ���ǥ�ݾ�</strong></div>
			<div class="col-xs-8 col-md-4">${funding.fundTargetPay }</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>�Ŀ���ǥ�Ⱓ</strong></div>
			<div class="col-xs-8 col-md-4">${funding.fundTargetDay}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${funding.postTitle}</div>
		</div>		
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�۳���</strong></div>
			<div class="col-xs-8 col-md-4">${funding.postContent}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�޴���ȭ��ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${funding.phone}</div>
		</div>

 		<hr/>
 			
		<div class="row">	
	  		<div class="col-md-10 text-center">
	  			<button type="button" class="btn btn-primary">����</button>
	  			<button type="button" class="btn btn-warning">����</button>
	  		</div> 		
	 	</div>
	 	
	 	<br/><br/>			
		<br/>
		
 	</div>
 	
 	     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	 $(function() {
		 
		 $( "button.btn.btn-primary" ).on("click" , function() {
			 self.location = "/funding/updateFunding?postNo=${funding.postNo}"
			});
			 
			 $( "button.btn.btn-warning" ).on("click" , function() {
					history.go(-1);
				});

		});
	
	
	</script>
 	
</body>

</html>

