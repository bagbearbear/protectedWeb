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
		
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	
       #start { border:3px solid #0066cc; }
	   #startNo { border:3px solid #ffffff}

    </style>

	</head>
	<body>

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">	
		<h1 class="bg-primary text-center">�Ŀ� ��û �� ��</h1>
	    </div>		
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">
	
		<div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�Ŀ���ǥ�ݾ�</h4>
			<h5 class="col-sm-offset-3 col-sm-12">
			��ǥ������ (<strong class="text-danger">��ǥ�ݾ� X 0.001</strong>)ǥ�� ����˴ϴ�. (10���� ~ 300�������� �Է°����մϴ�.)</h5>
		    <div class="col-sm-offset-3 col-sm-5">
		      <input type="text" class="form-control" id="fundTargetPay" name="fundTargetPay" placeholder="0" maxlength="7" >
		    </div>
		    <strong>��</strong>
		  </div>
		  
		  <div class="form-group" id="voteNum">
		    <h4 class="col-sm-offset-3 col-sm-12">��ǥ�� <strong class="text-danger">0</strong>ǥ</h4>
		  </div>

		  <div class="form-group" >
		    <h5 class="col-sm-offset-3 col-sm-12" >
			�Ŀ��Խñ۷� �̵��Ϸ��� �޾ƾ� �� ��ǥ ���Դϴ�.
			</h5>
		  </div>
		  		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�Ŀ���ǥ�Ⱓ</h4>
			<h5 class="col-sm-offset-3 col-sm-12">
			�Ŀ� �����Ⱓ�� �Է��ϼ���. (7�� ~ 30�ϱ��� ���ð����մϴ�.)<br/>
			��ǥ�� �����Ǿ��� �� ���� �������� �Ⱓ�Դϴ�. ��ǥ �Ⱓ�� <strong class="text-danger">30</strong>�Ϸ� �����˴ϴ�.</h5>
		    <div class="col-sm-offset-3 col-sm-5"">
		      <select class="form-control" name="fundTargetDay" id="fundTargetDay">
		      <c:forEach var ="i" begin="7" end ="30" step="1">
				  	<option value="${i}" >${i}</option>
				</c:forEach>	
				</select>
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">������</h4>
		    <div class="col-sm-offset-3 col-sm-5"">
		      <input type="text" class="form-control" id="postTitle" name="postTitle" placeholder="������ �Է����ּ���.">
		    </div>
		  </div>
		  
		  <div class="form-group">
			<h4 class="col-sm-offset-3 col-sm-12">�۳���</h4>
			    <div class="col-sm-offset-3 col-sm-5"">
			      <textarea name="postContent" class="form-control" rows="5"  placeholder="������ �Է����ּ���."></textarea>
			    </div>
			  </div>

            <!-- ÷�� ��ư -->
            <div id="attach">
                <label class="col-sm-offset-3 waves-effect waves-teal btn-flat" for="uploadInputBox">����÷��(��ǥ�̹����� �Ķ��׵θ�)</label>
                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata" multiple />
            </div>
            
            <br/><br/>
            
            <!-- �̸����� ���� -->
            <div id="preview" class="content" style='display:inline; min-width:1200px;'></div> 
            
		  <div class="form-group">
		   <h4 class="col-sm-offset-3 col-sm-12">����ó</h4>
		     <h5 class="col-sm-offset-3 col-sm-12">
			���ǹ��� ����ó�� �Է����ּ���.</h5>			
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
		  </div>
		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
	  			<button type="button" class="btn btn-primary">���</button>
	  			<button type="button" class="btn btn-warning">���</button>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->


    <!--  ///////////////////////// JavaScript ////////////////////////// --> 	
	<script type="text/javascript" >
	
	function fncAddFunding(){
		
		//Form ��ȿ�� ����

		var fundTargetPay = $('input[name="fundTargetPay"]').val();
		var postTitle = $('input[name="postTitle"]').val();
	//	var postContent = $('input[name="postContent"]').val();
		var phone2 = $('input[name="phone2"]').val();
		var phone3 = $('input[name="phone3"]').val();	

		if(fundTargetPay == null || fundTargetPay.length<1){
			alert("�Ŀ���ǥ�ݾ��� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
		if(fundTargetPay < 100000 || fundTargetPay > 3000000){
			alert("�Ŀ���ǥ�ݾ��� 10�����̻� 300�������Ϸ� �Է��Ͽ��� �մϴ�.")
			return;
		}
		if(postTitle == null || postTitle.length<1){
			alert("�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
			return;
		}
/*		if(postContent == null || postContent.length<1){
			alert("�۳����� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}*/
		if(phone2 == null || phone2.length<1){
			alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}
		if(phone3 == null || phone3.length<1){
			alert("�޴�����ȣ�� �ݵ�� �Է��ϼž� �մϴ�.");
			return;
		}
		
		var value = "";	
		if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
			var value = $("#phone1 option:selected").val() + "-" 
								+ $("input[name='phone2']").val() + "-" 
								+ $("input[name='phone3']").val();
		}
		$("input:hidden[name='phone']").val( value );
		
   		 $(function() {     
   			var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < Object.keys(files).length; index++) {
                //formData ������ files��� �̸����� ������ �߰��Ѵ�.
                //���ϸ����� ��� �߰��� �� �ִ�.
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


		$('form').attr("method","POST").attr("action","/funding/addFunding").attr("enctype","multipart/form-data").submit();
	}
	
	
	//============= �Ŀ���ǥ�ݾ׿� ���� ǥ���� =============
	 $(function() {
		 
		$("input[name='fundTargetPay']").on('input' , function() {
			
			 var inputed = Math.round($("input[name='fundTargetPay']").val()*0.001);			
			//alert("�Է�  : "+inputed);
			 $("#voteNum").children("h4").remove();
			 $("#voteNum").append("<h4 class=\"col-sm-offset-3 col-sm-12\">��ǥ�� <strong class=\"text-danger\">"+inputed+"</strong>ǥ</h4>");
		});
		
	});
	
	//============= "�������Ͼ��ε�"  Event ó�� ��  ���� =============		

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
                 
                     $("#preview").append(
                                     "<div class=\"preview-box\" id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:208px' >"
                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"200px;\" height=\"200px;\"/>"
                                             + "<a href=\"#\" value=\""
                                             + imgNum
                                             + "\" onclick=\"deletePreview(this)\">"
                                             + "����" + "</a>" + "</div>");
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

     //Ȯ���� validation üũ
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
         $('#attach input[type=file]').change(function() {
             addPreview($(this)); //preview form �߰��ϱ�
         });
     }); 
	
	$(function() {
		
		//============= ��� Event  ó�� =============	
		$( "button.btn.btn-primary" ).on("click" , function() {
			fncAddFunding();
		});
		
		//============= ��� Event  ó�� =============
		 $( "button.btn.btn-warning" ).on("click" , function() {
			 fncUpdateProduct();
			});
				
	});	
	  	 		
	
	</script>
	
		
</body>

</html>