<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>

<title>�о� | ���� �� �ø���</title>


<style>
#preview img {
    width: 100px;
    height: 100px;
}
#preview p {
    text-overflow: ellipsis;
    overflow: hidden;
}
/* .preview-box { */
/*     border: 1px solid; */
/*     padding: 5px; */
/*     border-radius: 2px; */
/*     margin-bottom: 10px; */
/* } */

</style>

	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	 


</head>

<body>
	<!-- ToolBar Start /////////////////////////////////////-->
<%-- 	<jsp:include page="/layout/toolbar.jsp" /> --%>
   	<!-- ToolBar End /////////////////////////////////////-->


	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 >���� ���</h1>
		<br/>
		<!-- ÷�� ��ư -->
            <div id="attach">
                <label class="waves-effect waves-teal btn-flat" for="uploadInputBox">����÷��</label>
                <input id="uploadInputBox" style="display: none" type="file" name="filedata"/>
<!--                 <input id="uploadInputBox" style="display: none" type="file" name="filedata" multiple /> -->
            </div>
            
            <!-- �̸����� ���� -->
            <div id="preview" class="content" style='display:inline;min-width:1200px;'></div>
            
            
            <!-- multipart ���ε�� ���� -->
<!--             <form id="uploadForm" style="display: none;" ></form> -->
		
		<!-- form Start /////////////////////////////////////-->

<form class="form-horizontal">




      
            

<br/>
<br/>
<br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    
<input type="hidden" name="id" value="user03">
<input type="hidden" name="boardCode" value="${ param.boardCode }">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" placeholder="������"  >
		       <span id="idTest" > </span>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">�۳���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="postContent" name="postContent" placeholder="�۳���">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">����ó</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="phone" name="phone" value="01121234567" placeholder="����ó" >
		     <span id="pwdTest" > </span>
		    </div>
		  </div>
		  
		  <c:if test=" ${param.boardCode eq 'AD'} ">
			<div class="form-group">
			    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">�о簡������${param.boardCode.trim()}</label>
			    <div class="col-sm-4">
		    	 	<input type="text" class="form-control" id="adoptArea" name="adoptArea" placeholder="�о簡������">
		   	 	</div>
		 	</div>
		 </c:if>
		  
		  
		  <div class="form-group">
		    <label for="prodQuantity" class="col-sm-offset-1 col-sm-3 control-label">
		     <c:if test=" ${param.boardCode.trim() eq 'AD'} ">�߰���ġ</c:if>
		     <c:if test=" ${param.boardCode.trim() eq 'MS'} ">������ġ</c:if>
		    </label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="location" name="location" placeholder="��ġ">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogBreed" name="dogBreed" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogWeight" name="dogWeight" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">ũ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogSize" name="dogSize" placeholder="ũ��">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogGender" name="dogGender" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">
		     <c:if test=" ${param.boardCode eq 'AD'} ">å�Ӻ�</c:if>
		     <c:if test=" ${param.boardCode eq 'MS'} ">��ʺ�</c:if>
		    </label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogPay" name="dogPay" placeholder="���">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogStatus" name="dogStatus" placeholder="������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">�ܸ�Ư¡</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogChar" name="dogChar" placeholder="�ܸ�Ư¡">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogPersonality" name="dogPersonality" placeholder="������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">
		     <c:if test=" ${param.boardCode eq 'AD'} ">�߰�����</c:if>
		     <c:if test=" ${param.boardCode eq 'MS'} ">��������</c:if>
		    </label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="dogDate" name="dogDate" placeholder="����">
		    </div>
		  </div>


		  <input type="hidden" value="dd">

		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >���</button>
<!-- 		      <button type="button" class="btn btn-default"  >���</button> -->
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->




<!-- 	<script type="text/javascript" src="/resources/events.js"></script> -->
<!-- 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script> -->
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 	<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script> -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" type="text/css">
	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <script>
    
    
//     $(function() {
// 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
// 		$( "button:contain('���')" ).on("click" , function() {
// 			fncAddAdopt();
// 		});
// 	});

// function fncAddAdopt(){
	//Form ��ȿ�� ����
 	//var name = document.detailForm.prodName.value;
	//var detail = document.detailForm.prodDetail.value;
	//var manuDate = document.detailForm.manuDate.value;
	//var price = document.detailForm.price.value;
	
// 	var name=$("input[name='prodName']").val();
// 	var detail=$("input[name='prodDetail']").val();
// 	var manuDate=$("input[name='manuDate']").val();
// 	var price=$("input[name='price']").val();
// 	var prodQuantity=$("input[name='prodQuantity']").val();

// 	if(name == null || name.length<1){
// 		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
// 		return;
// 	}
// 	if(detail == null || detail.length<1){
// 		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
// 		return;
// 	}
// 	if(manuDate == null || manuDate.length<1){
// 		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
// 		return;
// 	}
// 	if(price == null || price.length<1){
// 		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
// 		return;
// 	}
// 	if(prodQuantity == null || prodQuantity.length<1){
// 		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
// 		return;
// 	}
// 	if(prodQuantity <= 0){
// 		alert("������ 1�� �̻� �Է����ּ���.");
// 		return;
// 	}

// 	$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").attr("enctype","multipart/form-data").submit();
// }





	
	$( "button:contains('���')" ).on("click" , function() {
// 		$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").attr("enctype","multipart/form-data").submit();
		$("form").attr("method" , "POST").attr("action" , "/adopt/addAdopt").submit();

// 		$(self.location).attr("method" , "POST").attr("action","/adopt/addAdopt").submit();
// 		 fncAddProduct();
	});

	

	

