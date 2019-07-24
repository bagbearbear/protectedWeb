<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css"> 
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
		
		
		@font-face { 
			font-family: 'S-CoreDream-3Light'; 
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff'); 
			font-weight: normal; 
			font-style: normal; 
		}

		@font-face { 
			font-family: 'yg-jalnan'; 
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff'); 
			font-weight: normal; 
			font-style: normal; 
		}
		
		@font-face { 
			font-family: 'BMJUA'; 
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff'); 
			font-weight: normal; 
			font-style: normal; 
		}
		
		h3{
			font-family: 'BMJUA' !important; 
		}
		
		div.row { 
			font-family: 'S-CoreDream-3Light' !important; 
		}
		
		
/* 		#pagename { */
/* 			font-family: 'yg-jalnan' !important; */
/* 		} */
		

/* 	  	html { */
/* 	 	 scroll-behavior: smooth; */
/* 		} */
        .getadopt {
		    position: relative;
		    max-height: 250px; 
			min-height: 250px; 
			min-width: 255px;
			max-width: 255px;
		}
		.getadopt img {
		    max-height: 250px; 
			min-height: 250px; 
			min-width: 255px;
			max-width: 255px;
/* 		    transition: all 0.3s; */
		    display: block;
		    height: auto;
/* 		    transform: scale(1); */
		}
		
		
		.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: white;
  overflow: hidden;
  opacity: 0.7;

			min-width: 255px;
			max-width: 255px;
  height: 60px;
  transition: 1s ease;
}

.getadopt:hover .overlay {
  height: 0%;
}

.text {
  color: #3E6B79;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  t
		
    </style>

</head>

<body>

<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	<input type="hidden" id="boardCode" value="${param.boardCode }">
	
	
		<div class="page-header text-info">
		
			<div class="row" style="position:relative;height:35px;">
	        	<div class="col-xs-8 col-md-8" style="position:absolute; left:0px; bottom:0px;" >
	        	<font size="5px" id="pagename">
					<c:if test="${param.boardCode eq 'AD' }">�о�� ����Ʈ</c:if>
				    <c:if test="${param.boardCode eq 'MS' }">������ ����Ʈ</c:if>
	        	</font></div>
	        	<div class="col-xs-4 col-md-4" align="right" style="position:absolute; right:0px; bottom:0px; " ><font size="5px">
		        	<c:if test="${ !(empty sessionScope.user) && sessionScope.user.levels ne '������ȸ��' }">
		       		 	<button type="button" class="btn btn-primary">�۾���</button>
		        	</c:if>
	        	</font></div>
	        </div>
		
	    </div>



		<div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } ��
		    	</p>
		    </div>

			<form class="form-inline" name="detailForm">
		    	<div class="form-group">
					<select name="searchCondition" id="searchCondition">
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>����</option>
						<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>����</option>
					</select>
				</div>
					  
				<div class="form-group">
					<label class="sr-only" for="searchKeyword">�˻���</label>
					<input type="text" id="searchKeyword" name="searchKeyword"  placeholder="�˻�� �Է��ϼ���."
					    	value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
					<button type="button" class="btn btn-default">�˻�</button>
				</div>
		    
		   		<div class="col-md-1 text-right">
		    		<select name="areaCondition" >
						<option value="all">��ü</option>
						<option value="kw"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>������</option>
						<option value="kk"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>��⵵</option>
						<option value="ks"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>���</option>
						<option value="kj"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>���ֽ�</option>
						<option value="dj"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>������</option>
						<option value="bs"  ${ ! empty search.areaCondition && search.areaCondition=="�λ�" ? "selected" : "" }>�λ��</option>
						<option value="su"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>�����</option>
						<option value="us"  ${ ! empty search.areaCondition && search.areaCondition=="���" ? "selected" : "" }>����</option>
						<option value="ic"  ${ ! empty search.areaCondition && search.areaCondition=="��õ" ? "selected" : "" }>��õ��</option>
						<option value="jr"  ${ ! empty search.areaCondition && search.areaCondition=="����" ? "selected" : "" }>����</option>
						<option value="cc"  ${ ! empty search.areaCondition && search.areaCondition=="��û" ? "selected" : "" }>��û��</option>
					</select>
		    	</div>
		    </form>
		    
		</div>
			    
			    
	<!-- 		    <div class="col-md-5 text-right" style="padding-right: 0px;"> -->
	<!-- 		    		<span> -->
	<%-- 					    <c:if test="${param.boardCode eq 'MS' }">��ʺ� ������</c:if> --%>
	<!-- 		    		</span> -->
	<!-- 		    </div> -->
			    

		
		<div class="row"><div class="col-md-12"></div><br/></div>

      <div class="row">
      <div class="col-md-12"></div>
      <div class="col-md-12" >
