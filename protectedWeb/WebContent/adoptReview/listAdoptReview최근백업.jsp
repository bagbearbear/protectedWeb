<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<title>��ȣ�Ұ� �� �о��ı�</title>
	<meta charset="EUC-KR">
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	<link rel="stylesheet" href="/resources/demos/style.css">
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<script src="https://kit.fontawesome.com/e26616618e.js"></script>
	<style>
		
		
 	  	html { 
 	 	 scroll-behavior: smooth; 
 		} 
 		
/* 		p, strong, select { */
/* 			transform: rotate(0.1deg); */
/* 		} */
		
/* 		h3{ */
/* 			font-family: 'NanumSquare', sans-serif !important; */
/* 			font-size: 20px !important; */
/* 			padding-bottom: 0px; */
/* 			margin-bottom: 0px !important; */
/* 			opacity: 1  !important; */
/* 			font-weight: bold; */
/* 			transform: rotate(0.001deg); */
/* 		} */
		
/* 		div.row {  */
/* 			font-family: 'NanumSquare', sans-serif !important; */
/* 			font-weight: bold; */
/* 			transform: rotate(0.001deg); */
/* 		} */

	    .getBoard {
			position: relative;
			max-height: 330px; 
			min-height: 330px; 
			min-width: 255px;
			max-width: 255px;
		}
	
		.getBoard img {
			max-height: 330px; 
			min-height: 330px; 
			min-width: 255px;
			max-width: 255px;
	/* 		    transition: all 0.3s; */
			display: block;
			height: auto;
	/* 		    transform: scale(1); */
		}
		
		.overlay {
			position: absolute;
			bottom: 0;
			left: 0;
			right: 0;
			background-color: white;
			overflow: hidden;
			opacity: 1;
			min-width: 255px;
			max-width: 255px;
			height: 50px;
			transition: 1s ease;
		}
	
		.getBoard:hover .overlay {
			height: 0%;
		}
	
		.textList {
			color: #3E6B79;
			font-size: 20px;
			position: absolute;
			top: 50%;
			left: 50%;
			-webkit-transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
			transform: rotate(0.001deg);
		}
		
		form {
			text-align: right;
 			padding-left: 225px; 
		}
		
		.justify {
			margin-right: 0px;
		}
		
		.form-group {
			display: inline-block;
			right: 0%;
			text-align: right;
/* 			vertical-align: ; */
		}
		
		select, #searchKeyword {
			height: 33px;
		}
		

		
/* 		select[name=areaCondition] { */
/* 			margin-left: 200px; */
/* 		} */

    </style>

</head>

<body>

<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<input type="hidden" id="userId" value="${sessionScope.user.id}">
	<input type="hidden" id="adoptConfirm" value="">
	<input type="hidden" id="applyConfirm" value="">
	<input type="hidden" id="boardCode" value="AR">
	
		<div class="page-header text-info">
		
			<div class="row" style="position:relative;height:35px;">
	        	<div class="col-xs-8 col-md-8" style="position:absolute; left:0px; bottom:0px;" >
	        		<font size="5px" id="pagename"><strong>���� ����Ʈ</strong></font>
	        	</div>
	        	<div class="col-xs-4 col-md-4" align="right" style="position:absolute; right:0px; bottom:0px; " ><font size="5px">
		        	<c:if test="${ !(empty sessionScope.user) && sessionScope.user.levels ne '������ȸ��' }">
		       		 	<button type="button" class="btn btn-primary"><font size="3px">�۾���</font></button>
		        	</c:if>
	        	</font></div>
	        </div>
		
	    </div>



		<div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } ��
		    	</p>
		    </div>
		    
			<div class="col-md-6" id="justify" align="right">
				<form class="form-inline" name="detailForm">

			    	<div class="form-group">
						<select name="searchCondition" id="searchCondition">
							<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>����</option>
							<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>����</option>
							<option value="2"  ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>�ۼ���</option>
						</select>
					</div>

					<div class="form-group">
						<label class="sr-only" for="searchKeyword">�˻���</label>
						<input type="text" id="searchKeyword" name="searchKeyword"  placeholder="&nbsp;�˻�� �Է��ϼ���."
						    	value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
					</div>

					<div class="form-group" >
						<button type="button" class="btn btn-default"  id="search" style="height: 33px;width: 45px;">�˻�</button>
					</div>
			    
			    </form>
		    </div>
		    
		</div>
			    

		
		<div class="row"><div class="col-md-12"></div><br/></div>

      <div class="row">
      <div class="col-md-12"></div>
      <div class="col-md-12" >
      
      <div class="col-md-12" id="listAdoptJSON" style="padding-left: 0px">
      
      <c:if test="${resultPage.totalCount eq 0 }">
     	 <br/><br/><br/><br/><br/><p align="center"><font size="4px">�˻������ �����ϴ�.</font><br/><br/><br/><br/><br/><br/></p>
      </c:if>
      <c:set var="i" value="0" />
		  <c:forEach var="board" items="${list}">
			<c:set var="i" value="${ i+1 }" />

			<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: 10px;">
			