// $(function() {		
// 	$( "#dogDate" ).datepicker({
// 		dateFormat: 'yy-mm-dd',
//         prevText: '���� ��',
//         nextText: '���� ��',
//         monthNames: ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
//         monthNamesShort: ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
//         dayNames: ['��', '��', 'ȭ', '��', '��', '��', '��'],
//         dayNamesShort: ['��', '��', 'ȭ', '��', '��', '��', '��'],
//         dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'],
//         showMonthAfterYear: true,
//         yearSuffix: '��'

// 	});
// }); 

        //������ file object����
        var files = {};
        var previewIndex = 0;
 
        // image preview ��� ����
        // input = file object[]
        function addPreview(input) {
            if (input[0].files) {
                //���� ������ ���������� ���� ����
                for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
                    var file = input[0].files[fileIndex];
 
                    if (validation(file.name))
                        continue;
 
                    var reader = new FileReader();
                    reader.onload = function(img) {
                        //div id="preview" ���� �����ڵ��߰�.
                        //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
                        var imgNum = previewIndex++;
//                         alert(img.target.result);
                       
                        var b64 = img.target.result;
                        
                            

                           
                        
                        
                        
                        
                        $("#preview")
                                .append(
                                        "<div class=\"preview-box\" value=\"" + imgNum +"\"  style='display:inline;float:left;width:200px' >"
                                                + "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>"
                                                + "<p>"
                                                + file.name
                                                + "</p><span id=\"test\"></span>"
                                                + "<a href=\"#\" value=\""
                                                + imgNum
                                                + "\" onclick=\"deletePreview(this)\">"
                                                + "����" + "</a>" + "</div> ");
                        
                        
                        b64 = b64.replace('data:image/jpeg;base64,', ''); // remove content type
                        request = {
                          "requests":[
                            {
                              "image":{ "content": b64 },
                              "features":[
                                {
                                  // if you want to detect more faces, or detect something else, change this
                                  "type":"WEB_DETECTION",
                                  "maxResults":1
                                }
                              ]
                            }
                          ]
                        };
                        
                        $.ajax({
                          method: 'POST',
                          url: 'https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDaDu7bjQpGLN3nKnUfulB3khHE-iGQap0',
                          contentType: 'application/json',
                          data: JSON.stringify(request),
                          processData: false,
                          success: function(data){
//                           	console.log("Ȯ�� : "+data);
//                           	console.log("Ȯ��111 : "+JSON.stringify(data));
                          	
                          	var test = data.responses[0].webDetection.bestGuessLabels[0];
                          	console.log("Ȯ��1111111 : "+test.label);
//                             output = data;
//                             var faceData = data.responses[0].faceAnnotations[0];
//                             console.log('joy: ' + faceData.joyLikelihood);
//                             console.log('sorrow: ' + faceData.sorrowLikelihood);
//                             console.log('anger: ' + faceData.angerLikelihood);
//                             console.log('surprise: ' + faceData.surpriseLikelihood);
                       		$( "#dogBreed" ).val(test.label);
//                        		$( "#test" ).html(test.label.replace(/ /gi, "") );
                          },
                          error: function (data, textStatus, errorThrown) {
                            console.log('error: ' + data);
                          }
                        })

                        files[imgNum] = file;
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
            if (!((fileNameExtension === 'jpg')
                    || (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
                alert('jpg, gif, png Ȯ���ڸ� ���ε� �����մϴ�.');
                return true;
            } else {
                return false;
            }
        }
 
        $(document).ready(function() {
            //submit ���. ������ submit type�� �ƴϴ�.
//             $('.submit a').on('click',function() {                        
//                 var form = $('#uploadForm')[0];
//                 var formData = new FormData(form);
    
//                 for (var index = 0; index < Object.keys(files).length; index++) {
//                     //formData ������ files��� �̸����� ������ �߰��Ѵ�.
//                     //���ϸ����� ��� �߰��� �� �ִ�.
//                     formData.append('files',files[index]);
//                 }
 
                //ajax ������� multipart form�� �����Ѵ�.
//                 $.ajax({
//                     type : 'POST',
//                     enctype : 'multipart/form-data',
//                     processData : false,
//                     contentType : false,
//                     cache : false,
//                     timeout : 600000,
//                     url : '/imageupload',
//                     dataType : 'JSON',
//                     data : formData,
//                     success : function(result) {
//                         //�� �κ��� �����ؼ� �پ��� �ൿ�� �� �� ������,
//                         //���⼭�� �����͸� ���۹޾Ҵٸ� �����ϰ� OK ���� ������� �Ͽ���.
//                         //-1 = �߸��� Ȯ���� ���ε�, -2 = �뷮�ʰ�, �׿� = ����(1)
//                         if (result === -1) {
//                             alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
//                             // ���� ���� ...
//                         } else if (result === -2) {
//                             alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
//                             // ���� ���� ...
//                         } else {
//                             alert('�̹��� ���ε� ����');
//                             // ���� ���� ...
//                         }
//                     }
//                     //���۽��п����� �ڵ鸵�� ������� ����
//                 });
//             });
            // <input type=file> �±� ��� ����
            $('#attach input[type=file]').change(function() {
                addPreview($(this)); //preview form �߰��ϱ�
            });
        });
    </script>


</body>
</html>