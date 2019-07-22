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
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->

	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info">�Ű�۸��</h3>
	    </div>
		
		<table class="table table-hover table-striped">
		
			<thead>
				<tr>
					<th>
						<input type="hidden" value="����">
					</th>
					<th align="left">�Ű���</th>
					<th align="left">�Ű���</th>
					<th align="left">�Ű�����</th>
					<th align="left">�Ű��Ͻ�</th>
					<th align="left">ó������</th>
					<th align="left">������</th>
				</tr>
			</thead>
		
			<tbody>
			
				<c:set var="i" value="0"/>
				<c:forEach var="report" items="${ list }">
					<tr>
						<td>
							<input type="hidden" id="reportNo" name="reportNo" value="${ report.reportNo }">
						</td>
						<td align="left">${ report.reporterId }</td>
						<td align="left">${ report.reportedId }</td>
						<td align="left">${ report.reportCategory }</td>
						<td align="left">
							<fmt:formatDate value="${ report.reportDate }" pattern="yyyy�� MM�� dd��"/>
						</td>
						<c:if test="${ report.reportStatus == 0 }">
							<td align="left">(${ report.reportStatus })ó����</td>
						</c:if>
						<c:if test="${ report.reportStatus == 1 }">
							<td align="left">(${ report.reportStatus })ó���Ϸ�</td>
						</c:if>
						<td align="right">�󼼺���</td>
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
			$("td:nth-child(7)").on("click", function(){
				var reportNo=$(this).parent().children().children("#reportNo").val();
				self.location="/report/getReport?reportNo="+reportNo;
			})
		});
		
// 		$(function(){
// 			$("#couponManage").on("click", function(){
// 				self.location="/coupon/addCouponManage"
// 			})
// 		});
		
// 		$(function(){
// 			$(".removeCoupon").on("click", function(){
// 				var couponNo=$(this).parent().parent().children("#couponNo").val();
// 				alert(couponNo);
// 				self.location="/coupon/updateCoupon?couponNo="+couponNo+"&couponStatus=3";
// 			})
// 		})
		
	</script>

</body>

</html>