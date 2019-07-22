<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  bootstrap Dropdown CSS & JS  -->
<!-- <link href="/resources/css/others/animate.css" rel="stylesheet"> -->
<script type="text/javascript">
	$(function() {

		$("button:contains('ó��')").on("click", function() {
			self.location = "/report/updateReport?reportNo="+${ report.reportNo }+"&reportStatus=1&delCode=0"
		});

// 		$("button:contains('����')").on(
// 				"click",
// 				function() {

// 					var result = confirm("���� ���� �Ͻðڽ��ϱ�?");

// 					if (result) {
// 						$("form[name='info']").attr("method", "POST").attr(
// 								"action", "/info/delInfo").attr("enctype",
// 								"multipart/form-data").submit();
// 					}

// 				});
	});
</script>
<style type="text/css">

body {
	position: relative;
}
.container {
	font-size: 14px;
}

.content {
	text-align: left;
	width: 720px;
	min-height: 400px;
}

.button {
	position: relative;
}

.goto-here {
	padding: 0px;
}
</style>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp"></jsp:include>
		
	<div class="container">
		
		<form name="info">
			<input type="hidden" name="reportNo" value="${report.reportNo}" />

			<div class="row" style="position: relative; height: 25px;">
				<div class="col-md-8"
					style="position: absolute; left: 0px; bottom: 0px;">�Ű��� | ${ report.reporterId }</div>
							
				<div class="col-md-4" align="right"
					style="position: absolute; right: 0px; bottom: 0px;">�Ű����� | ${ report.reportCategory }</div>
			</div>
			<p />
			
			<hr />
			
			<div class="row" style="position: relative; height: 25px;">
				<div class="col-md-8"
					style="position: absolute; left: 0px; bottom: 0px;">�Ű��� | ${ report.reportedId }</div>
							
				<div class="col-md-4" align="right"
					style="position: absolute; right: 0px; bottom: 0px;">
					�Ű��Ͻ� | <fmt:formatDate value="${ report.reportDate }" pattern="yyyy�� MM�� dd��"/>
					</div>
			</div>
			<p />
					
			<hr />

			<div class="content">${report.reportContent}</div>
			<hr />
			<hr />
			<div class="content">
				<img src="../resources/file/fileReport/${report.file1}">
			</div>
			<c:if test="${ report.file2 != null }">
				<div class="content">${report.file2 }</div>
			</c:if>
			<c:if test="${ report.file3 != null }">
				<div class="content">${report.file3 }</div>
			</c:if>
			<hr />
			<hr />
		</form>

		<div class="button" align="right">
			<button>ó��</button>
			<button>����</button>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
	</div>
		
		<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>