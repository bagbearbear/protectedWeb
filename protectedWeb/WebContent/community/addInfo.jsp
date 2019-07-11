<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

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
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/12.2.0/decoupled-document/ckeditor.js"></script>

<!--  CSS -->
<style>
@font-face {
	font-family: ng;
	src: url(NanumGothic.eot);
	src: local(��), url(NanumGothic.woff) format(��woff��);
}

body {
	font-family: '�������', 'NanumGothic', ng
}


#editor {
	min-height: 600px;
	max-height: 960px;
	max-width : 1130px;
	
	margin-left: 15px;
	text-align: left;
}

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
    border: 1px solid;
    padding: 5px;
    border-radius: 2px;
    margin-bottom: 10px;
}
</style>

<!--  JavaScript  -->
<script type="text/javascript" src="../javascript/calendar.js"></script>
<script type="text/javascript">
function fncAddProduct(){
	
	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name='price']").val();
	var amount = $("input[name='amount']").val();
	
	if(name == null || name.length<1){
		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(price == null || price.length<1){
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(amount == null || amount.length<1){
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
	} else if ( amount > 999 ) {
		alert("������ �ִ� 999�������� ��ϰ����մϴ�.");
	} 
		
	
	$("form").attr("method","POST").attr("action","/product/addProduct").submit();
	
}

$(function () {
	
	$("#reset").on("click", function(){
		$("form")[0].reset();
	});
	
	$("button.btn.btn-primary").on("click", function(){
		fncAddProduct();
	});
	
});

	</script>

</head>

<body>

	<div class="container">
			<h3 class=" text-info">�� �� ����</h3>
		
		<hr>
		
		<div style="border: 1px solid black; padding: 5px;">
		
		<form class="form-horizontal" name="detailForm"
			enctype="multipart/form-data">

			<div class="row">
				<div class="col-xs-12 col-md-12">
					<input type="text" class="form-control" name="postTitle"
						id="postTitle" placeholder="������ �Է��� �ּ���." />
				</div>
			</div>

<!-- 			<div class="row"> -->
<!-- 				<div class="col-xs-4 col-md-2"> -->
<!-- 					<strong>�̹���</strong> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
			<br/>
			
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<div class="body">
            <!-- ÷�� ��ư -->
            <div id="attach">
                <label class="waves-effect waves-teal btn-flat" for="uploadInputBox">����÷��</label>
                <input id="uploadInputBox" style="display: none" type="file" name="filedata" multiple />
            </div>
            
            <!-- �̸����� ���� -->
            <div id="preview" class="content"></div>
            
            <!-- multipart ���ε�� ���� -->
            		<form id="uploadForm" style="display: none;">
            		</form>
        			</div>
				</div>
			</div>
		
			<hr />
			
			<div class="postForm row" align="center">

<div id="toolbar-container" class="col-xs-12 col-md-12"></div>
	
<div id="editor" class="col-xs-12 col-md-12">
	<p>This is the initial editor content.</p>
</div>

</div>

		</div>

<hr />
			<div class="row">
				<div class="col-md-12 text-center ">
					<button type="button" class="btn btn-primary">���</button>
					<a id="reset" class="btn btn-primary btn" role="button">���</a>
				</div>
			</div>

		</form>
		
	</div>
	
<script>
    DecoupledEditor
        .create( document.querySelector( '#editor' ) )
        .then( editor => {
            const toolbarContainer = document.querySelector( '#toolbar-container' );
            toolbarContainer.appendChild( editor.ui.view.toolbar.element );
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

    //preview �������� ���� ��ư Ŭ���� �ش� �̸������̹��� ���� ����
    function deletePreview(obj) {
        var imgNum = obj.attributes['value'].value;
        delete files[imgNum];
        $("#preview .preview-box[value=" + imgNum + "]").remove();
        resizeHeight();
    }

    //client-side validation
    //always server-side validation required
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
        //submit ���. ������ submit type�� �ƴϴ�.
	 /*
        $('.submit a').on('click',function() {                        
            var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < Object.keys(files).length; index++) {
                //formData ������ files��� �̸����� ������ �߰��Ѵ�.
                //���ϸ����� ��� �߰��� �� �ִ�.
                formData.append('files',files[index]);
            }

            //ajax ������� multipart form�� �����Ѵ�.
            $.ajax({
                type : 'POST',
                enctype : 'multipart/form-data',
                processData : false,
                contentType : false,
                cache : false,
                timeout : 600000,
                url : '/imageupload',
                dataType : 'JSON',
                data : formData,
                success : function(result) {
                    //�� �κ��� �����ؼ� �پ��� �ൿ�� �� �� ������,
                    //���⼭�� �����͸� ���۹޾Ҵٸ� �����ϰ� OK ���� ������� �Ͽ���.
                    //-1 = �߸��� Ȯ���� ���ε�, -2 = �뷮�ʰ�, �׿� = ����(1)
                    if (result === -1) {
                        alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
                        // ���� ���� ...
                    } else if (result === -2) {
                        alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
                        // ���� ���� ...
                    } else {
                        alert('�̹��� ���ε� ����');
                        // ���� ���� ...
                    }
                }
                //���۽��п����� �ڵ鸵�� ������� ����
            });
        });
        */
        // <input type=file> �±� ��� ����
        $('#attach input[type=file]').change(function() {
            addPreview($(this)); //preview form �߰��ϱ�
        });
    }); 

</script>
	

</body>
</html>