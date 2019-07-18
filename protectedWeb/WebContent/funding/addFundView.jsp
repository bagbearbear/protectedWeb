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

	   #btn-fund{
		background: #fff;
        border:2px solid #29304d;
		color:#29304d;
		height:40px;
		width:150px;
		}
		#btn-cancel{
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
		<div class="form-group">
		<div class="page-header text-center">	
		<font size=6>�Ŀ��ϱ�</font> �Ŀ� �� <strong  style="color:#225cba">ȯ���� �Ұ�</strong>�ϴ� �����Ͻñ� �ٶ��ϴ�.
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
		<form id ="uploadForm" class="form-horizontal">
		  <div class="form-group">
			<h3><b>�Ŀ��ݾ�</b></h3>
			�ش� �Խñۿ� �Ŀ��ϽǱݾ��� ( <strong style="color:#225cba">�ִ� 300����</strong> )�Դϴ�. <p/>
		    <div class="row form-form"  >
		      <input type="text" class="form-control" id="fundPay" name="fundPay" placeholder="0" maxlength="7"  style="width:600px; height:35px;" >&ensp; ���� �Ŀ��մϴ�.
		    </div>
		  </div>
			<br/>
		  <div class="form-group">
				<h3><b>�Ŀ��������</b></h3>
				* ������ ȯ�濡 ���� ����â ���� �ð��� ����� �� �ֽ��ϴ�. (Explorer 11 ����)<br/>
				* ������ �������� �˾�â�� ���ѵǾ��ִ��� Ȯ���� �ּ���.<br/><br/>
			    <div class="row form-form "  >
			    <label class="btn btn-primary"> <input type="radio" name="payment" value="card">�ſ�ī��</label>
			   &emsp;
			     <label class="btn btn-primary"> <input type="radio" name="payment" value="trans">������ü	</label>		     
			 
			    </div>
			 </div>        
        	 <input type="hidden" name="postNo" value="${funding.postNo }"  />
		  <br/><br/>
		  <div class="form-group text-center">
	  			<button type="button" id="btn-fund"> �Ŀ� </button>
	  			<button type="button" id="btn-cancel">�ڷ�</button>
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

   //============= ��Ϲ�ư �������� �Լ� =============      
   function fncAddFunding(){


      $('form').attr("method","POST").attr("action","/funding/addFunding").attr("enctype","multipart/form-data").submit();
   }
   //============= ������Ʈ ���� Event  ó�� ============        
   function fncPayment(){
	   
	   
	      //Form ��ȿ�� ����   
	   var payment = null;
	   var fundPay = $('input[name="fundPay"]').val();	
	   
	      if(fundPay == null || fundPay.length<1){
	          alert("�Ŀ��ݾ��� �ݵ�� �Է��Ͽ��� �մϴ�.");
	          $('input[name="fundPay"]').focus();
	          return;
	       } 
	      if(!($('input[name="payment"]').is(':checked'))){
	          alert("��������� �ݵ�� �����Ͽ��� �մϴ�.");
	          return;
	       }
	      	   
	     $(function() {      
	    	 
		      $("input[name='payment']:checked").each(function() {
		    	   payment = $(this).val(); 
		      });
		      
				IMP.init('imp85290840'); 
				
				IMP.request_pay({
			    pay_method : payment,
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '��ȣ�Ұ��Ŀ�',
				amount : fundPay,
/*				buyer_email : 'iamport@siot.do',
				buyer_name : '������',
				buyer_tel : '010-1234-5678',
				buyer_addr : '����Ư���� ������ �Ｚ��',*/
				buyer_postcode : '123-456'
				
				}, function(rsp) {
				if ( rsp.success ) {
/* 				var msg = '������ �Ϸ�Ǿ����ϴ�.';
				msg += '����ID : ' + rsp.imp_uid;
				msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
				msg += '���� �ݾ� : ' + rsp.paid_amount;
				msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num; */
			    $('form').attr("method","POST").attr("action","/funding/addFund").submit();	
				
				} else {
				var msg = '������ �����Ͽ����ϴ�.';
				msg += '�������� : ' + rsp.error_msg;
				alert(msg);
				}
				
				});
    	});
	      
		
		
	   }	      
 
 
   $(function() {
      
         //============= �Ŀ� Event  ó�� =============   
         $( "#btn-fund" ).on("click" , function() {
        	 fncPayment();
        	 //fncAddFunding();
            });
         
         //============= ��� Event  ó�� =============
          $( "#btn-cancel" ).on("click" , function() {
               history.go(-1);
            });

            
   });   
               
   
   </script>
   
      
</body>

</html>