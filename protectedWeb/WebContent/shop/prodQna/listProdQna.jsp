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
	</style>
 <script type="text/javascript">
 function fncGetUserList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "action","/prodQna/listQna").submit();
	}
	
	
	
// 		$(function() {

// 			$("td:nth-child(1)").on("click", function() {
// 				var tranNo = $(this).data("param0")
// 				self.location = "/purchase/getPurchase?tranNo=" + tranNo
// 			});

// 			$("td:nth-child(2)").on("click", function() {
// 				var userId = $(this).data("param1")
// 				self.location = "/user/getUser?userId=" + userId
// 			});

// 			$(".ct_list_pop td:nth-child(11)").on("click", function() {
// 				var index = $($(".ct_list_pop td:nth-child(11)")).index(this);
// 				console.log(index)
// 				var tranNo = $($("input[name=tranNo]")[index]).val();

// 				console.log(tranNo)
// 				self.location = "/purchase/deletePurchase?tranNo=" + tranNo

// 			})

// 			$("#change3").on(
// 					"click",
// 					function() {
// 						var tranNo = $(this).data("param0")
// 						self.location = "/purchase/updateTranCode?tranNo="
// 								+ tranNo + "&tranCode=3"
// 					});

// 		});
	</script> 
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info text-center" >��ǰ Q&nbsp;&&nbsp;A �� ��ȸ</h3>
	   	</div>
	

		<div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		</div>
		
		<!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped" >
      <!-- ��� -->
	
        <thead>
          <tr>
            <th align="center">No</th>
            <th align="left">ȸ��ID</th>
            <th align="left">��������</th>
            <th align="left">������</th>
             <th align="left">�Խ���</th>
          </tr>
        </thead>
			
		<c:set var="i" value="0"/>
		<c:forEach var ="board" items="${list}">
		<c:set var="i" value="${i+1}" />	
	
	<tr>
		<td align="center"  data-param0="${board.postNo}">${i}</td>
		<td align="left" data-param1="${board.id}"></td>
		<td align="left">${board.prodNo}</td>
		<td align="left">${board.postTitle}</td>
		<td align="left">${board.postContent}</td>
		
		</tr>
	</c:forEach>
	</table>
	<!-- PageNavigation Start... -->
<%-- 		<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
		<!-- PageNavigation End... -->

	<!--  ������ Navigator �� -->

</div>

</body>
</html>