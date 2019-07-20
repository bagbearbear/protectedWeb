<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  	

    </style>
    
   
	
</head>

<body>

<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container ">
	<input type="hidden" id="boardCode" value="${param.boardCode }">
	
		<div class="page-header text-info">
	       <h3 class="billing-heading mb-4"><strong>��û�� ����Ʈ</strong></h3>
	          �� ���� Ŭ���ϸ� ��û���� Ȯ���� �� �ֽ��ϴ�.
	    </div>
	    

	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		    </div>
		    
		</div>



      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped" >
      
        <thead>
          <tr>
            <th><p align="center">No</p></th>
            <th><p align="center">��û�� ID</p></th>
            <th><p align="center">��û����</p></th>
<!-- 			<th align="right">��û�� ��ȣ</th> -->
<!--             <th align="right">��û�� ���̵�</th> -->
<!-- 		    <th align="right">��û����</th> -->
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="apply" items="${list}">
			<c:set var="i" value="${ i+1 }" />
			<tr name="${ apply.applyNo }">
				<input type="hidden" name="applyNo" value="${ apply.applyNo }">
				<td align="left">${ i }</td>
<%-- 				<td align="left">${ apply.applyNo }</td> --%>
				<td align="left"  title="Click : ��ǰ���� Ȯ��">${apply.id}</td>
				<td align="left">${apply.regDate}
					<button class="btn btn-primary py-0 px-2">����</button>
				</td>
			</tr>
			
          </c:forEach>
        
        </tbody>
      
      </table>
	  <!--  table End /////////////////////////////////////-->
          
		<button class="btn btn-primary py-3 px-4 col-md-3">���ư���</button>
	    	
<%-- 	  <jsp:include page="/layout/footer.jsp"></jsp:include> --%>
 	</div>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 	<div id="dialog-getApply" title="">
		<p align="left" id="getJSON"></p>
	</div> 
<!--  	��������������������������� dialog �������������������������������������� -->
 	<!-- PageNavigation Start... -->
<%-- 	<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
	<!-- PageNavigation End... -->
	
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	  <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		$(function() {
			 
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			$("h7").css("color" , "red");
			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
		//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
		function fncGetList(currentPage) {
// 			var ccc = $( '#boardCode' ).val();
// 			$("#currentPage").val(currentPage)
// 			$("form").attr("method" , "POST").attr("action" , "/adopt/listAdopt?boardCode="+ccc).submit();
		}
		
		
		//============= "�˻�"  Event  ó�� =============	
		 $(function() {
			 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)

			 $( "figure" ).on("click" , function() {
// 				 self.location ="/adopt/getAdopt?postNo="+$(this).children( $('input')).val().trim();
			});
		 });
		
		
		//============= userId �� ȸ����������  Event  ó��(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(3)" ).on("click" , function() {
// 				alert("�۹�ȣ : "+$(this).children().val().trim());
// 				 self.location ="/adopt/getAdopt?postNo="+$(this).children().val().trim();
			});
			
			$( $( "tbody tr" ) ).on("click" , function() {
				var applyNo =    parseInt( $( this).children( $('input') ).val().trim()  );
// 				var userAjax =  $(   $(  "td:nth-child(3) " ).children()[  $(  "td:nth-child(3) " ).index(this)   ]    );
				console.log("Ȯ��ok : "+applyNo);
				getApply(applyNo);
			});

			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( "td:nth-child(2)" ).css("color" , "red");
			
		});	
		
// ������������������������������������������������������������������������������������������������
		$( function() {
	  	    $( "#dialog-getApply" ).dialog({
	  	    	autoOpen: false,
	  		      width: 450,
	  		      height: 400,
	  		      modal: true,
	  		      buttons: {
	  		        	�ݱ�: function() {
	  		          		$( this ).dialog( "close" );
	  		        	}
	  		      }
	  	    });
	      });
	      
	      
		function getApply(applyNo){
			$.ajax( 
			 		{
						url : "/apply/json/getApply/"+applyNo ,
						method : "GET" ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(JSONData , status) {
// 							alert(status);
							var displayValue;
				
							if( JSONData.mate == "����" && JSONData.raise == "����" ){
								displayValue = 	 '<h3 class="billing-heading mb-4"><strong>'+JSONData.id+'���� ��û��</strong></h3>'
												+'<br\/><strong>[����ó]<\/strong> : '+JSONData.phone
												+'<br\/><strong>[����]<\/strong> : '+JSONData.job
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.addr
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.mate
												+'<br\/><strong>[���� ����]<\/strong> : '+JSONData.mateAgree
												+'<br\/><strong>[��������]<\/strong> : '+JSONData.raise
												+'<br\/><strong>[���� ���� ����]<\/strong> : '+JSONData.currently
												+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+JSONData.plan
												+'<br\/><strong>[1�� ������]<\/strong> : '+JSONData.pay
												+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+JSONData.reason
												+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+JSONData.situation ;
								
							}else if( JSONData.mate == "����" && JSONData.raise == "����" ){
								displayValue = 	 '<h3 class="billing-heading mb-4"><strong>'+JSONData.id+'���� ��û��</strong></h3>'
												+'<br\/><strong>[����ó]<\/strong> : '+JSONData.phone
												+'<br\/><strong>[����]<\/strong> : '+JSONData.job
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.addr
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.mate
												+'<br\/><strong>[���� ����]<\/strong> : '+JSONData.mateAgree
												+'<br\/><strong>[��������]<\/strong> : '+JSONData.raise
												+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+JSONData.plan
												+'<br\/><strong>[1�� ������]<\/strong> : '+JSONData.pay
												+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+JSONData.reason
												+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+JSONData.situation ;
								
							}else if( JSONData.mate == "����" && JSONData.raise == "����" ){
								displayValue = 	 '<h3 class="billing-heading mb-4"><strong>'+JSONData.id+'���� ��û��</strong></h3>'
												+'<br\/><strong>[����ó]<\/strong> : '+JSONData.phone
												+'<br\/><strong>[����]<\/strong> : '+JSONData.job
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.addr
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.mate
												+'<br\/><strong>[��������]<\/strong> : '+JSONData.raise
												+'<br\/><strong>[���� ���� ����]<\/strong> : '+JSONData.currently
												+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+JSONData.plan
												+'<br\/><strong>[1�� ������]<\/strong> : '+JSONData.pay
												+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+JSONData.reason
												+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+JSONData.situation;
								
							}else{
								displayValue = 	 '<h3 class="billing-heading mb-4"><strong>'+JSONData.id+'���� ��û��</strong></h3>'
												+'<br\/><strong>[����ó]<\/strong> : '+JSONData.phone
												+'<br\/><strong>[����]<\/strong> : '+JSONData.job
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.addr
												+'<br\/><strong>[������ ����]<\/strong> : '+JSONData.mate
												+'<br\/><strong>[��������]<\/strong> : '+JSONData.raise
												+'<br\/><strong>[�������� ��ȹ]<\/strong> : '+JSONData.plan
												+'<br\/><strong>[1�� ������]<\/strong> : '+JSONData.pay
												+'<br\/><strong>[�Ծ��û ����]<\/strong> : '+JSONData.reason
												+'<br\/><strong>[��Ȳ�� ���� ��ó]<\/strong> : '+JSONData.situation ;
							}
														
							$( "#getJSON" ).html(displayValue);
							$('#dialog-getApply').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
							$( "#dialog-getApply" ).dialog( "open" );
							
					},
					error: function(request, status, error){ 
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
// 						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
			        }
					
					
			});
		}
		
		
		
	
	</script>
</body>

</html>