<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device=width, initial-scale=1">

<script type="text/javascript">
 function fncGetUserList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "action","/purchase/listPurchase").submit();
	}
	
	
	$( function(){
	
		$("td:nth-child(1)").on("click", function(){
			var tranNo = $(this).data("param0")
			self.location = "/purchase/getPurchase?tranNo="+tranNo
		});
		
		$("td:nth-child(2)").on("click", function(){
			var userId = $(this).data("param1")
			self.location = "/user/getUser?userId="+userId
		});
		
		 $(".ct_list_pop td:nth-child(11)").on("click", function(){
				var index = $($(".ct_list_pop td:nth-child(11)")).index(this);
				console.log(index)
				var tranNo = $($("input[name=tranNo]")[index]).val();
				
				console.log(tranNo) 
				self.location = "/purchase/deletePurchase?tranNo="+tranNo
						
			 })
		
		$("#change3").on("click", function(){
			var tranNo = $(this).data("param0")
			self.location = "/purchase/updateTranCode?tranNo="+tranNo+"&tranCode=3"
		});
		
	
});
	
</script> 
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">���� �����ȸ</h3>
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
            <th align="left">ȸ���� </th>
            <th align="left">��ȭ��ȣ</th>
            <th align="left">�����Ȳ</th>
             <th align="left">��������</th>
          </tr>
        </thead>
			
		<c:set var="i" value="0"/>
		<c:forEach var = "board" items="${list}">
		<c:set var="i" value="${i+1}" />	
	
	<tr>
		<td align="center"  data-param0="${order.orderNo}">${i}</td>
		<td align="left" data-param1="${order.id}">${purchase.buyer.userId}</td>
		<td align="left">${order.receiverName}</td>
		<td align="left">${order.receiverPhone}</td>
	
		<td align="left">
			<c:if test="${order.orderCode.trim() == '1'}">
			 <a href="/purchase/deletePurchase?tranNo=${purchase.tranNo}">�ֹ����</a>
			<input type="hidden" name="tranNo" value="${purchase.tranNo }"/>
			</c:if>
		<c:if test="${order.order.trim() == '2'}"> ����� </c:if>
		<c:if test="${order.order.trim() == '2'}"><br/>
			<a id="change3" data-param1="${order.tranNo}" data-param2="${user.userId}">
			���ǵ���
			</a>
		</c:if>
		</td>
		</tr>
	</c:forEach>
	</table>
	<!-- PageNavigation Start... -->
	
		<!-- PageNavigation End... -->

	<!--  ������ Navigator �� -->

</div>

</body>
</html>