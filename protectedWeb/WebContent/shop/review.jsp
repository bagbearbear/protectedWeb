<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
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
   
   
   <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
        
        #personalpic{
        width : 100px;
        
        }
        
        #reviewfirst{
        font-size : 12px;
        }
        
        
        #grade{
        text-align:righet;
        }
        
        #reviewpic{
        width : 100px;
        align: right;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
		function fncGetUserList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/review/listReview").submit();
		}
		
		
		//============= "�˻�"  Event  ó�� =============	
		 $(function() {
			 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 //$( "button.btn.btn-default" ).on("click" , function() {
			//	fncGetUserList(1);
			//});
		 });
		
		
		//============= userId �� ȸ����������  Event  ó��(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(2)" ).on("click" , function() {
				 self.location ="/user/getUser?userId="+$(this).text().trim();
			});
						
			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( "td:nth-child(2)" ).css("color" , "red");
			
		});	
		
		
		//============= userId �� ȸ����������  Event  ó�� (double Click)=============
		 $(function() {
			 
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(  "td:nth-child(5) > i" ).on("click" , function() {

					var userId = $(this).next().val();
				
					$.ajax( 
							{
								url : "/review/json/getReview/"+postNo ,
								method : "GET" ,
								dataType : "json" ,
								headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								},
								success : function(JSONData , status) {

									var displayValue = "<h6>"+JSONData.postTitle+"<br/>"+JSONData.postContent+"<br/>"
									+JSONData.id+"("+JSONData.nickname+")<br/>"+JSONData.grade+"<br/>"
									+JSONData.regDate+"<br/>"+"</h6>";
									$("h6").remove();
									$( "#"+userId+"" ).html(displayValue);
								}
						});
						////////////////////////////////////////////////////////////////////////////////////////////
					
			});
			
			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			$("h7").css("color" , "red");
			
			//==> �Ʒ��� ���� ������ ������ ??
			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	</script>
	
</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	       <h3>Review</h3>
	    </div>	
      <!--  review Start  /////////////////////////////////////-->
      <div class="container"id="reviewfirst">
      <img src="../resources/prodmenu/images/person_4.jpg" class="img-circle" id="personalpic" align="left"><br>&nbsp;&nbsp;&nbsp;��ı
      
      <br>&nbsp;&nbsp;&nbsp; 2019��06��
      <div class="rating">
													<p class="text-right">
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
													</p>
												</div>
      <br clear="left">
  <p class="text-right"><img src="../resources/get/img/10000.jpg" alt="..." class="img-rounded" id="reviewpic" align="right"></p>    
      ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. 
      ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. 
      ��ǰ�̳� ������ ���� ���並 �����մϴ�           �� ��ġ��
      <br clear="left">
      <br>
      <hr>
      
     <!--////////////////////////////////////review End //////// -->
     
      <!--  review Start  /////////////////////////////////////-->
      <div class="container"id="reviewfirst">
      <img src="../resources/prodmenu/images/person_4.jpg" class="img-circle" id="personalpic" align="left"><br>&nbsp;&nbsp;&nbsp;��ı
      
      <br>&nbsp;&nbsp;&nbsp; 2019��06��
      <div class="rating">
													<p class="text-right">
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
														<a href="#"><span class="ion-ios-star-outline"></span></a>
													</p>
												</div>
      <br clear="left">
  <p class="text-right"><img src="../resources/get/img/10000.jpg" alt="..." class="img-rounded" id="reviewpic" align="right"></p>    
      ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴ� ��ǰ�� ���� ���並 ���ϴ�. 
      ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. 
      ��ǰ�̳� ������ ���� ���並 �����մϴ�           
      <div>
    <input value="������" onclick="if(this.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = '�����';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '������';}" type="button" />
    <div style="display: none;"> �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. ��ǰ�̳� ������ ���� ���並 �����մϴٹ�ǰ�� ���� ���並 ���ϴ�. 
      ��ǰ�̳� ������ ���� ���並 �����մϴ�   </div>
</div>
      <br clear="left">
      <br>
      <hr>
      
     <!--////////////////////////////////////review End //////// -->
      
      
      
      
      

      
      </div>
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	</div>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 
	
</body>

</html>