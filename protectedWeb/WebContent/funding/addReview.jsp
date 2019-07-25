<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

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
   
   
    <!-- jQuery UI toolTip ��� CSS-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- jQuery UI toolTip ��� JS-->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
    <!-- ckeditor ��� CSS-->   
    <script src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>
    
    	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
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
		.container{
		width: 1000px;
		font-size :15px;
		}		
		.form-group{
		padding-left:170px;
		padding-right:100px;
		}
		.form-form{
	    padding-left:15px;	
		}
		.ck.ck-editor {
			max-width: 700px;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 300px;
			max-width: 700px;
		}			
		@font-face{
          font-family: NanumSquare;
          src : url(http://ssl.pstatic.net/static/kin/fonts/NanumSquareR.woff2) format("woff2");
       }
       body{
          font-family: NanumSquare, sans-serif !important;
       }
    </style>

	</head>
	<body>
	<!-- ToolBar Start /////////////////////////////////////-->
	 <jsp:include page="/layout/toolbar.jsp"></jsp:include>
   	<!-- ToolBar End /////////////////////////////////////-->
      
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container ">
		<div class="form-group">
		<div class="page-header text-center">	
		<font size=6>�Ŀ� �ı� ��� </font>  �ı⸦ <strong style="color:#225cba">���ϰ�</strong> �ۼ����ּ���.
	    </div>		
		</div>	
					<!--  table Start /////////////////////////////////////-->
			      <table class="table table-hover table-striped" >
			      
			        <thead>
			          <tr>
			            <th ></th>
			            <th><b>�Ŀ��� ����</b></th>
			            <th><b>�г���</b></th>	
			          </tr>
			        </thead>
			       
			 		<tbody>	
			 		   <tr>			
						  <td width="150px;" align="center"><img src="/resources/file/fileSF/${funding.mainFile}"  width="150px;" height="150px;"/></td>		
						  <td width="150px;">${funding.postTitle}</td>					 		  
						  <td width="150px;">${funding.nickname}</td> 
						</tr>
			        </tbody> 
			  
			      </table>
             	  <!--  table End /////////////////////////////////////--> 	
             	  <br/>	
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">

		  <div class="form-group">
			<h3><b>�ı�����</b></h3><p/>		
		    <div class=>
		      <input type="text" class="form-control" id="reviewTitle" name="reviewTitle" placeholder="������ �Է����ּ���." style="width:700px; height:35px;">		
		    </div>
		  </div>
		  <br/>
		  <div class="form-group">
			<h3><b>�ı⳻��</b></h3><p/>			
			    <div class=>
			   <textarea id="editor" name="reviewContent" style="text-align: left;" placeholder="������ �Է����ּ���." >
					
					</textarea>
			    </div>
			  </div>
			<br/>
            <!-- ÷�� ��ư -->
            <div id="attach" class="form-group">
                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">�������</label></span>&nbsp;&nbsp;�Ǿ� �̹����� ��ǥ�̹����Դϴ�. (�ִ� 8����� ���ε� �����մϴ�.)
                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
            </div>
           <br/>
            
            <!-- �̸����� ���� -->
            <div class="form-group">
            <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'></div> 
            </div>

        
		  <br/><br/>
		  <div class="form-group text-center">
	  			<button type="button" id="btn-add">���</button>
	  			<button type="button" id="btn-cancel">���</button>
		  </div>
          <input type="hidden" class="form-control" id="postNo" name="postNo" value="${funding.postNo }" >		  
		  <input type="hidden" class="form-control" id="multiFile" name="multiFile" >
		  <br/><br/><br/><br/><br/><br/><br/><br/>
		</form>
		<!-- form Start /////////////////////////////////////-->

    </div>
   <!--  ȭ�鱸�� div end /////////////////////////////////////-->
    <!--================ start footer Area  =================-->
    <!-- footer Start /////////////////////////////////////-->
	 <jsp:include page="/layout/footer.jsp"></jsp:include>
   	<!-- footer End /////////////////////////////////////-->  
    <!--================ End footer Area  =================-->

    <!--  ///////////////////////// JavaScript ////////////////////////// -->    
   <script type="text/javascript" >

   //============= ��Ϲ�ư �������� �Լ� =============      
   function fncAddReview(){
      
      //Form ��ȿ�� ����
      var reviewTitle = $('input[name="reviewTitle"]').val();
      var postContent = $('input[name="reviewContent"]').val();
      var file = $("#multiFile").val();    
      
      if(reviewTitle == null || reviewTitle.length<1){
         alert("�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
         $('input[name="reviewTitle"]').focus();
         return;
      }
/*       if(postContent == null || postContent.length<1){
         alert("�۳����� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="postContent"]').focus();
         return;
      } */
      if(file == null || file.length<1){
         alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
         return;
      }

      //============= �������Ͼ��ε� AJAX =============
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
                url : '/Images/json/imageupload/SF',
                dataType : 'JSON',
                data : formData,
                success : function(result) {
                    if (result === -1) {
                        alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
                        // ���� ���� ...
                    } else if (result === -2) {
                        alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
                        // ���� ���� ...
                    } else {
                        alert('�̹��� ���ε� ����');
                    }
                }
            });
        });


      $('form').attr("method","POST").attr("action","/funding/addReview").attr("enctype","multipart/form-data").submit();
   }
   
   //============= "Editor" =============   
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
   
   //============= "�������Ͼ��ε� ���ϸ� �����ؼ� value" =============   
   function fnAddFile(fileNameArray) {
         $("#multiFile").val(fileNameArray)    
   }   
   
   //============= "�������Ͼ��ε�"  Event ó�� ��  ���� =============      

       //������ file object����
     var files = {};
     var previewIndex = 0;
     var fileNameArray = new Array();
     // image preview ��� ����
     // input = file object[]
     function addPreview(input) {
         if (input[0].files) {
             //���� ������ ���������� ���� ����
             for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {

                 var file = input[0].files[fileIndex];
                
                 if (validation(file.name))
                     continue;

                var fileName = file.name + "";   
                var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
                var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex, fileName.length);       
                
                //append�Ҷ� ������ �̹��� �������ֱ�
               var imgSelectName = "img";
               if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
                  imgSelectName = "iframe";
               }                           

                 var reader = new FileReader();
                 reader.onload = function(img) {
                     //div id="preview" ���� �����ڵ��߰�.
                     //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
                     
                     var imgNum = previewIndex++;
                     
                    //8�� �̻� ���ε��
                     if(Object.keys(files).length>=8){
                        alert("������ 8������� ���ε� �����մϴ�.");
                        delete files[imgNum];
                     }else{
               // 8�� ���� 
                     $("#preview").append(
                                     "<div class=\"preview-box\" value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
                                             + "<span href=\"#\" value=\""
                                             + imgNum
                                             + "\" onclick=\"deletePreview(this)\">"
                                             + "   ����" + "</span>" + "</div>");

                     files[imgNum] = file;
                     fileNameArray[imgNum]=file.name;
                     fnAddFile(fileNameArray);
                     }

                 };

                 reader.readAsDataURL(file);
             }
         } else
             alert('invalid file input'); // ÷��Ŭ�� �� ��ҽ��� ����å�� ������ �ʾҴ�.
     }

     //============= preview �������� ���� ��ư Ŭ���� �ش� �̸������̹��� ���� ���� =============
     function deletePreview(obj) {
         var imgNum = obj.attributes['value'].value;
         delete files[imgNum];
         fileNameArray.splice(imgNum,1);
         fnAddFile(fileNameArray);
         $("#preview .preview-box[value=" + imgNum + "]").remove();
         resizeHeight();
     }

     //============= ���� Ȯ���� validation üũ =============
     function validation(fileName) {
         fileName = fileName + "";
         var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
         var fileNameExtension = fileName.toLowerCase().substring(
                 fileNameExtensionIndex, fileName.length);
         if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png')||(fileNameExtension === 'avi')||(fileNameExtension === 'mp4'))) {
             alert('jpg, gif, png, avi, mp4 Ȯ���ڸ� ���ε� �����մϴ�.');
             return true;
         } else {
             return false;
         }
     }
     

       $(document).ready(function() {

          //============= �����̸����� =============
          $('#attach input[type=file]').change(function() {
             addPreview($(this)); //preview form �߰��ϱ�
         });

          
           //============= ������ ���� �Է� ���� =============
             $('#postTitle').keyup(function(){
            	 var byteText = $(this).val();
              	 var byteNum = 0;
            	 
                  for(var i = 0; i < byteText.length ; i++) {
                     byteNum += ( byteText.charCodeAt(i) > 127 ) ? 2 : 1;
                  }
                  if(byteNum > 30) {              	 
                      alert('���ѱ��� �ʰ�');
                      $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                  }
             });

             
     }); 
   
   $(function() {
      
         //============= ��� Event  ó�� =============   
         $( "#btn-add" ).on("click" , function() {
        	 fncAddReview();
            });
         
         //============= ��� Event  ó�� =============
          $( "#btn-cancel" ).on("click" , function() {
               history.go(-1);
            });
            
   });   
               
   
   </script>
   
      
</body>

</html>