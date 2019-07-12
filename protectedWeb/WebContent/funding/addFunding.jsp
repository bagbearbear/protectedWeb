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
	<!-- ////////////////////�޷� /////////////////////////////-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- Bootstrap Dropdown Hover CSS -->
    <link href="/css/animate.min.css" rel="stylesheet">
    <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
    <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
    <!-- jQuery UI toolTip ��� CSS-->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- jQuery UI toolTip ��� JS-->
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
		.container{
		width: 1000px;
		}		

		@font-face { font-family: 'NanumGothic';
		src: url('/fonts/NanumGothic.eot');
		src: url('/fonts/NanumGothic.eot') format('embedded-opentype'),
		url('/fonts/NanumGothic.woff') format('woff');}
		
		
		body {font-family: 'NanumGothic', 'serif';}

    </style>

	</head>
	<body>
	<!-- ToolBar Start /////////////////////////////////////-->
	 <jsp:include page="/layout/toolbar.jsp"></jsp:include>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container ">
		<div class="page-header col-sm-offset-3">	
		<h3>�Ŀ� ��û �� ��</h3> �Ŀ���û�� ��ǥ <strong class="text-danger">1��</strong>�̻� ���� �� <strong class="text-danger">������ �Ұ�</strong>�մϴ�.
	    </div>		
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">
	
		<div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�Ŀ���ǥ�ݾ�</h4>
			<label class="col-sm-offset-3 col-sm-12">
			��ǥ������ ( <strong class="text-danger">��ǥ�ݾ� X 0.001</strong> )ǥ�� ����˴ϴ�. ( 10���� ~ 300�������� �Է°����մϴ�. )</label>
		    <div class="col-sm-offset-3 col-sm-7">
		      <input type="text" class="form-control" id="fundTargetPay" name="fundTargetPay" placeholder="0" maxlength="7" >
		    </div>
		    <strong>��</strong>
		  </div>
		  
		  <div class="form-group" id="voteNum">
		    <h4 class="col-sm-offset-3 col-sm-12">��ǥ�� <strong class="text-danger">0</strong>ǥ</h4>
		  </div>

		  <div class="form-group" >
		    <label class="col-sm-offset-3 col-sm-12" >
			�Ŀ��Խñ۷� �̵��Ϸ��� �޾ƾ� �� ��ǥ ���Դϴ�.
			</label>
		  </div>
		  		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�Ŀ���ǥ�Ⱓ</h4>
			<label class="col-sm-offset-3 col-sm-12">
			�Ŀ� �����Ⱓ�� �Է��ϼ���. ( 7�� ~ 30�ϱ��� ���ð����մϴ�. )<br/>
			��ǥ�� �����Ǿ��� �� ���� �������� �Ⱓ�Դϴ�. ��ǥ �Ⱓ�� <strong class="text-danger">30</strong>�Ϸ� �����˴ϴ�.</label>
		    <div class="col-sm-offset-3 col-sm-7">
		      <select class="form-control" name="fundTargetDay" id="fundTargetDay">
		      <c:forEach var ="i" begin="7" end ="30" step="1">
				  	<option value="${i}" >${i}</option>
				</c:forEach>	
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">������</h4>
		    <div class="col-sm-offset-3 col-sm-7">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" placeholder="������ �Է����ּ���." maxlength="10" >
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�۳���</h4>
			    <div class="col-sm-offset-3 col-sm-7">
			      <textarea name="postContent" class="form-control" rows="5"  placeholder="������ �Է����ּ���."></textarea>
			    </div>
			  </div>

            <!-- ÷�� ��ư -->
            <div id="attach">
                <span class="col-sm-offset-3 label label-primary" ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">�������</label></span>&nbsp;&nbsp;��ǥ�̹����� �Ķ��׵θ��Դϴ�. (�ִ� 8����� ���ε� �����մϴ�.)
                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
            </div>
            
            <br/><br/>
            
            <!-- �̸����� ���� -->
            <div class="form-group">
            <div id="preview" class="col-sm-offset-3 col-md-3" align="center" style='display:inline; min-width:600px;'></div> 
            </div>
		  <div class="form-group">
		   <h4 class="col-sm-offset-3 col-sm-12">����ó</h4>
		     <label class="col-sm-offset-3 col-sm-12">
			���ǹ��� ����ó�� �Է����ּ���.</label>			
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
		      <input type="text" class="form-control" id="phone2" name="phone2" placeholder="��ȣ" maxlength="4">
		    </div>
		    <div class="col-sm-2">
		      <input type="text" class="form-control" id="phone3" name="phone3" placeholder="��ȣ" maxlength="4">
		    </div>
		    <input type="hidden" name="phone"  />
		    <input type="hidden" class="form-control" id="multiFile" name="multiFile" >
		  </div>
		  
		  <br/><br/>
		  <div class="form-group text-center">
	  			<button type="button" id="btn-add">���</button>
	  			<button type="button" id="btn-cancel">���</button>
		  </div>
		  <br/><br/><br/><br/><br/><br/><br/><br/>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->


    <!--  ///////////////////////// JavaScript ////////////////////////// --> 	
	<script type="text/javascript" >

	//============= ��Ϲ�ư �������� �Լ� =============		
	function fncAddFunding(){
		
		//Form ��ȿ�� ����

		var fundTargetPay = $('input[name="fundTargetPay"]').val();
		var postTitle = $('input[name="postTitle"]').val();
		var postContent = $('input[name="postContent"]').val();
		var phone2 = $('input[name="phone2"]').val();
		var phone3 = $('input[name="phone3"]').val();	

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
/* 		if(postContent == null || postContent.length<1){
			alert("�۳����� �ݵ�� �Է��ϼž� �մϴ�.");
			$('input[name="postContent"]').focus();
			return;
		} */
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
                url : '/funding/json/imageupload/',
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


		$('form').attr("method","POST").attr("action","/funding/addFunding").attr("enctype","multipart/form-data").submit();
	}
	
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
                     
                     var previewId = "";             
                     if(imgNum==0){
                     	previewId = "start";
                     }else{
                     	previewId = "startNo";	
                     }
                 	//8�� �̻� ���ε��
                     if(Object.keys(files).length>=8){
                    	 alert("������ 8������� ���ε� �����մϴ�.");
                    	 delete files[imgNum];
                     }else{
					// 8�� ���� 
                     $("#preview").append(
                                     "<div class=\"preview-box\"  id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
                                             + "<a href=\"#\" value=\""
                                             + imgNum
                                             + "\" onclick=\"deletePreview(this)\">"
                                             + "   ����" + "</a>" + "</div>");

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

	 		//============= �Ŀ���ǥ�ݾ� =============
             $('#fundTargetPay').keyup(function(){
            	 
                 //�Ŀ���ǥ�ݾ� �����ʰ�
                 if ($(this).val().length > $(this).attr('maxlength')-1) {
                     alert('���ѱ��� �ʰ�');
                     $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                 }
                 //�Ŀ���ǥ�ݾ� ���� �Է� ���� (���ԽĻ��)    
            	 var exp = /^[0-9]+$/;
            	 if($(this).val().match(exp)){
            		//�ݾ׿� ���� ǥ����
      				if($(this).val().match(exp)){
    					 var inputed = Math.round($("input[name='fundTargetPay']").val()*0.001);			
    					 $("#voteNum").children("h4").remove();
    					 $("#voteNum").append("<h4 class=\"col-sm-offset-3 col-sm-12\">��ǥ�� <strong class=\"text-danger\">"+inputed+"</strong>ǥ</h4>");
    					}
            		 return true;
            	 }else{
            		alert("���ڸ� �Է��ϼ���.")
            		var val = $(this).val(); 
            		var len = val.length; 
            		$(this).val(val.substring(0,len-1));  		
            	 }
            	
             });
	 		
     		//============= ������ ���� �Է� ���� =============
             $('#postTitle').keyup(function(){
                 if ($(this).val().length > $(this).attr('maxlength')-1) {
                     alert('���ѱ��� �ʰ�');
                     $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
                 }
             });
           //============= ����ó ���� �Է� ���� (JavaScript �Լ����)=============
             $('#phone2').keyup(function(){
                var val = $(this).val(); 
				if(isNaN(val)){
            		alert("���ڸ� �Է��ϼ���.")
            		var len = val.length; 
            		$(this).val(val.substring(0,len-1));  		
            	 }         	
             });
           
             $('#phone3').keyup(function(){
                var val = $(this).val(); 
				if(isNaN(val)){
            		alert("���ڸ� �Է��ϼ���.")
            		var len = val.length; 
            		$(this).val(val.substring(0,len-1));  		
            	 }         	
             });
             
     }); 
	
	$(function() {
		
			//============= ��� Event  ó�� =============	
			$( "#btn-add" ).on("click" , function() {
				fncAddFunding();
				});
			
			//============= ��� Event  ó�� =============
			 $( "#btn-cancel" ).on("click" , function() {
					history.go(-1);
				});
				
	});	
	  	 		
	
	</script>
	
		
</body>

</html>