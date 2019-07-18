<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>

<html lang="ko">
<head>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>�ְ߻��</title>
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

<script type="text/javascript">
	
	var cnt = 3;	
	var searchKeyword = '�ְ߻��';
	
// 	$(function () {
// 		$("button").on("click",function(){
// 			searchKeyword = $(this).text();
// 			alert(searchKeyword)
// 			fnGetList();
// 		});
// 	});
	
	
	function fnGetList(sGetToken){
		
		console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+sGetToken);
		
// 			var $getval = $("#search_box").val();
		
// 			if($getval == ""){
// 			//alert("�˻��� �Է� !");
// 				$("#search_box").focus();
// 				return;
// 			}
		
		$("#get_view").empty();
		$("#nav_view").empty();
		
		var sTargetUrl = "https://www.googleapis.com/youtube/v3/search?part=snippet&order=relevance"
				+ "&q=" + encodeURIComponent(searchKeyword) + "&key=AIzaSyDp2Rg4rgoTVN4mB33-zyPZgl1GjIpYt1w";
		
		console.log(sTargetUrl);
		
		if(sGetToken){
// 			sTargetUrl += "&pageToken=" + sGetToken;
			cnt += 3 ;
			console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ cnt);
			sTargetUrl += "&maxResults="+cnt;
		}
		
		$.ajax({
			
			type : "POST",
			url : sTargetUrl,
			dataType : "jsonp",
			success : function(jdata) {
				
				//console.log(jdata);
				
				$(jdata.items).each(function(i){
					
					var videoId = this.id.videoId;
					console.log(" ���� ���̵� : " + videoId) ;
					console.log(" sinppet.title : " + this.snippet.title) ; 
					console.log(" sinppet.description : " + this.snippet.description) ; 
					console.log(" sinppet.thumbnail : " + this.snippet.thumbnails.default.url);
					$("#get_view").append(
							  "<div class='col-md-4 style='border : 1px solid black;''>"
							+ "<iframe width='300' height='200' src='https://www.youtube.com/embed/"+this.id.videoId+"'></iframe>"
							+ "<span class='box'>"
							+ "<a href=http://youtu.be/"+this.id.videoId+" "+"target='_blank'>" + "<br><span class='title'>"+this.snippet.title+"</span></a><br>"										
							+ this.snippet.publishedAt+"<br>"
							+ "<span class='description'><br>"+this.snippet.description+"</span><br><span class='channelTitle'>"+this.snippet.channelTitle+"</span></span><br><p>"
							+ "</div>");
									
				}).promise().done(function(){
					
// 					if(jdata.prevPageToken){
// 						$("#nav_view").append("<button class='paging' onclick='javascript:fnGetList(\""+jdata.prevPageToken+"\");'> < </button>");
// 					}				
				
				
					if(jdata.nextPageToken){
						$("#nav_view").append("<button class='paging btn btn-default' onclick='javascript:fnGetList(\""+jdata.nextPageToken+"\");'> �� ���� </button>");
					}
				})
			}
		});	
	}
</script>

<style type="text/css">
img {
	width: 100px;
	height: 100px;
}

span {
	max-width: 900px;
	/* 	background-color: green; */
	display: inline-block;
}

.box {
	/* 	background-color: red; */
	min-width: 50%;
	max-width: 50%;
	/* 	min-height: 500px; */
	/* 	max-height: 500px; */

	/* 	margin-top : 1px; */
	/* 	margin-bottom : 1px; */
	/* 	padding-bottom: 1px; */
}

#get_view {
	float: left;
}

.paging btn btn-default {
	width: 100%;
	height: 50px;
	background-color: black;
	color: white;
}

.title {
	font-size: 18px;
}

.description {
	font-size: 14px;
}

.channelTitle {
	font-size: 14px;
	font-weight: bold;
}

.btn btn-default{
	color: white;
	background-color : #3a76d6;
}

.btn btn-default :hover{
	background-color : #1062e6;
}
</style>
</head>
<body onload="fnGetList();">

	<jsp:include page="/layout/toolbar.jsp"></jsp:include>

	<div class="container">

	<button class="btn btn-default">#�ְ߻��</button>
	<button class="btn btn-default">#�ְ��Ʒ�</button>
	<button class="btn btn-default">#�ְߺо�</button>
	<button class="btn btn-default">#�ְ�����</button>
	<button class="btn btn-default">#�ְ�ī��</button>
	
<!-- 	<form name="form1" method="post" onsubmit="return false;"> -->
<!-- 		<input type="text" id="search_box" /> -->
<!-- 		<button onClick="fnGetList();">��������</button> -->
<!-- 	</form> -->
	
	<hr>
	<div id="get_view" class="row"></div>
	<div id="nav_view" class="col-md-12 col-sm-12 col-lg-12"></div>
	</div>

</body>
</html>