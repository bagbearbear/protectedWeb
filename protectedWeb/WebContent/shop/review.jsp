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
  <p class="excerpt"><img src="../resources/get/img/10000.jpg" alt="..." class="img-rounded" id="reviewpic" align="right">    
      �簢���ǳ����ǻ簢���ǳ����ǻ簢���ǳ����ǻ簢���ǳ����ǻ簢�� �簢�̳�����ǻ簢�̳�����ǻ簢�̳��� �񴩰�����ϴ������Ǻ񴰳��������ϴ»�� �������������θ������
      �����Ǹ��������θ���������� �ż��Ⱦ縻(�׿������̸����������) ��������,����Ǿ󱼺��������ٸ������״� ����纯���밢�������������ϴ¸������߷� �����������Ǻ����ض�����Ƽ������Ǹ����ѵ����ǰ���
      ��û�ǰ��߿������ϴ�Z��ȣ.ȸ�����̶�������ִ� ��������.���ĸ��䳻���̰��ִ¸������� v������������������������ϴ³�ü���� �ð蹮�ڹݿ�?�����������ϰ���ħ����Ȳȥ ����-�ǳ����ǵ���-�ǳ����������ǳ�����ī�������ǳ����ǰ��칮ȣ�ǳ������λ�
      �Ĵ��ǹ��񿡹�ݵ������ڿ��������ؿ찡������� ��ũ�����������������̻����������(����)�ȴ� ����������±�����ȭ.�����������ϴ���ȭ�п� ��������������ؿ����ö󰡰���������������ؿ����ö󰣻����
      �ؿ����ö����ƴ������������������ƴ��ѹؿ����ö����ƴ������������������ƴ��ѻ�� ���������Ϲ����������ǻ�ݿ�����ϴ�(���¾ַ����Ŀ��ַ��ϴ³�) �簢�̳����̽����ȱ�����̴�(�Ҹ��̳�ġ�����̴�)
      ���������Ǳٹ濡����õ�ϴ±����� �ٱ�������.�߱�����Ǳ����̵� </p>          
      
      <br clear="left">
      <br>
      <hr>
      
     <!--////////////////////////////////////review End //////// -->
     
     <!-- ���� start///////////////////////////////////////////////// -->
     
     	<script type="text/javascript">
	$(function () {

		// Grab all the excerpt class
		$('.excerpt').each(function () {
		
			// Run formatWord function and specify the length of words display to viewer
			$(this).html(formatWords($(this).html(), 30));
			
			// Hide the extra words
			$(this).children('span').hide();
		
		// Apply click event to read more link
		}).click(function () {

			// Grab the hidden span and anchor
			var more_text = $(this).children('span.more_text');
			var more_link = $(this).children('a.more_link');
				
			// Toggle visibility using hasClass
			// I know you can use is(':visible') but it doesn't work in IE8 somehow...
			if (more_text.hasClass('hide')) {
				more_text.show();
				more_link.html(' &raquo; hide');		
				more_text.removeClass('hide');
			} else {
				more_text.hide();
				more_link.html(' &laquo; more');			
				more_text.addClass('hide');
			}

			return false;
		
		});
	});

	// Accept a paragraph and return a formatted paragraph with additional html tags
	function formatWords(sentence, show) {

		// split all the words and store it in an array
		var words = sentence.split(' ');
		var new_sentence = '';

		// loop through each word
		for (i = 0; i < words.length; i++) {

			// process words that will visible to viewer
			if (i <= show) {
				new_sentence += words[i] + ' ';
				
			// process the rest of the words
			} else {
		
				// add a span at start
				if (i == (show + 1)) new_sentence += '... <span class="more_text hide">';		

				new_sentence += words[i] + ' ';
			
				// close the span tag and add read more link in the very end
				if (words[i+1] == null) new_sentence += '</span><a href="#" class="more_link"> &raquo; more</a>';
			} 		
		} 

		return new_sentence;

	}	
	</script>
      
      
      
      
      

      
      </div>
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	</div>
 	  <!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
    
    <!--================ start footer Area  =================-->
    <!-- footer Start /////////////////////////////////////-->
	 <jsp:include page="/layout/footer.jsp"></jsp:include>
   	<!-- footer End /////////////////////////////////////-->  
    <!--================ End footer Area  =================-->
	
</body>

</html>