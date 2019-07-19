<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">
<head>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  CSS -->
<style>
body {
	padding-top: 50px;
}

.temp {
	height: 300px;
}
</style>

<script type="text/javascript">
	$(function() {

		// ��� ��� 
		$("#commentGo").on("click",function() {
			
			var postNo = ${board.postNo};
			
			alert( $("input[name=commentContent]").val() );
			var commentInfo = {postNo : postNo, commentContent : $("input[name=commentContent]").val()};
			
			var convertCommentInfo = JSON.stringify(commentInfo);
			
			$.ajax(
					{
						url : "/comment/json/addComment/",
						method : "POST",
						dataType : "Json",
						data : convertCommentInfo,
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						
						success : function(JSONData, status){
							
							alert("success");
							
							
							
						},
										
						error : function(request, status, error){							
							alert("Error");							
						}
				
					}
			);
			
		});
	});
	
	$(function(){
		$(".glyphicon-refresh").on("click", function() {
			
			var commentNo = $(this).parent().parent().children("input").val() ;
			
			$.ajax(
					{
						url : "/comment/json/getComment/"+commentNo,
						method : "POST",
						dataType : "Json",
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						
						success : function(JSONData, status){
							
							$("#"+commentNo+""+".cmCont").remove();
							$("#"+commentNo+""+".area").hide();
							
 							var modifyScreen = 
 								"<div class='ajax'><input type='text' class='form-control' id='commentContent' name='commentContent' "
 								+ "style='width: 100%; height: 40px' placeholder='"+JSONData.commentContent+"'/></div>";
							
 							var button = "<div class='ajax'><span class='glyphicon glyphicon-ok'>"
 								+ "<a href='#' onclick='update(); return false;'> "
 								+ "<input type='hidden' id='commentNo' value='"+JSONData.commentNo+"'>"
 								+ "����" 								
 								+ "</span></div>"
 							
							$("#"+commentNo+"").append(modifyScreen);
 							$("#"+commentNo+"").append(button);
						},
										
						error : function(request, status, error){							
							alert("Error");							
						}
				
					}
			);
		});
		
		$(".glyphicon-remove").on("click", function() {
			
			//alert();
			var commentNo = $(this).parent().parent().children("input").val();
			var result = confirm("���� ���� �Ͻðڽ��ϱ�?");
			
			if (result) {
				$.ajax({
							url : "/comment/json/delComment/"+commentNo,
							method : "POST",
							dataType : "Json",
							headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(JSONData, status){
								
								$("#"+commentNo+""+".row").remove();
								
							},
											
							error : function(request, status, error){							
								alert("Error");														
							}
				});
			}
		});
		
		$(".glyphicon-alert").on("click", function() {
			console.log("�Ű�");
			// $("form").attr("action","/comment/updateComment?commentNo=")
		});
		
		$(".glyphicon-plus").on("click", function() {
			console.log("���")
		});
		
		$(".glyphicon.glyphicon-chevron-up.after").on("click", function() {
			alert("�̹� ���ƿ� ���� ���");
		});
		
		$(".glyphicon.glyphicon-chevron-up.before").on("click", function(){
			console.log("��");
			
			var commentNo = $(this).parent().parent().children(".col-sm-9").children("input").val();
			
				$.ajax({
							url : "/comment/json/updateLikeCnt/"+commentNo+"/"+"plus",
							method : "POST",
							dataType : "Json",
							headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(JSONData, status){
								
								console.log("plus complete");
								
								$("#"+commentNo+""+".font >").remove();
								$("#"+commentNo+""+".font").html("<b>"+ JSONData.likeCount+"</b>");
								
							},
											
							error : function(request, status, error){							
								alert("Error");														
							}
				});

		});
		
		$(".glyphicon.glyphicon-chevron-down.before").on("click", function(){
			
			
			console.log("�ٿ�")
			var commentNo = $(this).parent().parent().parent().children(".col-sm-9").children("input").val();
			var likeCnt = $("#"+commentNo+""+".font >").text();
			if(likeCnt <= 0){
				console.log("�������� ����");
				return; 
			}
				$.ajax({
							url : "/comment/json/updateLikeCnt/"+commentNo+"/"+"minus",
							method : "POST",
							dataType : "Json",
							headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(JSONData, status){
								
								$("#"+commentNo+""+".font >").remove();
								$("#"+commentNo+""+".font").html("<b>"+ JSONData.likeCount+"</b>");
							
							},
											
							error : function(request, status, error){							
								alert("Error");														
							}
				});
		});
			
	});

	function update(){
		
		var search 	= {commentNo : $("#commentNo").val(), commentContent : $("#commentContent").val()};
		var convertSearch = JSON.stringify(search);
		
 		$.ajax(
 				{
 					url : "/comment/json/updateComment/",
 					method : "POST",
 					dataType : "json",
 					data : convertSearch,
 					headers : {
 						"Accept" : "application/json",
 						"Content-Type" : "application/json"
 					},
					
 					success : function(JSONData, status){						
						
 						$("#"+JSONData.commentNo+""+".cmCont").remove();
 						$(".ajax").remove();
 						$("#"+JSONData.commentNo+""+".area").show();
 						
 							var modifyScreen = 	
 								  "<div id="+JSONData.commentNo+"class='area'>"
 								+ "<h5 id="+JSONData.commentNo+"class='cmCont'>"+JSONData.commentContent+"</h5>";
						
 						$("#"+JSONData.commentNo+"").append(modifyScreen);
 	
					},
					
					
 					error : function(request, status, error){
						
 						alert("error");
						
 					}
 				});
	}