<!--       <div class="col-md-12" style="background-color: #CADEE3;"> -->
      
      <div class="col-md-12" id="listAdoptJSON" style="padding-left: 0px">
      <c:set var="i" value="0" />
		  <c:forEach var="adopt" items="${list}">
			<c:set var="i" value="${ i+1 }" />

			<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: 10px;">
			
<!-- �������������������������������������������������� -->
		
			<figure class="getadopt">
			<input type="hidden" name="postNo" value="${adopt.postNo}"/>
				<span id="image-box"><c:if test="${adopt.statusCode ne 3}">
				  <img class="listImg" src="../resources/file/fileAdopt/${adopt.mainFile}"  onerror="this.src='http://placehold.it/400x400'"/>
				</c:if>
				<c:if test="${adopt.statusCode eq 3}">
				  <img class="listImg" src="../resources/file/fileAdopt/complete.png" style="width:100%;background:url('../resources/file/fileAdopt/${adopt.mainFile}') no-repeat center center;background-size:cover;" onerror="this.src='http://placehold.it/400x400'" />
				</c:if></span>
				<c:if test="${adopt.statusCode ne 3}">
				  <figcaption class="overlay">
					    <span id="text"><h3 align="center" style="width: 255px;padding-right: 0px;" >${adopt.postTitle}����������������������</h3>
					    <c:if test="${param.boardCode eq 'AD' }">
					   	 	<p align="right">${fn:substring( adopt.areaKr , 0, fn:indexOf(adopt.areaKr,'��')+1 ) }</p>
					   	</c:if>
					    <c:if test="${param.boardCode eq 'MS' }">
					   	 	<p align="right"><fmt:formatNumber value="${ adopt.dogPay }" pattern="#,###" />��</p>
					   	</c:if></span>
				  </figcaption></c:if>
			</figure>
			
			
<!-- �������������������������������������������������� -->
			
<!-- 			<figure class="getadopt"> -->
<%-- 			<input type="hidden" name="postNo" value="${adopt.postNo}"/> --%>
<%-- 				<c:if test="${adopt.statusCode ne 3}"> --%>
<%-- 				  <img class="listImg" src="../resources/file/fileAdopt/${adopt.mainFile}"  onerror="this.src='http://placehold.it/400x400'"/> --%>
<%-- 				</c:if> --%>
<%-- 				<c:if test="${adopt.statusCode eq 3}"> --%>
<%-- 				  <img class="listImg" src="../resources/file/fileAdopt/complete.png" style="width:100%;background:url('../resources/file/fileAdopt/${adopt.mainFile}') no-repeat center center;background-size:cover;" onerror="this.src='http://placehold.it/400x400'" /> --%>
<%-- 				</c:if> --%>
<!-- 				  <figcaption> -->
<%-- 					    <h3 align="center"><strong>${adopt.postTitle}</strong></h3> --%>
<%-- 					    <c:if test="${param.boardCode eq 'AD' }"> --%>
<%-- 					   	 	<p align="right">${fn:substring( adopt.areaKr , 0, fn:indexOf(adopt.areaKr,'��')+1 ) }</p> --%>
<%-- 					   	</c:if> --%>
<%-- 					    <c:if test="${param.boardCode eq 'MS' }"> --%>
<%-- 					   	 	<p align="right"><fmt:formatNumber value="${ adopt.dogPay }" pattern="#,###" />��</p> --%>
<%-- 					   	</c:if> --%>
<!-- 				  </figcaption> -->
<!-- 			</figure> -->
			
			</div>	
		
       </c:forEach>
       </div>
       
       </div>
       </div>
       
       <div class="col-md-12"><br/><br/></div>
       
       
	  <!--  table End /////////////////////////////////////-->
	  
 	</div>
 	
 	
 	
 	<jsp:include page="/layout/footer.jsp"></jsp:include>
 	<!--  ȭ�鱸�� div End /////////////////////////////////////-->
 	
 	
 	<!-- PageNavigation Start... -->
