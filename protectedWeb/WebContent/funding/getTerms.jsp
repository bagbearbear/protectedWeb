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

		</form>
		<!-- form Start /////////////////////////////////////-->

    </div>
   <!--  ȭ�鱸�� div end /////////////////////////////////////-->


    <!--  ///////////////////////// JavaScript ////////////////////////// -->    
   <script type="text/javascript" >

   //============= ��Ϲ�ư �������� �Լ� =============      
   function fncAddFunding(){
      
      //Form ��ȿ�� ����

      var fundTargetPay = $('input[name="fundTargetPay"]').val();
      var postTitle = $('input[name="postTitle"]').val();
      var postContent = $('input[name="postContent"]').val();
      var phone2 = $('input[name="phone2"]').val();
      var phone3 = $('input[name="phone3"]').val();   
      var file = $("#multiFile").val();    
      
      if(fundTargetPay == null || fundTargetPay.length<1){
         alert("�Ŀ���ǥ�ݾ��� �ݵ�� �Է��Ͽ��� �մϴ�.");
         $('input[name="fundTargetPay"]').focus();
         return;
      }
      if(fundTargetPay < 100000 || fundTargetPay > 3000000){
         alert("�Ŀ���ǥ�ݾ��� 10�����̻� 300�������Ϸ� �Է��Ͽ��� �մϴ�.")
         $('input[name="fundTargetPay"]').focus();
         return;
      }
      if(postTitle == null || postTitle.length<1){
         alert("�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
         $('input[name="postTitle"]').focus();
         return;
      }
/*       if(postContent == null || postContent.length<1){
         alert("�۳����� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="postContent"]').focus();
         return;
      } */
      if(file == null || file.length<1){
         alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
         return;
      }
      if(phone2 == null || phone2.length<1){
         alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="phone2"]').focus();
         return;
      }
      if(phone3 == null || phone3.length<1){
         alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="phone3"]').focus();
         return;
      }
      
      var value = "";   
      if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
         var value = $("#phone1 option:selected").val() + "-" 
                        + $("input[name='phone2']").val() + "-" 
                        + $("input[name='phone3']").val();
      }
      $("input:hidden[name='phone']").val( value );
      
      //============= �������Ͼ��ε� AJAX =============
          $(function() {     
            var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < 100; index++) {
                formData.append('files',files[index]);
            }
                
                $.ajax({
                type : 'POST',
                enctype : 'multipart/form-data',
                processData : false,
                contentType : false,
                cache : false,
                timeout : 600000,
                url : '/funding/json/imageupload/',
                dataType : 'JSON',
                data : formData,
                success : function(result) {
                    if (result === -1) {
                        alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
                        // ���� ���� ...
                    } else if (result === -2) {
                        alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
                        // ���� ���� ...
                    } else {
                        alert('�̹��� ���ε� ����');
                    }
                }
            });
        });


      $('form').attr("method","POST").attr("action","/funding/addFunding").attr("enctype","multipart/form-data").submit();
   }

   
   $(function() {
      
         //============= ��� Event  ó�� =============   
         $( "#btn-add" ).on("click" , function() {
            fncAddFunding();
            });
         
         //============= ��� Event  ó�� =============
          $( "#btn-cancel" ).on("click" , function() {
               history.go(-1);
            });
            
   });   
               
   
   </script>
   
      
</body>

</html>