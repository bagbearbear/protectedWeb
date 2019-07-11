<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<!-- ////////////////////달력 /////////////////////////////-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	
       #start { border:3px solid #5271c7; }
	   #startNo { border:3px solid #ffffff}
	   #btn-add{
		background: #fff;
        border:2px solid #29304d;
		color:#29304d;
		height:40px;
		width:150px;
		}
		#btn-cancel{
		background: #fff;
        border:2px solid #29304d;
		color:#29304d;
		height:40px;
		width:150px;
		}		

    </style>

	</head>
	<body>

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">	
		<h1 class="bg-primary text-center">후원 신청 등 록</h1>
	    </div>		
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">
	
		<div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">후원목표금액</h4>
			<h5 class="col-sm-offset-3 col-sm-12">
			투표개수는 (<strong class="text-danger">목표금액 X 0.001</strong>)표로 적용됩니다. (10만원 ~ 300만원까지 입력가능합니다.)</h5>
		    <div class="col-sm-offset-3 col-sm-5">
		      <input type="text" class="form-control" id="fundTargetPay" name="fundTargetPay" placeholder="0" maxlength="7" >
		    </div>
		    <strong>원</strong>
		  </div>
		  
		  <div class="form-group" id="voteNum">
		    <h4 class="col-sm-offset-3 col-sm-12">투표수 <strong class="text-danger">0</strong>표</h4>
		  </div>

		  <div class="form-group" >
		    <h5 class="col-sm-offset-3 col-sm-12" >
			후원게시글로 이동하려면 받아야 할 투표 수입니다.
			</h5>
		  </div>
		  		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">후원목표기간</h4>
			<h5 class="col-sm-offset-3 col-sm-12">
			후원 받을기간을 입력하세요. (7일 ~ 30일까지 선택가능합니다.)<br/>
			투표가 마감되었을 때 시작 날부터의 기간입니다. 투표 기간은 <strong class="text-danger">30</strong>일로 고정됩니다.</h5>
		    <div class="col-sm-offset-3 col-sm-5"">
		      <select class="form-control" name="fundTargetDay" id="fundTargetDay">
		      <c:forEach var ="i" begin="7" end ="30" step="1">
				  	<option value="${i}" >${i}</option>
				</c:forEach>	
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">글제목</h4>
		    <div class="col-sm-offset-3 col-sm-5"">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" placeholder="제목을 입력해주세요." maxlength="10" >
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">글내용</h4>
			    <div class="col-sm-offset-3 col-sm-5"">
			      <textarea name="postContent" class="form-control" rows="5"  placeholder="내용을 입력해주세요."></textarea>
			    </div>
			  </div>

            <!-- 첨부 버튼 -->
            <div id="attach">
                <span class="col-sm-offset-3 label label-primary" ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">사진등록</label></span>&nbsp;&nbsp;대표이미지는 파란테두리입니다.
                <input id="uploadInputBox" style="display: none" type="file" value="등록" name="filedata" multiple />
            </div>
            
            <br/><br/>
            
            <!-- 미리보기 영역 -->
            <div class="form-group">
            <div id="preview" class="content col-sm-offset-3 col-sm-5" style='display:inline; min-width:1200px;'></div> 
            </div>
		  <div class="form-group">
		   <h4 class="col-sm-offset-3 col-sm-12">연락처</h4>
		     <h5 class="col-sm-offset-3 col-sm-12">
			문의받을 연락처를 입력해주세요.</h5>			
			 <div class="col-sm-offset-3 col-sm-2">
		      <select class="form-control" name="phone1" id="phone1">
				  	<option value="010" >010</option>
					<option value="011" >011</option>
					<option value="016" >016</option>
					<option value="018" >018</option>
					<option value="019" >019</option>
				</select>
		    </div>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="phone2" name="phone2" placeholder="번호" maxlength="4">
		    </div>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="phone3" name="phone3" placeholder="번호" maxlength="4">
		    </div>
		    <input type="hidden" name="phone"  />
		  </div>
		  
		  <br/><br/>
		  <div class="form-group text-center">
	  			<button type="button" id="btn-add">등록</button>
	  			<button type="button" id="btn-cancel">취소</button>
		  </div>
		  <br/><br/><br/><br/>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->


    <!--  ///////////////////////// JavaScript ////////////////////////// --> 	
	<script type="text/javascript" >
	
	function fncAddFunding(){
		
		//Form 유효성 검증

		var fundTargetPay = $('input[name="fundTargetPay"]').val();
		var postTitle = $('input[name="postTitle"]').val();
		var postContent = $('input[name="postContent"]').val();
		var phone2 = $('input[name="phone2"]').val();
		var phone3 = $('input[name="phone3"]').val();	

		if(fundTargetPay == null || fundTargetPay.length<1){
			alert("후원목표금액은 반드시 입력하여야 합니다.");
			$('input[name="fundTargetPay"]').focus();
			return;
		}
		if(fundTargetPay < 100000 || fundTargetPay > 3000000){
			alert("후원목표금액은 10만원이상 300만원이하로 입력하여야 합니다.")
			$('input[name="fundTargetPay"]').focus();
			return;
		}
		if(postTitle == null || postTitle.length<1){
			alert("글제목은 반드시 입력하여야 합니다.");
			$('input[name="postTitle"]').focus();
			return;
		}
		alert(postContent)
/* 		if(postContent == null || postContent.length<1){
			alert("글내용은 반드시 입력하셔야 합니다.");
			$('input[name="postContent"]').focus();
			return;
		} */
		if(phone2 == null || phone2.length<1){
			alert("휴대폰번호는 반드시 입력하셔야 합니다.");
			$('input[name="phone2"]').focus();
			return;
		}
		if(phone3 == null || phone3.length<1){
			alert("휴대폰번호는 반드시 입력하셔야 합니다.");
			$('input[name="phone3"]').focus();
			return;
		}
		
		var value = "";	
		if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
			var value = $("#phone1 option:selected").val() + "-" 
								+ $("input[name='phone2']").val() + "-" 
								+ $("input[name='phone3']").val();
		}
		$("input:hidden[name='phone']").val( value );
		
		//============= 다중파일업로드 AJAX =============
   		 $(function() {     
   			var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < 100; index++) {
                //formData 공간에 files라는 이름으로 파일을 추가한다.
                //동일명으로 계속 추가할 수 있다.
                formData.append('files',files[index]);
            }
            $.ajax({
                type : 'POST',
                enctype : 'multipart/form-data',
                processData : false,
                contentType : false,
                cache : false,
                timeout : 600000,
                url : '/funding/json/imageupload/',
                dataType : 'JSON',
                data : formData,
                success : function(result) {
                    //이 부분을 수정해서 다양한 행동을 할 수 있으며,
                    //여기서는 데이터를 전송받았다면 순수하게 OK 만을 보내기로 하였다.
                    //-1 = 잘못된 확장자 업로드, -2 = 용량초과, 그외 = 성공(1)
                    if (result === -1) {
                        alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
                        // 이후 동작 ...
                    } else if (result === -2) {
                        alert('파일이 10MB를 초과하였습니다.');
                        // 이후 동작 ...
                    } else {
                        alert('이미지 업로드 성공');
                        // 이후 동작 ...
                    }
                }
                //전송실패에대한 핸들링은 고려하지 않음
            });
        });


		$('form').attr("method","POST").attr("action","/funding/addFunding").attr("enctype","multipart/form-data").submit();
	}
	
	//============= "다중파일업로드"  Event 처리 및  연결 =============		

	    //임의의 file object영역
     var files = {};
     var previewIndex = 0;

     // image preview 기능 구현
     // input = file object[]
     function addPreview(input) {
         if (input[0].files) {
             //파일 선택이 여러개였을 시의 대응
             for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {

                 var file = input[0].files[fileIndex];
            	 
                 if (validation(file.name))
                     continue;

     	        var fileName = file.name + "";   
     	        var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
     	        var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex, fileName.length);       
     	        
                //append할때 동영상 이미지 구분해주기
					var imgSelectName = "img";
					if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
						imgSelectName = "iframe";
					}	                        

                 var reader = new FileReader();
                 reader.onload = function(img) {
                     //div id="preview" 내에 동적코드추가.
                     //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                     
                     var imgNum = previewIndex++;
                     
                     var previewId = "";             
                     if(imgNum==0){
                     	previewId = "start";
                     }else{
                     	previewId = "startNo";	
                     }
                 
                     $("#preview").append(
                                     "<div class=\"preview-box\" id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:130px' >"
                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
                                             + "<a href=\"#\" value=\""
                                             + imgNum
                                             + "\" onclick=\"deletePreview(this)\">"
                                             + "   삭제" + "</a>" + "</div>");
                     files[imgNum] = file;

                 };

                 reader.readAsDataURL(file);
             }
         } else
             alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
     }

     //============= preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제 =============
     function deletePreview(obj) {
         var imgNum = obj.attributes['value'].value;
         alert(imgNum);
         delete files[imgNum];
         $("#preview .preview-box[value=" + imgNum + "]").remove();
         resizeHeight();
     }

     //============= 파일 확장자 validation 체크 =============
     function validation(fileName) {
         fileName = fileName + "";
         var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
         var fileNameExtension = fileName.toLowerCase().substring(
                 fileNameExtensionIndex, fileName.length);
         if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png')||(fileNameExtension === 'avi')||(fileNameExtension === 'mp4'))) {
             alert('jpg, gif, png, avi, mp4 확장자만 업로드 가능합니다.');
             return true;
         } else {
             return false;
         }
     }
     

	 	$(document).ready(function() {

		 	//============= 사진미리보기 =============
	 		$('#attach input[type=file]').change(function() {
             addPreview($(this)); //preview form 추가하기
         });

	 		//============= 후원목표금액 =============
             $('#fundTargetPay').keyup(function(){
            	 
                 //후원목표금액 길이초과
                 if ($(this).val().length > $(this).attr('maxlength')-1) {
                     alert('제한길이 초과');
                     $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                 }
                 //후원목표금액 문자 입력 검증     
            	 var exp = /^[0-9]+$/;
            	 if($(this).val().match(exp)){
            		//금액에 따른 표개수
      				if($(this).val().match(exp)){
    					 var inputed = Math.round($("input[name='fundTargetPay']").val()*0.001);			
    					 $("#voteNum").children("h4").remove();
    					 $("#voteNum").append("<h4 class=\"col-sm-offset-3 col-sm-12\">투표수 <strong class=\"text-danger\">"+inputed+"</strong>표</h4>");
    					}
            		 return true;
            	 }else{
            		alert("숫자만 입력하세요.")
            		var val = $(this).val(); 
            		var len = val.length; 
            		$(this).val(val.substring(0,len-1));  		
            	 }
            	
             });
	 		
     		//============= 글제목 길이 체크 =============
             $('#postTitle').keyup(function(){
                 if ($(this).val().length > $(this).attr('maxlength')-1) {
                     alert('제한길이 초과');
                     $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                 }
             });

     }); 
	
	$(function() {
		
			//============= 등록 Event  처리 =============	
			$( "#btn-add" ).on("click" , function() {
				fncAddFunding();
				});
			
			//============= 취소 Event  처리 =============
			 $( "#btn-cancel" ).on("click" , function() {
					history.go(-1);
				});
				
	});	
	  	 		
	
	</script>
	
		
</body>

</html>