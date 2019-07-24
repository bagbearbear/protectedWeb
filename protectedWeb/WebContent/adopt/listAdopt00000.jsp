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
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  	
        .listImg { 
     		max-height: 250px; 
     		min-height: 250px; 
     		width: 100%; 
     		vertical-align: middle;
       }
        
        figure.snip1384 {
			font-family: 'Raleway', Arial, sans-serif;
			position: relative;
			overflow: hidden;
			margin: 10px;
			min-width: 230px;
			max-width: 315px;
			width: 100%;
			color: #ffffff;
			text-align: left;
			font-size: 16px;
			background-color: #000000;
		}
    </style>

</head>

<body>

<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container ">
	<input type="hidden" id="boardCode" value="${param.boardCode }">
	
	
		<div class="page-header text-info">
		
			<div class="row" style="position:relative;height:35px;">
	        	<div class="col-xs-8 col-md-8" style="position:absolute; left:0px; bottom:0px;" >
	        	<font size="5px">
					<c:if test="${param.boardCode eq 'AD' }">
			  			�о�� ����Ʈ
			  		</c:if>
				    <c:if test="${param.boardCode eq 'MS' }">
			  			������ ����Ʈ
			  		</c:if>
	        	</font></div>
	        	<div class="col-xs-4 col-md-4" align="right" style="position:absolute; right:0px; bottom:0px; " ><font size="5px">
		        	<c:if test="${ !(empty sessionScope.user) && sessionScope.user.levels ne '������ȸ��' }">
		       		 	<button type="button" class="btn btn-primary">�۾���</button>
		        	</c:if>
	        	</font></div>
	        </div>
		
	    </div>


		<div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		    </div>

			<div class="col-md-6" align="right">
			<form class="form-inline" name="detailForm">
		    	<div class="form-group">
					<select name="searchCondition" >
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>����</option>
						<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>����</option>
					</select>
				</div>
					  
				<div class="form-group">
					<label class="sr-only" for="searchKeyword">�˻���</label>
					<input type="text" id="searchKeyword" name="searchKeyword"  placeholder="�˻�� �Է��ϼ���."
					    	value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
					<button type="button" class="btn btn-default">�˻�</button>
				</div>
		    
		   		<div class="form-group">
		    		<select name="areaCondition" >
						<option value="">��ü</option>
						<option value="����"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>������</option>
						<option value="���"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>��⵵</option>
						<option value="���"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>���</option>
						<option value="����"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>���ֽ�</option>
						<option value="����"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>������</option>
						<option value="�λ�"  ${ ! empty search.areaCondition && search.areaCondition=="�λ�" ? "selected" : "" }>�λ��</option>
						<option value="����"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>�����</option>
						<option value="���"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>����</option>
						<option value="��õ"  ${ ! empty search.areaCondition && search.areaCondition=="��õ" ? "selected" : "" }>��õ��</option>
						<option value="����"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>����</option>
						<option value="��û"  ${ ! empty search.areaCondition && search.areaCondition=="��û" ? "selected" : "" }>��û��</option>
					</select>
		    	</div>
		    </form>
		    </div>
		    
		</div>
			    
			    
	<!-- 		    <div class="col-md-5 text-right" style="padding-right: 0px;"> -->
	<!-- 		    		<span> -->
	<%-- 					    <c:if test="${param.boardCode eq 'MS' }">��ʺ� ������</c:if> --%>
	<!-- 		    		</span> -->
	<!-- 		    </div> -->
			    

      <div class="row">
      <div class="col-md-12"></div>
      <div class="col-md-12">
      
      <span id="listAdoptJSON">
      <c:set var="i" value="0" />
		  <c:forEach var="adopt" items="${list}">
			<c:set var="i" value="${ i+1 }" />

			<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: ">
			<figure>
			<input type="hidden" name="postNo" value="${adopt.postNo}"/>
				<c:if test="${adopt.statusCode ne 3}">
				  <img class="listImg" src="../resources/file/fileAdopt/${adopt.mainFile}"  onerror="this.src='http://placehold.it/400x400'"/>
				</c:if>
				<c:if test="${adopt.statusCode eq 3}">
				  <img class="listImg" src="../resources/file/fileAdopt/complete.png" style="width:100%;background:url('../resources/file/fileAdopt/${adopt.mainFile}') no-repeat center center;background-size:cover;" onerror="this.src='http://placehold.it/400x400'" />
				</c:if>
				  <figcaption>
					    <h3><strong>${adopt.postTitle}</strong></h3>
					    <c:if test="${param.boardCode eq 'AD' }">
					   	 	<p align="right">${fn:substring( adopt.areaKr , 0, fn:indexOf(adopt.areaKr,'��')+1 ) }</p>
					   	</c:if>
					    <c:if test="${param.boardCode eq 'MS' }">
					   	 	<p align="right"><fmt:formatNumber value="${ adopt.dogPay }" pattern="#,###" />��</p>
					   	</c:if>
				  </figcaption>
			</figure>
			</div>	
		
       </c:forEach>
       </span>
       
       </div>
       </div>
       
       <div class="col-md-12"><br/><br/></div>
       
       
	  <!--  table End /////////////////////////////////////-->
	  
	  
	    	
<%-- 	  <jsp:include page="/layout/footer.jsp"></jsp:include> --%>
 	</div>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
<%-- 	<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
	<!-- PageNavigation End... -->
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

		//============= "�˻�"  Event  ó�� =============	
		 $(function() {
			 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button:contains('�˻�')" ).on("click" , function() {
				 
// 				 alert($('select[name=areaCondition] option:selected').val());
				fncGetList(1);
			});
			 $( "figure" ).on("click" , function() {
				 self.location ="/adopt/getAdopt?postNo="+$(this).children( $('input')).val().trim();
			});
		 });
		
		
		//============= userId �� ȸ����������  Event  ó��(Click) =============	
		 $(function() {
		
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td:nth-child(3)" ).on("click" , function() {
				alert("�۹�ȣ : "+$(this).children().val().trim());
				 self.location ="/adopt/getAdopt?postNo="+$(this).children().val().trim();
			});
			
			$( "button:contains('�۾���')" ).on("click" , function() {
				self.location = "/adopt/addAdopt?boardCode=${param.boardCode}"
			});

			//==> userId LINK Event End User ���� ���ϼ� �ֵ��� 
			$( "td:nth-child(2)" ).css("color" , "red");
			
		});	
		
		
		//============= userId �� ȸ����������  Event  ó�� (double Click)=============
		 $(function() {
			 
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
			$("h7").css("color" , "red");
			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	
		
		$('select[name=areaCondition]').change( function(){
// 			alert($('select[name=areaCondition]').val());
			fncGetList(1);
		});
		
		
		
		//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
		function fncGetList(currentPage) {
			var ccc = $( '#boardCode' ).val();
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/adopt/listAdopt?boardCode=${param.boardCode }").submit();
		}
		
	
	</script>
	
	
	
</body>

</html>