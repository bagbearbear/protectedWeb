<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



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
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">����������</h3>
	    </div>
		
		<table class="table table-hover table-striped">
		
			<thead>
				<tr>
					<th>
						<input type="hidden" value="����">
					</th>
					<th align="left">�������</th>
					<th align="left">����</th>
					<th align="left">�����Ͻ�</th>
					<th align="left">�����Ͻ�</th>
					<th align="left">������</th>
				</tr>
			</thead>
		
			<tbody>
			
				<c:set var="i" value="0"/>
				<c:forEach var="message" items="${ list }">
					<tr>
						<td>
							<input type="hidden" id="messageNo" name="messageNo" value="${ message.messageNo }">
						</td>
						<td align="left">${ message.senderId }</td>
						<td align="left">${ message.messageTitle }</td>
						<td align="left">
							<fmt:formatDate value="${ message.sendDate }" pattern="yyyy�� MM�� dd��"/>
						</td>
						<td align="left">
							<c:if test="${ message.messageStatus eq '0' }">
								<p>���� ����</p>
							</c:if>
							<c:if test="${ message.messageStatus eq '1' }">
								<fmt:formatDate value="${ message.receiveDate }" pattern="yyyy�� MM�� dd��"/>
							</c:if>
						</td>
						<td id="moreView" align="left">������</td>

					</tr>
				</c:forEach>
			
			</tbody>
		
		
		</table>
	


	
	</div>
	
		
		<jsp:include page="../common/pageNavigator_new.jsp"/>
		<jsp:include page="../layout/footer.jsp"></jsp:include>




	<script type="text/javascript">
		
		//============= ȸ���������� Event  ó�� =============	
		$(function(){
			$("td:nth-child(6)").on("click", function(){
				var messageNo=$(this).parent().children().children("#messageNo").val();
				self.location="/message/getMessage?messageNo="+messageNo;
			})
		});
		
		
	</script>
	
	
</body>

</html>