<!-- �������������������������������������������������� -->
			<figure class="getBoard">
				<input type="hidden" name="postNo" value="${board.postNo}"/>
				<p align="right"><i class="fas fa-user"></i>${board.viewCount}</p>
				<span id="image-box">
					${board.thumnail }
				</span>
				
				<figcaption class="overlay">
					<span id="textList"><h3 align="center" style="width: 255px;padding-right: 0px;" >${board.postTitle}</h3>
						<p align="right">${board.nickName} ${board.regDate}</p>
					</span>
				</figcaption>
				
			</figure>
			
<!-- �������������������������������������������������� -->
			
			</div>	
		
       </c:forEach>
       </div>
       
       </div>
       </div>
       
       <div class="col-md-12"><br/><br/></div>
       
		
		<div id="dialog-cant" title="">
			<p align="center"><br/>�ı⸦ ����Ϸ��� ����� �о���� �Ϸ�����̰ų�,<br/>�Ծ� ��û�� �о���� �Ϸ���¿��� �մϴ�.</p>
		</div> 	
         
       
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	
 	
 	
 	<jsp:include page="/layout/footer.jsp"></jsp:include>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
<%-- 	<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
	<!-- PageNavigation End... -->
<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="/resources/events.js"></script>
<!--   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

	
   // �����������������������������������  ���� ��ũ��  �����������������������������������
   
		var postNo;
		var postSize = 2;
		var area = '';
		var str = '';
		
		$(function(){
	        $(window).scroll(function(){
	//             if( $(this).scrollTop() == $(document).height() -  $(this).height() ){
	            if( $(this).scrollTop() +  $(this).height() + 484 > $(document).height() ){
	            	postSize++;
	            	listAdoptReview(postSize,"");
	            }
	        })//��ũ�� 
	    })
	
		function listAdoptReview(postSize, str){
			
	  		$.ajax({
						url : "/adoptReview/json/listAdoptReview",
						method : "POST" ,
						data : JSON.stringify({
							searchCondition : $("#searchCondition").val(),
							searchKeyword : $("#searchKeyword").val(),
							boardCode : $("#boardCode").val(),
							pazeSize : postSize,
						}) ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
	// 							console.log(JSON.stringify(data));
	
								var displayValue = '';
								
								for( i=0; i<data.list.length; i++ ){
									
									displayValue += '<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: 10px;">'
										      			+'<figure class="getadopt">'
										      				+'<input type="hidden" name="postNo" value="'+data.list[i].postNo+'"/>'
										      				+'<img class="listImg" onerror="this.src=\'http://placehold.it/400x400\'"/>'
// 										      				+'<img class="listImg" src="../resources/file/fileAdopt/'+data.list[i].mainFile+'"  onerror="this.src=\'http://placehold.it/400x400\'"/>'
										      				+'<figcaption class="overlay">'
									      					+'<span id="text"><h3 align="center" style="width: 255px;padding-right: 0px;" >'+data.list[i].postTitle+'</h3>'
									      					+'<p align="right">'+data.list[i].nickName+", "+data.list[i].viewCount+" "+data.list[i].regDate+'</p></span>'
									      				+'</figcaption>'
										      			+'</figure>'
									      			+'</div>';	
						            
								}
								if(str!=""){
									$('#listAdoptJSON').children().remove();
									$('.text-primary').text('��ü '+data.totalCount+' ��');
								}
								if( postSize == 1 && data.list.length == 0 ){
									console.log('�������');
									displayValue = '<br/><br/><br/><br/><br/><p align="center"><font size="4px">�˻������ �����ϴ�.</font><br/><br/><br/><br/><br/><br/></p>';
								}
								$('#listAdoptJSON').append(displayValue);
								
						},
						error: function(request, status, error){ 
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				        }
				
			});

 		}
	// �����������������������������������   ���� ��ũ��       �����������������������������������	
	// �����������������������������������  �۾��� ����üũ   �����������������������������������	
	
		//�� ��� �Ұ� �ȳ� dialog
 		$( function() {
 	  	    $( "#dialog-cant" ).dialog({
 	  	    	  autoOpen: false,
 	  		      width: 370,
 	  		      height: 180,
 	  		      modal: true,
 	  		      buttons: {
 	  		        	�ݱ�: function() {
 	  		          		$( this ).dialog( "close" );
 	  		        	}
 	  		      }
 	  	    });
 	    });
	
		var adoptConfirm;
		var applyConfirm;
		var id = $('#userId').val().trim();
		
		// �ı�� ��� �������� Ȯ��
		function confirmAdopt(){
			console.log(id);
			// �о�� ���+ �� ���� �Ϸ����
			$.ajax( 
			 		{
						url : "/adopt/json/listAdopt2/"+id,
						method : "GET" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
	 							console.log("adopt "+JSON.stringify(data));
								
	 							if ( data.list.length > 0 ) {
									console.log("ajax���� adopt ��� ���� "+data.list.length);
									self.location = "/adoptReview/addAdoptReview";
	 							} else {
	 								confirmApply();
	 							}

						},
						error: function(request, status, error){ 
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				        }
					
			});
		}//adopt 
		
		function confirmApply(){
			
			// ��û�� ���+ �� ���� �Ϸ����
	  		$.ajax( 
			 		{
						url : "/apply/json/listApply2/"+id,
						method : "GET" ,
						dataType : "json" ,
// 						async: false,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
								console.log("apply "+JSON.stringify(data));
								
								if ( data.list.length > 0 ){
									console.log("ajax���� apply ��� ���� "+ data.list.length);
									self.location = "/adoptReview/addAdoptReview";
								} else {
									$( '#dialog-cant' ).dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
									$( "#dialog-cant" ).dialog( "open" );
								}
								
						},
						error: function(request, status, error){ 
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				     	}
			});
 		}//apply
 		
 		

		
	// �����������������������������������  �۾��� ����üũ   �����������������������������������	
		$(function() {
		
			$( "button:contains('�˻�')" ).on("click" , function() {
				if ( $( '#searchKeyword').val() == '' ){
					$("#searchKeyword").focus();
					return;
				}
				fncGetList(1);
			});
			//���Ͱ˻�
			$('#searchKeyword').keydown( function(e) {
				if(e.keyCode == 13) {
					postSize = 1;
					listApply(postSize,"dd");
				
// 					alert("���� "+$( '#searchKeyword').val());
// // 					return;
// 					if ( $( '#searchKeyword').val().trim() == '' || $( '#searchKeyword').val().trim() == null ){
// 						$("#searchKeyword").focus();
// 						return;
// 					}else {
// 						fncGetList(1); 
// 					}
				}
			});
			// ����ȸ
			$(document).on("click")
			$( "#listAdoptJSON" ).on("click", ".getBoard" , function() {
				self.location ="/adoptReview/getAdoptReview?postNo="+$(this).children( $('input')).val().trim();
			});
			
			// �� ����ϱ�
			$( "button:contains('�۾���')" ).on("click" , function() {
				confirmAdopt();
			});
			
			$( "strong:contains('���� ����Ʈ')" ).on("click" , function() {
				console.log("???");
			
				self.location = "/adoptReview/listAdoptReview";
			});

// 			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	
		$('select[name=areaCondition]').change( function(){
			postSize = 1;
			listApply(postSize,"dd");
		});
		
		
		function fncGetList(currentPage) {
// 			var ccc = $( '#boardCode' ).val();
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/adopt/listAdopt?boardCode=AD").submit();
		}
		
	
	</script>
	
	
	
</body>

</html>