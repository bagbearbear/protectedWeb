<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<!-- ���� : http://getbootstrap.com/css/   ���� -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>


<!-- jQuery UI toolTip ��� CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip ��� JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
body {
	border: 0px;
	border-spacing: 0px;
}

#postTitle {
	padding-left: 120px;
	padding-right: 120px;
}

#id {
	padding-left: 80px;
	padding-right: 80px;
}

#no {
	padding-left: 50px;
	padding-right: 50px;
	font-size: x-small;
	
}

#countfont{
	font-size: x-small;
	}
#boardfont{
	font-size: x-small;
	padding-left: 50px;
	padding-right: 50px;
	}

</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============

	// �˻� / page �ΰ��� ��� ��� Form ������ ���� JavaScrpt �̿�  
	function fncGetList(currentPage) {
		//document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage)
		//document.detailForm.submit();	
		$("form").attr("method", "POST").attr("action","/prodQna/listProdQna?order={param.order}").submit();
	}

	//============= Event ó�� ��  ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		$("#button").on("click", function() {
			self.location = "/shop/prodQna/addProdQna.jsp";
		});

		// 	$(function() {

		// 		$("td.ct_btn01:contains('�˻�')").on("click", function() {
		// 			fncGetList(1);
		// 		});

		// 		$("#change2").on(
		// 				"click",
		// 				function() {
		// 					var prodNo = $(this).data('param1');
		// 					self.location = "/purchase/updateTranCodeByProd?prodNo="
		// 							+ prodNo + "&tranCode=2";
		// 				})
		// 		$("#prod").on(
		// 				"click",
		// 				function() {
		// 					self.location = "/product/getProduct?prodNo="
		// 							+ $(this).text().trim();
		// 				});

	});
</script>
</head>

<body>

	<!-- //////////////////////ToolBar Start ///////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!--/////////////////////// ToolBar End ////////////////////////////////-->




	<div class="container">
		<h1 align="center">
			��ǰ<small>&nbsp;Q&nbsp;&&nbsp;A <a href="#" id="button"><button
						class="mdl-button mdl-js-button mdl-button--primary">
						�����ϱ�</button></a>
			</small>
		</h1>
	</div>
	<BR />
	<!--/////////////////////// form start /////////////////////////////////-->
	<form class="form-inline" name="detailForm">
		<!-- table ���� �˻� Start /////////////////////////////////////-->
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>

		<td align="right">
			
			<select name="searchCondition" class="ct_input_g" style="width:80px">
				<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ǰ��ȣ</option>
				<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>��ǰ��</option>
				<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>��ǰ����</option>
			</select>

			<input type="text" name="searchKeyword" value="${search.searchKeyword}" class="ct_input_g" style="width:200px; height:19px" />
		
		</td>
		
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23">
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<!-- <a href="javascript:fncGetList('1');">�˻�</a> -->
						�˻�
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

	
		<!-- table ���� �˻� Start /////////////////////////////////////-->


		<!--  table Start /////////////////////////////////////-->

		<div class="container" align="center">
			<table class="mdl-data-table mdl-js-data-table mdl-shadow--4dp">
				<thead>
					<tr><td colspan="11" id="countfont">��ü ${resultPage.totalCount} ��, ���� ${resultPage.currentPage} ������</td></tr>
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric" align="center"
							id="no">�۹�ȣ</th>
						<th align="center" id="boardfont">����</th>
						<th align="center" id="boardfont">��������</th>
						<th align="center" id="boardfont">�����</th>

					</tr>
				</thead>

				<c:set var="i" value="0" />
				<c:forEach var="board" items="${list}">
					<c:set var="i" value="${i+1}" />
					<tbody>
					<tr>
					<td class="mdl-data-table__cell--non-numeric" align="center">${ i }</td>
					<td align="center">${board.postTitle}
					<input type="hidden" name="postNo" value="${board.postNo}" /> 
					<input type="hidden" name="boardCode" value="${board.boardCode}" /></td>
					<td align="center">${board.qnaCode}</td>
					<td align="center">${board.regDate}</td>
					</tr>
					</tbody>
				</c:forEach>
				
			</table>
			<!--  table end /////////////////////////////////////-->

			<input type="hidden" id="currentPage" name="currentPage" value="0" />
			<jsp:include page="../../common/pageNavigator.jsp" />

		</div>
	</form>
	<!--///////////////////////////////// form end /////////////////////////////////////-->
</body>
</html>