 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>ADD ADOPTREVIEW</title>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    
    <style type="text/css">
    	html {
	 	 scroll-behavior: smooth;
		}
		
    	#editor {
			min-height: 600px;
			max-width: 1130px;
			margin-left: 15px;
			text-align: left;
		}
		.ck.ck-editor {
			min-width: 95%;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 300px;
			min-width: 95%;
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
		.waves-effect waves-teal btn-flat {
			background-color: #3e6dad;
			color: white;
			border-radius: 10px;
		}
		
    
    </style>
  </head>
  <body class="goto-here">
	<jsp:include page="/layout/toolbar.jsp"></jsp:include>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
<!--           	<p class="breadcrumbs"><span class="mr-2"><a href="index0.html">Home</a></span> <span>Checkout</span></p> -->
            <h1 class="mb-0 bread" id="h1">
           		�ı� ���
            </h1>
          </div>
        </div>
      </div>
    </div>
    
    

    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-8 ftco-animate">
			<form  class="billing-form" name="detailForm">
	          	<div class="row align-items-end">
	          	
	          	
				<input type="hidden" name="boardCode" value="AR" >
				<input type="hidden" name="id" value="${user.id }" >
				<input type="hidden" name="delCode" value="1" >
				<input type="hidden" name="nickName" value="${user.nickname}" >
				<input type="hidden" name="phone" value="${user.phone }" >
<!-- 				<input type="hidden" class="form-control" id="multiFile" name="multiFile" > -->
				
				<div class="col-md-12">
	          		<div class="cart-detail bg-light p-3 p-md-4">
						<div class="form-group">
							<div class="col-md-12"><p align="center"><strong>�ı���� ����ϸ� 15�ϰ��� �����Ͻ� �� �����ϴ�.${user.nickname}</strong></p></div>
						</div>
					</div>
				</div>
				
	          	
	          	<div class="col-md-12"><br/><hr/><br/></div>
	          	
	          		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postTitle"><strong>������</strong>&nbsp;&nbsp;<span name="postTitle"></span></label>
		                	<input type="text" class="form-control" name="postTitle" placeholder="������ �Է��ϼ���.">
		                </div>
	                </div>

	                <div class="col-md-12"></div>
	                
	                
	                <div class="col-md-12"><br/>
	                <div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="body">
							<!-- ÷�� ��ư -->
							<div id="attach">
								<label class="waves-effect waves-teal btn-flat"
									for="uploadInputBox"><strong>����÷��</strong></label> <input id="uploadInputBox"
									style="display: none" type="file" name="filedata" multiple />
							</div>

							<!-- �̸����� ���� -->
							<div id="preview" class="content"></div>

							<!-- multipart ���ε�� ���� -->
 							<div id="uploadForm" style="display: none;"></div>
						</div>
					</div>
				</div>
</div>
			
		            
		            <div class="col-md-12"><br/></div>
	
               		<div class="col-md-12">
		                <div class="form-group">
		                	<label for="postContent"><strong>�۳���</strong></label>&nbsp;&nbsp;<span name="postContent"></span>
<!-- 		                	<input type="text" class="form-control" name="postContent" value="dd" placeholder="������ �Է��ϼ���."> -->
<!-- 		                	<textarea  class="form-control"  name="postContent"  rows="10"  placeholder="������ �Է��ϼ���."></textarea> -->
		               
		                 <div class="postForm" align="center">
						<div id="toolbar-container" class="col-xs-12 col-md-12"></div>
						<textarea id="editor" name="postContent" style="text-align: left;"></textarea>
					</div>
		               
		                </div>
	                </div>
	                
	                
               		
               		<div class="w-100"></div>
		            <div class="w-100"></div>
               		<div class="w-100"></div>
                
	            </div>
	          </form>
	          
	          <!-- END -->


	          <div class="row mt-5 pt-3 d-flex">
	          	<div class="col-md-12">
					<p><button class="btn btn-primary py-3 px-4 col-md-12">���</button></p>
					
					<div class="form-group">
						<div class="col-md-12">
							<div class="radio" align="right">
								<p><a href="#" ><font color="gray">���</font></a></p>
							</div>
						</div>
					</div>
	          	</div>
	          </div>
	          
	          
 <!-- 	����������������������������������������������       dialog       ������������������������������������������������������� -->
  
			<div id="dialog-postTitle" title="">
			  <p align="center"><br/>������ �Է����ּ���.</p>
			</div>       
<!-- 			<div id="dialog-postTitleLength" title=""> -->
<!-- 			  <p align="center"><br/>������ 10�ڱ��� �Է��� �� �ֽ��ϴ�.</p> -->
<!-- 			</div>        -->
			<div id="dialog-img" title="">
			  <p align="center"><br/>�̹����� ������ּ���.</p>
			</div>   
			<div id="dialog-postContent" title="">
			  <p align="center"><br/>������ �Է����ּ���.</p>
			</div>      
<!-- 			<div id="dialog-postContentLength" title=""> -->
<!-- 			  <p align="center"><br/>����� 100�ڱ��� �Է��� �� �ֽ��ϴ�.</p> -->
<!-- 			</div>       -->
       
<!-- 	��������������������������������������������������������   dialog  �������������������������������������������������������������������� -->      
	          
	          
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
	<jsp:include page="/layout/footer.jsp"></jsp:include>
    
    
  


  <!-- dialog -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  
  <!-- ���ø� -->
  <script src="/resources/prodmenu/js/jquery.min.js"></script>
  <script src="/resources/prodmenu/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/prodmenu/js/popper.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.easing.1.3.js"></script>
  <script src="/resources/prodmenu/js/jquery.waypoints.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.stellar.min.js"></script>
  <script src="/resources/prodmenu/js/owl.carousel.min.js"></script>
  <script src="/resources/prodmenu/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/prodmenu/js/aos.js"></script>
  <script src="/resources/prodmenu/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/prodmenu/js/bootstrap-datepicker.js"></script>
  <script src="/resources/prodmenu/js/scrollax.min.js"></script>
  <script src="/resources/prodmenu/js/main.js"></script>
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="/resources/events.js"></script>
  
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>
  <script>
  
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
    	        
					var imgSelectName = "img";

					if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
						imgSelectName = "iframe";
					}	                        
                

                var reader = new FileReader();
                reader.onload = function(img) {
                    //div id="preview" ���� �����ڵ��߰�.
                    //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
                    var imgNum = previewIndex++;
                    
                    var previewId = "";
                   
                    if(imgNum==0){
                    	previewId = "start";
                    }else{
                    	previewId = "startNo";	
                    }
                	
                	document.querySelector( '#editor' ).addEventListener( 'click', () => {
                	    const editorData = editor.getData();     	           
                	} );
                	
                	alert(img.target.result);
                    editor.setData(editor.getData()+"<p><"+imgSelectName+" src='" + img.target.result + "' style='min-width:100%'/></p><p/>");		
                
                    
                    $("#preview").append(
                                    "<div class=\"preview-box\" id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:208px' >"
                                            + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"200px;\" height=\"200px;\"/>"
                                            + "<a href=\"#\" value=\""
                                            + imgNum
                                            + "\" onclick=\"deletePreview(this)\">"
                                            + "����" + "</a>" + "</div>");
                    files[imgNum] = file;
                    
                    fileNameArray[imgNum]=file.name;
                    fnAddFile(fileNameArray);
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
	});
	
	// �������������������������������������   �� ���Ͼ��ε�      �������������������������������������������������������


	var boardCode = $( 'input[name=boardCode]' ).val().trim();
	
	$( function() {
	    $( "#dialog-postTitle" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  $("input[name=postTitle]").focus();
// 		    		  jQuery($("input[name=postTitle]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	
	
	$( function() {
	    $( "#dialog-postContent, #dialog-postContentLength" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("textarea[name=postContent]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	
	
	$( function() {
	    $( "#dialog-img" ).dialog({
	    	autoOpen: false,
		      width: 350,
		      height: 180,
		      modal: true,
		      buttons: {
		    	  �ݱ�: function(){
		    		  $( this ).dialog( "close" );
		    		  jQuery($("input[name=postTitle]"))[0].scrollIntoView(true);
		    	  }
		      }
	    });
	});
	
	
	//����������������������������������������     ��  dialog      ����������������������������������������������	

	$( "input[name=postTitle]" ).keyup(function( ) {
		if($("input[name=postTitle]").val().length > 10 ){
			$("span[name=postTitle]").text('10�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=postTitle]").text('');
		}
	});
	
	
	$( "textarea[name=postContent]" ).keyup(function( ) {
		if($("textarea[name=postContent]").text().length > 100 ){
			$("span[name=postContent]").text('100�ڱ��� �Է��� �� �ֽ��ϴ�.');
		}else{
			$("span[name=postContent]").text('');
		}
	});

	//������������������������������������      ��  ���ڼ�üũ           �����������������������������������������
	
	
	// ��Ϲ�ư ������
	function fncAddAdoptReview(){

		  if( $("input[name=postTitle]").val().trim() == '' ||  $("input[name=postTitle]").val().length >10 ){
			  $("input[name=postTitle]").focus();
			  $('#dialog-postTitle').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			  $('#dialog-postTitle').dialog( "open" );
			  return;
		  }
// 		  if( $(".preview-box").length == 0 ){
// 			  $('#dialog-img').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
// 			  $('#dialog-img').dialog( "open" );
// 			  return;
// 	  	  }
		  if( $("textarea[name=postContent]").val().trim() == '' || $("textarea[name=postContent]").val().length > 100 ){
			  $('#dialog-postContent').dialog().parents(".ui-dialog").find(".ui-dialog-titlebar").remove();
			  $('#dialog-postContent').dialog( "open" );
			  return;
		  }
		  

		var postContent = $("#editor").text();
		$("form[name=detailForm]").attr("method" , "POST").attr("action" , "/adoptReview/addAdoptReview").attr("enctype","multipart/form-data").submit();
		
	}
	

    $(function() {
			$( "button:contains('���')" ).on("click" , function() {
				$('textarea').val(editor.getData());
				console.log($('textarea').val());
				
				fncAddAdoptReview();
			});
			
			$( "a:contains('���')" ).on("click" , function() {
				self.location = "/adoptReview/listAdoptReview"
			});
	 });	
      
      
    </script>

  
  
  
  
  </body>
</html>