</script>
</head>

<body>

	<form class="container">
		<!-- 		<div class="row"> -->
		<!-- 			<div class="col-xs-4 col-md-12" align="left"> -->
		<!-- 				<b><h3>������</h3></b> -->
		<!-- 			</div> -->
		<!-- 		</div> -->

		<hr />
	
		<c:if test="${sessionScope.user.role eq null}">
		<div class="row">
			<div class="col-sm-12 col-md-12" align="center">
				��ȸ���� ����� �� �� �����ϴ� <a href="#" style="color: #0b43b3;">�α���</a> �� �̿���
				�ֽñ� �ٶ��ϴ�.
			</div>
		</div>
		<br>
		</c:if>
		
		<c:if test="${sessionScope.user.role != null}">
		<div class="row">
			<div class="col-sm-10 col-md-10" align="center">
				<input type="text" name="commentContent" class="form-control"
					style="width: 100%; height: 40px" placeholder="����Է�" />
			</div>
			<div class="col-sm-2 col-md-2" align="center">
				<button id="commentGo"
					style="background-color: #6190ed; color: white; width: 100%; height: 40px; border: 1px solid #1449b3">
					<h6>
						<b>��۵��</b>
					</h6>
				</button>
			</div>
		</div>
		<br>
		</c:if>

		<c:forEach var="comment" items="${list}">
			<div class="row" id="${comment.commentNo}">
				<div class="col-sm-1 col-md-1" align="center">
					<img src="https://via.placeholder.com/80"
						style="border-radius: 5px; min-height: 80px; min-width: 60px;" />
				</div>
				<div class="col-sm-9 col-md-9" align="left">
					
					<h4 id="${comment.commentNo}">
						<b>${comment.nickName}</b>&nbsp; <small>${comment.regDate}</small>&nbsp;
					</h4>
					<input type="hidden" name="commentNo" value="${comment.commentNo}">
					
					<div id="${comment.commentNo}" class="area">
					<h5  id="${comment.commentNo}" class="cmCont">${comment.commentContent}</h5>
					<c:if test="${comment.id == sessionScope.user.id }">
					<span class="glyphicon glyphicon-refresh"></span> &nbsp; 
					<span class="glyphicon glyphicon-remove"></span> &nbsp; 
					<span class="glyphicon glyphicon-alert"></span> &nbsp; 
					<span class="glyphicon glyphicon-plus"></span>
					</c:if>
					</div>
				</div>
				<div class="col-sm-1 col-md-1" align="center" style="padding-top: 10px; padding-right: 0 px;">
					<font size="8px" id="${comment.commentNo}" class="font">
						<b>${comment.likeCount}</b>
					</font>
				</div>
				<div class="col-sm-1 col-md-1" align="center" style="padding-top: 10px; padding-left : 0 px;">
					<span id="${comment.commentNo}" class="glyphicon glyphicon-chevron-up before" style="font-size: 20px;"></span>
					<p/>
					<p/>
					<span id="${comment.commentNo}" class="glyphicon glyphicon-chevron-down before" style="font-size: 20px"></span>
				</div>
			</div>
			<br/>
		</c:forEach>

		<div class="row">
			&nbsp;
			<p>&nbsp;
			<p>
		</div>


		<br>

	</form>




</body>
</html>