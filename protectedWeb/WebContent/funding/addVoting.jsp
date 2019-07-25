<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<!-- ���� : http://getbootstrap.com/css/   ���� -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>


<!-- jQuery UI toolTip ��� CSS-->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery UI toolTip ��� JS-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- ckeditor ��� CSS-->
<script
	src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
/* 	   #btn-add{
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
		} */
.container {
	width: 1000px;
	font-size: 15px;
}

.form-group {
	padding-left: 170px;
	padding-right: 100px;
}

.form-group2 {
	padding-left: 450px;
	padding-right: 100px;
}

.form-form {
	padding-left: 15px;
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
				<font size=6>�Ŀ� ��û ���</font> �Ŀ���û�� ��ǥ <strong style="color: #225cba">1��</strong>�̻�
				���� �� <strong style="color: #225cba">������ �Ұ�</strong>�մϴ�.
			</div>
		</div>

		<!-- form Start /////////////////////////////////////-->
		<form id="uploadForm" class="form-horizontal">
			<div class="form-group">
				<h3>
					<b>�Ŀ���ǥ�ݾ�</b>
				</h3>
				��ǥ������ ( <strong style="color: #225cba">��ǥ�ݾ� 0.01%</strong> )ǥ��
				����˴ϴ�. ( 10���� ~ 300�������� �Է°����մϴ�. )
				<p />
				<div class="row form-form">
					<input type="text" class="form-control" id="fundTargetPay"
						name="fundTargetPay" placeholder="0"
						style="width: 600px; height: 35px;">&ensp; ��
				</div>
			</div>
			<br />

			<div class="form-group" id="voteNum">
				<h3>
					<b>��ǥ�� <strong style="color: #225cba">0</strong>ǥ
					</b>
				</h3>
			</div>
			<div class="form-group">�Ŀ��Խñ۷� �̵��Ϸ��� �޾ƾ� �� ��ǥ ���Դϴ�.</div>
			<br />

			<div class="form-group">
				<h3>
					<b>�Ŀ���ǥ�Ⱓ</b>
				</h3>
				�Ŀ� �����Ⱓ�� �Է��ϼ���. ( 7�� ~ 30�ϱ��� ���ð����մϴ�. )<br /> ��ǥ�� �����Ǿ��� �� ���� ��������
				�Ⱓ�Դϴ�. ��ǥ �Ⱓ�� <strong style="color: #225cba">30</strong>�Ϸ� �����˴ϴ�.
				<p />
				<div>
					<select class="form-control" name="fundTargetDay"
						id="fundTargetDay" style="width: 700px; height: 35px;">
						<c:forEach var="i" begin="7" end="30" step="1">
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<br />
			<div class="form-group">
				<h3>
					<b>������</b>
				</h3>
				<p />
				<div class=>
					<input type="text" class="form-control" id="postTitle"
						name="postTitle" placeholder="������ �Է����ּ���."
						style="width: 700px; height: 35px;">
				</div>
			</div>
			<br />

			<div class="form-group">
				<h3>
					<b>�۳���</b>
				</h3>
				<p />
				<div>
					<textarea id="postContent" name="postContent"
						style="text-align: left;" placeholder="������ �Է����ּ���.">
					</textarea>
				</div>
			</div>
			<br />
			<!-- ÷�� ��ư -->
			<div id="attach" class="form-group">
				<span class="label label-primary "><label
					class="waves-effect waves-teal btn-flat" for="uploadInputBox">�������</label></span>&nbsp;&nbsp;�Ǿ�
				�̹����� ��ǥ�̹����Դϴ�. (�ִ� 8����� ���ε� �����մϴ�.) <input id="uploadInputBox"
					style="display: none" type="file" value="���" name="filedata" />
			</div>
			<br />

			<!-- �̸����� ���� -->
			<div class="form-group">
				<div id="preview" class="col-md-3" align="center"
					style='display: inline; min-width: 600px;'></div>
			</div>


			<div class="form-group">
				<br />
				<h3>
					<b>����ó</b>
				</h3>
				���ǹ��� ����ó�� �Է����ּ���.
				<p />
				<div class="col-sm-3" style="padding: 0; margin: 0;">
					<select class="form-control" name="phone1" id="phone1">
						<option value="010"
							${ ! empty user.phone1 && user.phone1 == "010" ? "selected" : ""  }>010</option>
						<option value="011"
							${ ! empty user.phone1 && user.phone1 == "011" ? "selected" : ""  }>011</option>
						<option value="016"
							${ ! empty user.phone1 && user.phone1 == "016" ? "selected" : ""  }>016</option>
						<option value="018"
							${ ! empty user.phone1 && user.phone1 == "018" ? "selected" : ""  }>018</option>
						<option value="019"
							${ ! empty user.phone1 && user.phone1 == "019" ? "selected" : ""  }>019</option>
					</select>
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="phone2" name="phone2"
						value="${ ! empty user.phone2 ? user.phone2 : ''}"
						placeholder="��ȣ" maxlength="4" style="height: 35px;">
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="phone3" name="phone3"
						value="${ ! empty user.phone3 ? user.phone3 : ''}"
						placeholder="��ȣ" maxlength="4" style="height: 35px;">
				</div>
				<input type="hidden" name="phone" /> <input type="hidden"
					class="form-control" id="multiFile" name="multiFile">
			</div>

			<br />
			<br />
			<div class="form-group2">
				<button class="btn btn-primary py-3 px-4 col-md-3" type="button"
					id="btn-add">���</button>
				<button class="btn btn-primary py-3 px-4 col-md-3 " type="button"
					id="btn-cancel">���</button>
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
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
	<script type="text/javascript">

   //============= ��Ϲ�ư �������� �Լ� =============      
   function fncAddVoting(){
      
      //Form ��ȿ�� ����
	  $('textarea').val(editor.getData());
      var fundTargetPay = $('input[name="fundTargetPay"]').val();
      var postTitle = $('input[name="postTitle"]').val();
      var postContent = $('textarea').val()
      var phone2 = $('input[name="phone2"]').val();
      var phone3 = $('input[name="phone3"]').val();   
      var file = $("#multiFile").val();    
      
      if(fundTargetPay == null || fundTargetPay.length<1){
         alert("�Ŀ���ǥ�ݾ��� �ݵ�� �Է��Ͽ��� �մϴ�.");
         $('input[name="fundTargetPay"]').focus();
         return;
      }
      if(fundTargetPay < 100000 || fundTargetPay > 3000000){
         alert("�Ŀ���ǥ�ݾ��� 10�����̻� 300�������Ϸ� �Է��Ͽ��� �մϴ�.")
         $('input[name="fundTargetPay"]').focus();
         return;
      }
      if(postTitle == null || postTitle.length<1){
         alert("�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
         $('input[name="postTitle"]').focus();
         return;
      }
      
      if(postContent == ''){
	         alert("�۳����� �ݵ�� �Է��Ͽ��� �մϴ�.");
	         $("textarea[name=postContent]").focus();
	         return;
	      }
      
      if(file == null || file.length<1){
         alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
         return;
      }
      if(phone2 == null || phone2.length<1){
         alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="phone2"]').focus();
         return;
      }
      if(phone3 == null || phone3.length<1){
         alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
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
      
      $('input[name="fundTargetPay"]').val(removeCommas($('input[name="fundTargetPay"]').val()));
      
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


      $('form').attr("method","POST").attr("action","/funding/addVoting").attr("enctype","multipart/form-data").submit();
   }
   
   //============= "Editor" =============   
	let editor;

	ClassicEditor
	    .create( document.querySelector( '#postContent' ),{
	    
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
         //resizeHeight();
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
     
   //3�ڸ� �������� �޸� ����
     function addCommas(x) {
         return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }
      
     //��� �޸� ����
     function removeCommas(x) {
         if(!x || x.length == 0) return "";
         else return x.split(",").join("");
     }
      

       $(document).ready(function() {

          //============= �����̸����� =============
          $('#attach input[type=file]').change(function() {
             addPreview($(this)); //preview form �߰��ϱ�
         });

          //============= �Ŀ���ǥ�ݾ� =============
             $('#fundTargetPay').keyup(function(){
            	 
            	 //�Է½� �޸� ����
            	 $(this).val(addCommas($(this).val().replace(/[^0-9]/g,"")));        	 
            	 //��ǥ�� ���
                 var inputed = Math.round(removeCommas($(this).val())*0.0001);         
                 $("#voteNum").children().remove();
                 $("#voteNum").append("<h3><b>��ǥ�� <strong  style=\"color:#225cba\">"+inputed+"</strong>ǥ</b></h3>");
                
                 //�Ŀ���ǥ�ݾ� �����ʰ�
                 if (removeCommas($(this).val()).length > 7 ) {
                     alert('30�������Ϸ� �Է����ּ���');
                     $(this).val(removeCommas($(this).val()).substr(0, 7));
                     
                     $(this).val(addCommas($(this).val().replace(/[^0-9]/g,"")));  
                     var inputed = Math.round(removeCommas($(this).val())*0.0001);         
                     $("#voteNum").children().remove();
                     $("#voteNum").append("<h3><b>��ǥ�� <strong  style=\"color:#225cba\">"+inputed+"</strong>ǥ</b></h3>");                    
                     
                 }
             });
          
           //============= ������ ���� �Է� ���� =============
             $('#postTitle').keyup(function(){
            	 var byteText = $(this).val();
              	 var byteNum = 0;
              	 
                  for(var i = 0; i < byteText.length ; i++) {
                     byteNum += ( byteText.charCodeAt(i) > 127 ) ? 3 : 1;
	                  if(byteNum > 50) {              	 
	                      alert('���ѱ��� �ʰ�');
	                      $(this).val($(this).val().substr(0,i));
	                  }
                  }

             });
           //============= ����ó ���� �Է� ���� (JavaScript �Լ����)=============
             $('#phone2').keyup(function(){
                var val = $(this).val(); 
            if(isNaN(val)){
                  var len = val.length; 
                  $(this).val(val.substring(0,len-1));        
                }            
             });
           
             $('#phone3').keyup(function(){
                var val = $(this).val(); 
            if(isNaN(val)){
                  var len = val.length; 
                  $(this).val(val.substring(0,len-1));        
                }            
             });
             
     }); 
   
   $(function() {
      
         //============= ��� Event  ó�� =============   
         $( "#btn-add" ).on("click" , function() {
            fncAddVoting();
            });
         
         //============= ��� Event  ó�� =============
          $( "#btn-cancel" ).on("click" , function() {
               history.go(-1);
            });
            
   });   
               
   
   </script>


</body>

</html>