<%-- 	<jsp:include page="../common/pageNavigator_new.jsp"/> --%>
	<!-- PageNavigation End... -->
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	console.log($(window).height() );
	console.log($(window).scroll() );
	console.log($(document).height());
	var postNo;
	var postSize = 2;
	var area;
	var str = "";
	
	$(function(){
        $(window).scroll(function(){
//             console.log("documentHeight:" + documentHeight + " | scrollTop:" + scrollTop + " | windowHeight: " + windowHeight );
            
            // scrollbar�� thumb�� �ٴ� �� 30px���� ���� �ϸ� ����Ʈ�� �����´�.
//             if( $(this).scrollTop() ==$(document).height() -  $(this).height() ){
            if( $(this).scrollTop() +  $(this).height() + 400 > $(document).height() ){
//             	console.log("00000000000 "+$( 'input[name=postNo]').length);
//             	postNo = $($( 'input[name=postNo]')[$( 'input[name=postNo]').length-1]).val();
//             	console.log("11111111111 "+postNo);
            	postSize++;
            	console.log("11111111111 "+postSize);
            	listApply(postSize,"");
            }
        })//��ũ�� 
        listApply(postSize,"");
    })
	
	
    
	
	function listApply(postSize, str){
// 		console.log("???? "+$("#listAdoptJSON").html());
	
		console.log(area+'����'+postSize+", "+str);
		
// 		if(str == ""){
// 			var searchKeyword = $('input[name=searchKeyword]').val().trim();
// 			if (searchKeyword== null){
// 				searchKeyword="";
// 			}
// 			var searchCondition = $('select[name=searchCondition]').val().trim().toString();
			
// 			if (searchCondition== 0){
// 				searchCondition="";
// 			}
// 			console.log("�˻��� Ȯ�� : "+searchKeyword+", ����� Ȯ�� : "+searchCondition);
// 		}
// 		var searchData = { "searchCondition": searchCondition, "searchKeyword": searchKeyword };
		
		
  		$.ajax( 
		 		{
					url : "/adopt/json/listAdopt/AD/"+postSize+"/"+area,
					method : "POST" ,
// 					data : JSON.stringify({
// 						searchCondition : $("#searchCondition").val(),
// 						searchKeyword : $("#searchKeyword").val()
// 					}) ,
// 					data : searchData,
					dataType : "json" ,
					headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							  },
					success : function(data , status) {
// 							console.log(JSON.stringify(data));
							

							var displayValue = '';
							
							for( i=0; i<data.list.length; i++ ){

								var bCode = data.list[i].areaKr.substring( 0, data.list[i].areaKr.indexOf('��')+1 );
								var sCode = '<img class="listImg" src="../resources/file/fileAdopt/complete.png" style="background:url(\'..\/resources\/file\/fileAdopt\/'+data.list[i].mainFile+'\') no-repeat center center;background-size:cover;" onerror="this.src=\'http://placehold.it/400x400\'" />';
								if ( data.list[i].statusCode != 3 ) {
									sCode = '<img class="listImg" src="../resources/file/fileAdopt/'+data.list[i].mainFile+'"  onerror="this.src=\'http://placehold.it/400x400\'"/>';		
								}
								
								displayValue += '<div class="col-sm-4 col-md-3" style="vertical-align: middle;margin-top: 10px;">'
									      			+'<figure class="getadopt">'
									      				+'<input type="hidden" name="postNo" value="'+data.list[i].postNo+'"/>'
									      				+sCode
									      				+'<figcaption>'
									      					+'<h3><strong>'+data.list[i].postTitle+'</strong></h3>'
									      					+ '<p align="right">'+bCode+'</p>'
									      				+'</figcaption>'
									      			+'</figure>'
								      			+'</div>';	
					            
							}
							if(str!=""){
								$('#listAdoptJSON').children().remove();
								$('.text-primary').text('��ü '+data.totalCount+' ��');
							}
							$('#listAdoptJSON').append(displayValue);
			
						
					},
					error: function(request, status, error){ 
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			        }
				
			});

 	}
	
		
		
		//============= "�˻�"  Event  ó�� =============	
		 $(function() {
			$( "button:contains('�˻�')" ).on("click" , function() {
// 				listApply(postSize,"dd");
// 				 alert($('select[name=areaCondition] option:selected').val());
				fncGetList(1);
			});
			
			// ����ȸ
			$(document).on("click")
			$( "#listAdoptJSON" ).on("click", ".getadopt" , function() {
// 				console.log("sdasdasdasdasdasdasdsad");
			
				 self.location ="/adopt/getAdopt?postNo="+$(this).children( $('input')).val().trim();
			});
			
			// �� ����ϱ�
			$( "button:contains('�۾���')" ).on("click" , function() {
				self.location = "/adopt/addAdopt?boardCode=${param.boardCode}"
			});


// 			$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		});	
	
	
		$('select[name=areaCondition]').change( function(){
// 			alert($('select[name=areaCondition]').val());
// 			fncGetList(1);
			area = $('select[name=areaCondition]').val();
			postSize = 1;
			listApply(postSize,"dd");
		});
		
		//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
		function fncGetList(currentPage) {
			var ccc = $( '#boardCode' ).val();
			$("#currentPage").val(currentPage);
			$("form").attr("method" , "POST").attr("action" , "/adopt/listAdopt?boardCode=${param.boardCode }").submit();
		}
		
	
	</script>
	
	
	
</body>

</html>