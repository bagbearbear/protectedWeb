<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		$("button:contains('����')").on("click", function() {
			alert("����");
			// 			$(self.location).attr("href","/community/updateInfo.jsp");
			self.location = "/info/updateView";
		});

		$("button:contains('����')").on(
				"click",
				function() {

					var result = confirm("���� ���� �Ͻðڽ��ϱ�?");

					if (result) {
						$("form[name='info']").attr("method", "POST").attr(
								"action", "/info/delInfo").attr("enctype",
								"multipart/form-data").submit();
					}

				});
	});
</script>
<style type="text/css">
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
			<input type="hidden" name="postNo" value="${board.postNo}" />

			<h3>
				<b>${board.postTitle}</b>
			</h3>

			<div class="row" style="position: relative; height: 25px;">
				<div class="col-md-8"
					style="position: absolute; left: 0px; bottom: 0px;">${board.nickName}(${board.id})
					| ${board.regDate}</div>
				<div class="col-md-4" align="right"
					style="position: absolute; right: 0px; bottom: 0px;">��ȸ�� :
					${board.viewCount} ��õ�� : ${board.recommendCount} ��ۼ� : 50</div>
			</div>
			<p />

			<hr />

			<div class="content">${board.postContent}</div>

		</form>

		<div class="button" align="right">
			<button>����</button>
			<button>����</button>
		</div>
	</div>

		<jsp:include page="/common/comment.jsp"></jsp:include>
</body>
</html>