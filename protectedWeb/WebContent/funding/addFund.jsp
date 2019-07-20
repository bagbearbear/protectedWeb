<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<!-- i'm port -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    		
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
   
   
    <!-- jQuery UI toolTip ��� CSS-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- jQuery UI toolTip ��� JS-->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>		
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>

		#btn-ok{
		background: #fff;
        border:2px solid #29304d;
		color:#29304d;
		height:40px;
		width:150px;
		}
		.container{
		width: 1000px;
		font-size :15px;
		}		
		.form-group{
		padding-left:460px;
		padding-right:100px;
		}
		.form-group2{
		padding-left:170px;
		padding-right:100px;
		}		
		.form-form{
	    padding-left:15px;	
		}
    </style>

	</head>
	<body>
	<!-- ToolBar Start /////////////////////////////////////-->
	 <jsp:include page="/layout/toolbar.jsp"></jsp:include>
   	<!-- ToolBar End /////////////////////////////////////-->
      
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container ">
		<div class="form-group2">
		<div class="page-header text-center">	
		<font size=6>�Ŀ��� �Ϸ�Ǿ����ϴ�.  </font> �Ŀ� ���ּż� <strong  style="color:#225cba">����</strong>�ٶ��ϴ�.
	    </div>		
		</div>	
		<br/>
					<!--  table Start /////////////////////////////////////-->
			      <table class="table table-hover table-striped" >
			      
			        <thead>
			          <tr>
			            <th ></th>
			            <th><b>�Ŀ��� ����</b></th>
			            <th><b>�г���</b></th>	
			          </tr>
			        </thead>
			       
			 		<tbody>	
			 		   <tr>			
						  <td width="150px;" align="center"><img src="/resources/file/fileSF/${funding.mainFile}"  width="150px;" height="150px;"/></td>		
						  <td width="150px;">${funding.postTitle}</td>					 		  
						  <td width="150px;">${funding.nickname}</td> 
						</tr>
			        </tbody> 
			      
			      </table>
             	  <!--  table End /////////////////////////////////////--> 
				<br/>
				
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal center">
		  <div class="form-group  ">
			<font class="text-center" size="5"><b>�Ŀ���&emsp;&emsp;&emsp;</b></font>
			 ${participate.fundPay }
		  </div>
		  <div class="form-group ">
			<font class="text-center" size="5"><b>�Ŀ�����&emsp;&emsp;</b></font>
			 �Ͻ��Ŀ�
		  </div>		  
		  <div class="form-group ">
			<font class="text-center" size="5"><b>�Ŀ��ݾ�&emsp;&emsp;</b></font>
			 ${participate.fundPay }��
		  </div>  
 		  <div class="form-group ">
			<font class="text-center" size="5"><b>�������&emsp;&emsp;</b></font>
			 <c:if test="${participate.paymentCode eq 'card' }">
			 �ſ�ī��
			 </c:if>
			 <c:if test="${participate.paymentCode eq 'trans' }">
			 ������ü
			 </c:if>			 
		  </div>
			<br/><hr/>        
		  <br/><br/>
		  <div class="form-group ">
	  			<button type="button" id="btn-ok">Ȯ��</button>
		  </div>
		  <br/><br/><br/><br/><br/><br/><br/><br/>
		</form>
		<!-- form Start /////////////////////////////////////-->

    </div>
   <!--  ȭ�鱸�� div end /////////////////////////////////////-->
    <!--================ start footer Area  =================-->
    <!-- footer Start /////////////////////////////////////-->
	 <jsp:include page="/layout/footer.jsp"></jsp:include>
   	<!-- footer End /////////////////////////////////////-->  
    <!--================ End footer Area  =================-->

    <!--  ///////////////////////// JavaScript ////////////////////////// -->    
   <script type="text/javascript" >
 
    
   $(function() {
      
         
         //============= Ȯ�� Event  ó�� =============
          $( "#btn-ok" ).on("click" , function() {
  			$(self.location).attr("href","/funding/getFunding?postNo=${funding.postNo}");
  		
          });

            
   });   
               
   
   </script>
   
      
</body>

</html>