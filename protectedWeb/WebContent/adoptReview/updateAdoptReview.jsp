<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>보호할개 · 분양후기글 수정</title>
	<!--  meta  -->
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!--  bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>
	
	<!--  CSS -->
	<style>
	
		body {
			padding-top: 50px;
		}
		
		#preview img {
			width: 100px;
			height: 100px;
		}
		
		#preview p {
			text-overflow: ellipsis;
			overflow: hidden;
		}
		
		.preview-box {
			padding: 5px;
			border-radius: 2px;
			margin-bottom: 10px;
		}
		
		.ck.ck-editor {
			min-width: 95%;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 300px;
			min-width: 95%;
		}
		
		label {
			background-color: #3e6dad;
			color: white;
			border-radius: 10px;
		}
		
	</style>

	<!--  JavaScript  -->
	<script type="text/javascript">


	</script>

</head>

<body>

	<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<div class="container">
	
	<div class="hero-wrap hero-bread" style="padding-bottom: 30px; padding-top : 60px;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p ><span class="mr-2">Update</span> <span>AdoptReview</span></p>
            <font size="7">후기수정</font>
          </div>
        </div>
      </div>
    </div>

		<hr>

		<div style="border: 1px solid #d7dade; padding: 3px;">

			<form class="form-horizontal" name="detailForm">

				<input type="hidden" name="postNo" value="${board.postNo}">
				<div class="row">
					<div class="col-xs-12 col-md-12">
						<input type="text" class="form-control" name="postTitle"
							id="postTitle" style="height: 50px; font-size: 20px" value="${board.postTitle}"
							placeholder="제목을 입력하세요." />
					</div>
				</div>


				<br />

				<div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="body">
							<!-- 첨부 버튼 -->
							<div id="attach">
								<label class="waves-effect waves-teal btn-flat"
									for="uploadInputBox">사진첨부</label> <input id="uploadInputBox"
									style="display: none" type="file" name="filedata" multiple />
							</div>

							<!-- 미리보기 영역 -->
							<div id="preview" class="content" align="center"
								style="display: inline; min-width: 600px;"></div>

							<!-- multipart 업로드시 영역 -->
							<div id="uploadForm" style="display: none;"></div>
						</div>
					</div>
				</div>

				<hr />

				<div id="ckEditor" align="center">

					<div id="toolbar-container" align="center"
						class="col-xs-12 col-md-12"></div>
					<textarea class="col-xs-12 col-md-12" id="editor"
						name="postContent" style="text-align: left;">
						${board.postContent}
					</textarea>
				</div>
				

               		

			</form>
		</div>

		<hr />
		
		
		<div class="row mt-5 pt-3 d-flex">
          	<div class="col-md-12">
          	
				<p><button class="btn btn-primary py-3 px-4 col-md-12">수정</button></p>
				
				<div class="form-group">
					<div class="col-md-12">
						<div class="radio" align="right">
							<p><a href="#" ><font color="gray">취소</font></a></p>
						</div>
					</div>
				</div>
				
          	</div>
        </div>



	</div>
	
	<br/><br/><br/><br/>
	<jsp:include page="/layout/footer.jsp"></jsp:include>


			
	<script>
	
	


	      //  ================================ CKEditor ============================================== 
	let editor;
	
	ClassicEditor
    .create( document.querySelector( '#editor' ),{
    
    	toolbar : [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
    	heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
            ]
        }
    	
    })
    .then( newEditor => {
        editor = newEditor;
    } )
    .catch( error => {
        console.error( error );
    } );
	
	 $(document).ready(function() {

         //============= 사진미리보기 =============
         $('#attach input[type=file]').change(function() {
            addPreview($(this)); //preview form 추가하기
        });
	 });
         
	function fncUpdateAdoptReview(){
	         
	      //============= 다중파일업로드 AJAX =============
	    	  
	    	  var title = $("#postTitle").val();
	      
	      	  if(title.length < 1 || title == null ){
	      		  alert("제목을 입력해 주세요");
	      	  }
	          $(function() {     
	            var form = $('#uploadForm')[0];
	            var formData = new FormData(form);

	            for (var index = 0; index < 100; index++) {
	                formData.append('files',files[index]);
	            }
	                
	                $.ajax({
	                type : 'POST',
	                enctype : 'multipart/form-data',
	                processData : false,
	                contentType : false,
	                cache : false,
	                timeout : 600000,
	                url : '/Images/json/imageupload/IS',
	                dataType : 'JSON',
	                data : formData,
	                success : function(result) {
	                    if (result === -1) {
	                        alert('jpg, gif, png, bmp 확장자만 업로드 가능합니다.');
	                        // 이후 동작 ...
	                    } else if (result === -2) {
	                        alert('파일이 10MB를 초과하였습니다.');
	                        // 이후 동작 ...
	                    } else {
	                        alert('이미지 업로드 성공');
	                    }
	                }
	            });
	        });


	      $('form').attr("method","POST").attr("action","/adoptReview/updateAdoptReview").attr("enctype","multipart/form-data").submit();
	   }
	   
	   //============= "다중파일업로드 파일명만 저장해서 value" =============   
	   function fnAddFile(fileNameArray) {
	         $("#multiFile").val(fileNameArray)    
	   }   
	   
	   //============= "다중파일업로드"  Event 처리 및  연결 =============      

	       //임의의 file object영역
	     var files = {};
	     var previewIndex = 0;
	     var fileNameArray = new Array();
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
	                    //8장 이상 업로드시
	                     if(Object.keys(files).length>=8){
	                        alert("사진은 8장까지만 업로드 가능합니다.");
	                        delete files[imgNum];
	                     }else{
	               // 8장 이하 
	               
	               			document.querySelector( '#editor' ).addEventListener( 'click', () => {
                	    const editorData = editor.getData();     	           
                		} );
	               
	               		 editor.setData(editor.getData()+"<p><"+imgSelectName+" src='" + img.target.result + "' style='min-width:100%'/></p><p/>");
	          
	                     $("#preview").append(
	                                     "<div class=\"preview-box\"  id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
	                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
	                                             + "<a href=\"#\" value=\""
	                                             + imgNum
	                                             + "\" onclick=\"deletePreview(this)\">"
	                                             + "   삭제" + "</a>" + "</div>");

	                     files[imgNum] = file;
	                     fileNameArray[imgNum]=file.name;
	                     fnAddFile(fileNameArray);
	                     }

	                 };

	                 reader.readAsDataURL(file);
	             }
	         } else
	             alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
	     }

	     //============= preview 영역에서 삭제 버튼 클릭시 해당 미리보기이미지 영역 삭제 =============
	     function deletePreview(obj) {
	         var imgNum = obj.attributes['value'].value;
	         delete files[imgNum];
	         fileNameArray.splice(imgNum,1);
	         fnAddFile(fileNameArray);
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
	     
	     
	   ///////////////////////////////////////////////////////////////////////////////
	     
	     $(function() {
				$( "button:contains('수정')" ).on("click" , function() {
					fncUpdateAdoptReview();
				});
				
				$( "a:contains('취소')" ).on("click" , function() {
					self.location = "/adoptReview/getAdoptReview?postNo=${board.postNo}"
				});
		 });
</script>


</body>
</html>