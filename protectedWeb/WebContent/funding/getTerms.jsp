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
	

	   #btn-add{
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
		<font size=6>�Ŀ� ��û�� �������</font> �Ŀ���û��å��<strong style="color:#225cba"> �Ĳ��� </strong> Ȯ�����ּ���.
	    </div>		
		</div>	
		
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">
		
		  <div class="form-group" id="voteNum">
		    <font ><b>��1�� (����)</b></font>
		  </div>
		  <div class="form-group" >
			${termsList.get(0) }
		  </div>
		  <br/>		
		  <div align="right" style="padding-right:1000px;">
		<input type="checkbox" name="termsCheck" > <label>���� �մϴ�.</label>
		</div>	
		 <br/>			
			
		  <div class="form-group" id="voteNum">
		    <font ><b>��2�� (����)</b></font>
		  </div>
		  <div class="form-group" >
			${termsList.get(1) }
		  </div>
		  <br/>		
		  <div align="right" style="padding-right:1000px;">
		<input type="checkbox" name="termsCheck" > <label>���� �մϴ�.</label>
		</div>	
		 <br/>			
					  
		  <div class="form-group" id="voteNum">
		    <font ><b>��3�� (������ ����)</b></font>
		  </div>
		  <div class="form-group" >
			${termsList.get(2) }
		  </div>
		  <br/>		
		  <div align="right" style="padding-right:1000px;">
		<input type="checkbox" name="termsCheck" > <label>���� �մϴ�.</label>
		</div>	
		 <br/>			
			
		  <div class="form-group" id="voteNum">
		    <font ><b>��4�� (������ ��û)</b></font>
		  </div>
		  <div class="form-group" >
			${termsList.get(3) }
		  </div>
		  <br/>			  
		  <div align="right" style="padding-right:1000px;">
		<input type="checkbox" name="termsCheck" > <label>���� �մϴ�.</label>
		</div>	
		 <br/>			
			
		  <div class="form-group" id="voteNum">
		    <font ><b>��5�� (������ �̿�� ��)</b></font>
		  </div>
		  <div class="form-group" >
			${termsList.get(4) }
		  </div>
		  <br/>
		  <div align="right" style="padding-right:1000px;">
		<input type="checkbox" name="termsCheck" > <label>���� �մϴ�.</label>
		</div>	
		 <br/><br/>		
		<input type="checkbox" id="allCheck" ><label>��ε���</label>
		<br/><br/><br/><br/>
		  <div class="form-group text-center">
	  			<button type="button" id="btn-add">�ۼ��ϱ�</button>
	  			<button type="button" id="btn-cancel">���</button>
		  </div>
		<br/><br/><br/><br/>	  		  
		</form>
		<!-- form Start /////////////////////////////////////-->

    </div>
   <!--  ȭ�鱸�� div end /////////////////////////////////////-->


    <!--  ///////////////////////// JavaScript ////////////////////////// -->    
   <script type="text/javascript" >

   $(function() {
      
         //============= ��� Event  ó�� =============   
         $( "#btn-add" ).on("click" , function() {
        	if( !$("input[name=termsCheck]").prop("checked")){
        		alert("��� �������ּ���.")
        	}else{
        		self.location="/funding/addFunding"
        	}
        	
 
            });
         
         //============= ��� Event  ó�� =============
          $( "#btn-cancel" ).on("click" , function() {
               history.go(-1);
            });
            
	  		//============= "üũ�ڽ� ��ü���� ��ü����"  Event ó�� ��  ���� ============= 		
		    $("#allCheck").click(function(){
		        //Ŭ���Ǿ�����
		        if($("#allCheck").not(":disabled").prop("checked")){
		            //input�±��� name�� termsCheck�� �±׵��� ã�Ƽ� checked�ɼ��� true�� ����
		            $("input[name=termsCheck]").not(":disabled").prop("checked",true);
		            //Ŭ���� �ȵ�������
		        }else{
		            //input�±��� name�� termsCheck�� �±׵��� ã�Ƽ� checked�ɼ��� false�� ����
		            $("input[name=termsCheck]").not(":disabled").prop("checked",false);
		        }
		    });
   });   
               
   
   </script>
   
      
</body>

</html>