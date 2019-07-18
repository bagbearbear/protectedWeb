<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
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
<!-- jQuery CSS -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!--  CSS -->
<style>
h7 {
	color: red;
}

#searchSubmmit{
	width : 65px;
	height : 52px;
	
	border-radius : 0px 15px 15px 0px;
	border : 1px solid #D3D3D3;
}

#searchCondition{
	border-radius : 15px 0px 0px 15px;
}

.glyphicon-search{
	font-size : 15px;
}
</style>

<title>��������</title>

<!-- JavaScript -->
<script type="text/javascript">

	function fncGetList(currentPage) {

		$("#currentPage").val(currentPage)

		$("form").attr("method", "POST").attr(
				"action",
				"/info/listInfo").submit();

	}

	function getPageSize() {
		$(self.location).attr("href","/info/listInfo?&pageSize="+ $("#selectPageSize").val());
	}
	
	
	$(function(){
		
		$("button:contains('��ü����')").on("click", function(){
			$(self.location).attr("href","/info/listInfo?order=1&pageSize=${search.pageSize}");
		});
		
		$("button:contains('��ȸ��')").on("click", function(){
			$(self.location).attr("href","/info/listInfo?order=2&pageSize=${search.pageSize}");
		});
		
		$("button:contains('��õ��')").on("click", function(){
			$(self.location).attr("href","/info/listInfo?order=3&pageSize=${search.pageSize}");
		});
		
	});
	$(function() {

		var pageSize = $("#selectPageSize").val();
		var menu = $("#menu").val();

		$("#searchKeyword")
				.on(
						"keyup",
						function() {

							var search = {
								searchKeyword : $("#searchKeyword").val(),
								searchCondition : $("#searchCondition").val()
							};
							var convertSearch = JSON.stringify(search);

							$
									.ajax({
										url : "/product/json/listProduct/"
												+ menu + "/" + pageSize,
										method : "POST",
										dataType : "json",
										data : convertSearch,
										contentType : "application/x-www-form-urlencoded; charset=euc-kr",
										headers : {
											"Accept" : "application/json",
											"Content-Type" : "application/json;charset=euc_kr"
										},
										success : function(JSONData, status) {
											$("#searchKeyword").autocomplete({
												source : JSONData
											});
										}
									});
						});

		$("td:nth-child(2)").on("click",function() {

					alert($(this).children("input").val())
					$(self.location).attr("href","/info/getInfo?postNo="+ $(this).children("input").val());
				});

		// 		������ ó���� ���� ��ũ��Ʈ
		
		$(document).ready(function(){
			$("#searchKeyword").keydown(function(key){
				if(key.keyCode == 13){
					fncGetList(1);
				}
			});
		});
// 		$("button.btn.btn-default").on("click", function() {
// 			fncGetUserList(1);
// 		});
		
		$("button:contains('�� ����')").on("click", function(){
			self.location = "/community/addInfo.jsp"
		});
	});
</script>
</head>

<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<%-- 	<input type="hidden" id="menu" name="menu" value="${param.menu}"/> --%>

	<div class="container">

		<div class="page-header text-info">
			��ȣ�Ұ� ��������
		</div>

		<div class="row">
			<div class="col-md-12 text-left">
				<p class="text-primary">
				��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
				</p>
			</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xm-12">
				<form class="form-inline" name="detailForm">
					<div class="form-group">
						<select class="form-control" id="searchCondition"
							name="searchCondition">
											    		<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>����</option>
														<option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>�ۼ���</option>
														<option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>�۳���</option>
						</select>
					</div>

					<div class="form-group">
						<label class="sr-only" for="searchKeyword">�˻���</label>
										    	<input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="�˻���" value="${! empty search.searchKeyword ? search.searchKeyword : '' }" style="width : 950px;">
						<button type="button" id="searchSubmmit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
					</div>



					<!-- PageNavigation ���� ������ ���� ������ �κ� -->
					<input type="hidden" id="currentPage" name="currentPage" value="" />
				</form>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6 col-sm-5 col-xm-12">
					<span>ǥ�ð���</span>
						<span> <select name="pageSize" id="selectPageSize"
								onchange="javascript:getPageSize()">
								<option value="8" ${ search.pageSize == 8 ? "selected" : "" }>8</option>
								<option value="15" ${ search.pageSize == 15 ? "selected" : "" }>15</option>
								<option value="30" ${ search.pageSize == 30 ? "selected" : "" } >30</option>
								<option value="50" ${ search.pageSize == 50 ? "selected" : "" } >50</option>
							</select>
						</span>
			</div>
		</div>

		<hr />

		<h3 align="center"><b>HOT ��</b></h3>

		<p>
		<table class="table table-hover table-striped">
		
			<thead>
				<tr align="center">
					<th width="10%">��ȣ</th>
					<th width="30%">����</th>
					<th width="10%">�ۼ���</th>
					<th width="10%">�ۼ���</th>
					<th width="5%">��ȸ��</th>
					<th width="5%">��õ��</th>					
				</tr>
			</thead>

			<tbody>
				<c:set var="i" value="0" />
				<c:forEach var="best" items="${listRanking}">
					<c:if test="${best.viewCount != 0 }">
					<c:set var="i" value="${ i+1 }" />
					<tr>
						<td align="center">${i}</td>
						<td align="center">
							<input type="hidden" name="postNo" value="${best.postNo}">
							${best.postTitle}
						</td>
						<td align="center">${best.nickName}</td>
						<td align="center">${best.regDate}</td>
						<td align="center">${best.viewCount}</td>
						<td align="center">${best.recommendCount}</td>
					</tr>
					</c:if>
				</c:forEach>
				

			</tbody>
		</table>
		
		<br/>
		
		<button>��ü����</button>
		<button>��ȸ�� ��</button>
		<button>��õ�� ��</button>
		
		<br/>
		
		<table class="table table-striped">

			<thead>
				<tr align="center">
					<th width="10%">��ȣ</th>
					<th width="30%">����</th>
					<th width="10%">�۾���</th>
					<th width="10%">�ۼ���</th>
					<th width="5%">��ȸ��</th>
					<th width="5%">��õ��</th>					
				</tr>
			</thead>

			<tbody>

				<c:set var="i" value="0" />
				<c:forEach var="board" items="${list}">
					<c:set var="i" value="${ i+1 }" />
					<tr>
						<td align="center">${i}</td>
						<td align="center">
							<input type="hidden" name="postNo" value="${board.postNo}">
							${board.postTitle}
						</td>
						<td align="center">${board.nickName}</td>
						<td align="center">${board.regDate}</td>
						<td align="center">${board.viewCount}</td>
						<td align="center">${board.recommendCount}</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>

	<button>�� ����</button>
	<jsp:include page="../common/pageNavigator_new.jsp" />
	</div>
</body>
</html>
