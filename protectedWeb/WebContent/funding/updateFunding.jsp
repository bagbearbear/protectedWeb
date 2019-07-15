<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
		<font size=6>�Ŀ� ��û ����</font> �Ŀ���û�� ��ǥ <strong style="color:#225cba">1��</strong>�̻� ���� �� <strong  style="color:#225cba">������ �Ұ�</strong>�մϴ�.
	    </div>		
		</div>	
		
		<!-- form Start /////////////////////////////////////-->
		<form id ="uploadForm" class="form-horizontal">
		  <div class="form-group">
			<h4 >�Ŀ���ǥ�ݾ�</h4>
			��ǥ������ ( <strong style="color:#225cba">��ǥ�ݾ� X 0.001</strong> )ǥ�� ����˴ϴ�. ( 10���� ~ 300�������� �Է°����մϴ�. )<p/>
		    <div class="row form-form"  >
		      <input type="text" class="form-control" value="${funding.fundTargetPay }" id="fundTargetPay" name="fundTargetPay" placeholder="0" maxlength="7"  style="width:600px; height:35px;" >&ensp; ��
		    </div>
		  </div>
			<br/>
			
			<fmt:parseNumber var ="test" value="${funding.fundTargetPay*0.001}" integerOnly="true"/>
         
		  <div class="form-group" id="voteNum">
		    <font ><b>��ǥ�� <strong style="color:#225cba">${test}</strong>ǥ</b></font>
		  </div>
		  <div class="form-group" >
			�Ŀ��Խñ۷� �̵��Ϸ��� �޾ƾ� �� ��ǥ ���Դϴ�.	
		  </div>
		  <br/>
                
		  <div class="form-group">
			<h4 >�Ŀ���ǥ�Ⱓ</h4>
			�Ŀ� �����Ⱓ�� �Է��ϼ���. ( 7�� ~ 30�ϱ��� ���ð����մϴ�. )<br/>
			��ǥ�� �����Ǿ��� �� ���� �������� �Ⱓ�Դϴ�. ��ǥ �Ⱓ�� <strong style="color:#225cba">30</strong>�Ϸ� �����˴ϴ�.<p/>		
		    <div >
		      <select class="form-control" name="fundTargetDay" id="fundTargetDay"  style="width:700px; height:35px;">
		       	<c:forEach var ="i" begin="7" end ="30" step="1">
		       		<c:if test="${funding.fundTargetDay eq i }">
				  	<option value="${funding.fundTargetDay}" selected >${funding.fundTargetDay}</option>
		       		</c:if>
		       		<c:if test="${!(funding.fundTargetDay eq i) }">
		       		<option value="${i}" >${i}</option>
		       		</c:if>
				 </c:forEach>
				</select>
		    </div>
		  </div>
		  <br/>
		  <div class="form-group">
			<h4 class=>������</h4><p/>		
		    <div class=>
		      <input type="text" class="form-control" value="${funding.postTitle}" id="postTitle" name="postTitle" placeholder="������ �Է����ּ���." style="width:700px; height:35px;">		
		    </div>
		  </div>
		  <br/>
		  <div class="form-group">
			<h4 class=>�۳���</h4><p/>		
			    <div class=>
			      <textarea name="postContent" class="form-control" rows="5"  placeholder="������ �Է����ּ���."  style="width:700px;">${funding.postContent}</textarea>
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
            <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'>

				<c:forEach var="name" items="${file}" varStatus="status">            
				<div class="preview-box" value="${status.index}"  style='display:inline;float:left;width:140px' >
                     <img class="thumbnail" src="/resources/file/fileSF/${name.fileName}"  width="120px;" height="120px;"/>
                            <a href="#" value="${status.index}"  onclick="deletePreview2(this)">����</a></div>     
                </c:forEach>           
            

            
            </div> 
            </div>
		   <div class="form-group">
		   <br/>
			<h4>����ó</h4>
			���ǹ��� ����ó�� �Է����ּ���.<p/>		
			 <div class="col-sm-3" style="padding:0; margin:0;">
		      <select class="form-control" name="phone1" id="phone1">
				  	<option value="010" ${ ! empty funding.phone1 && funding.phone1 == "010" ? "selected" : ""  } >010</option>
					<option value="011" ${ ! empty funding.phone1 && funding.phone1 == "011" ? "selected" : ""  } >011</option>
					<option value="016" ${ ! empty funding.phone1 && funding.phone1 == "016" ? "selected" : ""  } >016</option>
					<option value="018" ${ ! empty funding.phone1 && funding.phone1 == "018" ? "selected" : ""  } >018</option>
					<option value="019" ${ ! empty funding.phone1 && funding.phone1 == "019" ? "selected" : ""  } >019</option>
				</select>
		    </div>
		    <div class="col-sm-3">
		      <input type="text" class="form-control" id="phone2" name="phone2" value="${ ! empty funding.phone2 ? funding.phone2 : ''}"  placeholder="�����ȣ">
		    </div>
		    <div class="col-sm-3">
		      <input type="text" class="form-control" id="phone3" name="phone3" value="${ ! empty funding.phone3 ? funding.phone3 : ''}"   placeholder="�����ȣ">
		    </div>
		    <input type="hidden" name="phone"  />
		    <input type="hidden" id="multiFile" name="multiFile" >
		    <input type="hidden" id="deleteFile" name="deleteFile" >		    
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
    <!--================ start footer Area  =================-->
    <!-- footer Start /////////////////////////////////////-->
	 <jsp:include page="/layout/footer.jsp"></jsp:include>
   	<!-- footer End /////////////////////////////////////-->  
    <!--================ End footer Area  =================-->

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
/*       if(postContent == null || postContent.length<1){
         alert("�۳����� �ݵ�� �Է��ϼž� �մϴ�.");
         $('input[name="postContent"]').focus();
         return;
      } */
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
     //�����ִ����� ������ array
     var deletefileNameArray = new Array();
     
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
     //=============�����ִ������� ������ư������ =============
     function deletePreview2(obj) {
         var imgNum = obj.attributes['value'].value;
         //fnAddFile(fileNameArray);
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
                    $("#voteNum").children().remove();
                    $("#voteNum").append("<font><b>��ǥ�� <strong  style=\"color:#225cba\">"+inputed+"</strong>ǥ</b></font>");
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