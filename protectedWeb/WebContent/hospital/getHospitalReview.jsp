<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>��ȣ�Ұ� �� ��������</title>
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
<style>
		.starR {
			background:
				url('http://miuu227.godohosting.com/images/icon/ico_review.png')
				no-repeat right 0;
			background-size: auto 100%;
			width: 20px;
			height: 20px;
			display: inline-block;
			text-indent: -9999px;
			cursor: pointer;
		}
		
		.starR.on {
			background-position: 0 0;
		}
		
		.ck.ck-editor {
			min-width: 740px;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 200px;
			min-width: 740px;
		}
       @font-face{
          font-family: NanumSquare;
          src : url(http://ssl.pstatic.net/static/kin/fonts/NanumSquareR.woff2) format("woff2");
       }
       body{
          font-family: NanumSquare, sans-serif !important;
       }
</style>
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<!-- ToolBar End /////////////////////////////////////-->

</head>
<body>

	<div class="container">
		<form id="uploadForm" class="form-horizontal">
			<div class="hero-wrap hero-bread"
				style="padding-bottom: 0px; padding-top: 10px;">
				<div class="container">
					<div
						class="row no-gutters slider-text align-items-center justify-content-center">
						<div class="col-md-9 ftco-animate text-center">
							<p class="breadcrumbs">
								<span class="mr-2"><a href="/index.jsp">Animal
										Hospital</a></span>
							</p>
							<h1 class="mb-0 bread">��������</h1>
						</div>
					</div>
				</div>
			</div>
			<br />
			<p />
			<div id="map" style="width: 100%; height: 350px;"></div>
			<br /> <font size="6" color="#252236">${placeList.placeName}</font> <br />
			<p/><hr/>
			<h1>���θ��ּ�</h1>
			${placeList.placeAddr } <br />
			<br />
			<h1>�����ּ�</h1>
			${placeList.placeJIAddr } <br />
			<br />
			<h1>����ó</h1>
			<font size="4" color="#d65a5a">${placeList.placeTel}</font> <br />
			<p/><hr/>
			<h1>���������ı�</h1>
			<p />
			����� �ı� [ ${resultPage.totalCount}�� ] &ensp;

			<!-- Button trigger modal -->
				<c:if test="${user == null }">
				<button type="button" class="btn btn-primary" id="nonMember">�ı���</button>
				</c:if>
				<c:if test="${user != null }">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">�ı���</button>
				</c:if>
				<p/>
				<p>�ı� ��� ���� :&ensp; 
					  <span class="evgStarR" >��</span>
					  <span class="evgStarR" >��</span>
					  <span class="evgStarR">��</span>
					  <span class="evgStarR">��</span>
					  <span class="evgStarR">��</span>			
				</p>

				<div id="ListDiv" >
				  <c:forEach var="review" items="${list}">
				  <div style="background-color: #f0f0f0; padding-left:20px"   >
				  			<hr/>
							  <h3>${review.postTitle}</h3>
							  <b>${review.nickname }</b>
							  
							  &emsp;${review.regDate }
							&emsp;
							<c:if test="${review.grade eq 1 }">
									<strong class="text-danger">�ڡ١١١�</strong> <strong>1</strong>
							</c:if>
							<c:if test="${review.grade eq 2}">
									<strong class="text-danger">�ڡڡ١١�</strong> <strong>2</strong>
							</c:if>
							<c:if test="${review.grade eq 3 }">
									<strong class="text-danger">�ڡڡڡ١�</strong> <strong>3</strong>
							</c:if>
							<c:if test="${review.grade eq 4}">
									<strong class="text-danger">�ڡڡڡڡ�</strong> <strong>4</strong>
							</c:if>
							<c:if test="${review.grade eq 5}">
									<strong class="text-danger">�ڡڡڡڡ�</strong> <strong>5</strong>
							</c:if>	
							${review.postContent }
							������<i class="glyphicon glyphicon-menu-down"></i>
			        
			          </div></c:forEach>
          					
				</div>				
				<hr/>	
				<!-- Modal -->
				<div class="modal fade bs-example-modal-lg" id= "myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
				    <div class="modal-content ">
				      <div class="modal-header">
				        <h4 class="modal-title" id="myModalLabel" style="padding-left:20px">�������� �ı�</h4>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				      </div>
				      <div class="modal-body">
							<div class="starRev" style="padding-left:20px">
							  <span class="starR" >1</span>
							  <span class="starR" >2</span>
							  <span class="starR">3</span>
							  <span class="starR">4</span>
							  <span class="starR">5</span>
							  <font size="4" color="#000000" id = "starText">0/5 �����ּ���</font>
						   </div>
						<p/>				      
						  <div class="row" style="padding-left:35px">
							 <input type="text" id="postTitle" name="postTitle"  placeholder="�ı������� �ۼ����ּ���." style="width:740px; height:35px;">		
						  </div>
						  <p/>					      
						  <div class="row" style="padding-left:35px">
							 <textarea id="postContent" name="postContent" style="text-align: left;"  placeholder="�ı⳻���� �ۼ����ּ���." ></textarea>
					      </div>	
							<p/>
			            <!-- ÷�� ��ư -->
			            <div id="attach" class="form-group" style="padding-left:35px">
			                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">�������</label></span>&nbsp;&nbsp;�ִ� 3����� ���ε� �����մϴ�.
			                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
			            </div>
			           <br/>

			            <!-- �̸����� ���� -->
			            <div class="form-group" style="padding-left:35px">
			            <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'></div> 
			            </div>
				   
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
				        <button type="button" class="btn btn-primary" id="btn-add"> ���</button>
				  </div>
				</div>
				
	   
	     <br/>
	   </div></div>
		 <input type="hidden" id="hospitalName"  name="hospitalName" value="${placeList.placeName}" />	
		 <input type="hidden" id="grade" name="grade"  />	
		 <input type="hidden" class="form-control" id="multiFile" name="multiFile" >
		 
		</form>
		<p/>
	</div>

	<br />
	<br />

	<!--================ start footer Area  =================-->
	<!-- footer Start /////////////////////////////////////-->
	<jsp:include page="/layout/footer.jsp"></jsp:include>
	<!-- footer End /////////////////////////////////////-->
	<!--================ End footer Area  =================-->
	<script src="../../resources/prodmenu/js/popper.min.js"></script>
	<script src="../../resources/prodmenu/js/bootstrap.min.js"></script>
	<script src="../../resources/prodmenu/js/jquery.easing.1.3.js"></script>
	<script src="../../resources/prodmenu/js/jquery.waypoints.min.js"></script>
	<script src="../../resources/prodmenu/js/jquery.stellar.min.js"></script>
	<script src="../../resources/prodmenu/js/owl.carousel.min.js"></script>
	<script src="../../resources/prodmenu/js/jquery.magnific-popup.min.js"></script>
	<script src="../../resources/prodmenu/js/aos.js"></script>
	<script src="../../resources/prodmenu/js/jquery.animateNumber.min.js"></script>
	<!-- 	<script src="./../resources/prodmenu/js/bootstrap-datepicker.js"></script> -->
	<script src="../../resources/prodmenu/js/scrollax.min.js"></script>
	<script src="../../resources/prodmenu/js/main.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=153d14a106a978cdc7a42f3f236934a6&libraries=services"></script>
	<script>
	
	   //============= ��Ϲ�ư �������� �Լ� =============      
	   function fncAddReview(){
	      
	      //Form ��ȿ�� ����
		  $('textarea').val(editor.getData());
	      var grade = $("#grade").val();	  
	      var postTitle = $("input[name=postTitle]").val();
	      var postContent = $('textarea').val()
		
	      if(grade == ''){
	         alert("�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
	         return;
	      }	      
	      if(postTitle == null || postTitle.length<1){
	          alert("�ı������� �ݵ�� �Է��ϼž� �մϴ�.");
	          $('input[name="postTitle"]').focus();
	          return;
	       }
	      if(postContent == ''){
	         alert("�ı⳻���� �ݵ�� �Է��Ͽ��� �մϴ�.");
	         $("textarea[name=postContent]").focus();
	         return;
	      }
      
	      //============= �������Ͼ��ε� AJAX =============
          $(function() {     
            var form = $('#uploadForm')[0];
            var formData = new FormData(form);

            for (var index = 0; index < 100; index++) {
                formData.append('files',files[index]);
            }
                //////////////��������///////////////
                $.ajax({
                type : 'POST',
                enctype : 'multipart/form-data',
                processData : false,
                contentType : false,
                cache : false,
                timeout : 600000,
                url : '/Images/json/imageupload/HP',
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
                

                //////////////������///////////////          
	   		        $.ajax({
	   		        	url : "/review/json/addHospitalReview/",
	   		            method :  "POST" ,
	   		            dataType : "json" ,   		 
	   					headers : {
	   						"Accept" : "application/json",
	   						"Content-Type" : "application/json"
	   					},
	   		        	data : JSON.stringify({
	   		        		grade : $("#grade").val(),
	   		        		postTitle : $("input[name=postTitle]").val(),
	   		        		postContent : $('textarea').val(),
	   		        		file : $("#multiFile").val(),
	   		        		hospitalName : $("#hospitalName").val()
	   					}),
	   					
	   		             success : function(JSONData) {
	   		            	//alert(JSONData.grade);
	   		            	$('#myModal').modal("hide");
	   	
	   		            }  
	   			  });                
        });
	      
	     // $('form').attr("method","POST").attr("action","/funding/addVoting").attr("enctype","multipart/form-data").submit();
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
		                     if(Object.keys(files).length>=3){
		                        alert("������ 3������� ���ε� �����մϴ�.");
		                        delete files[imgNum];
		                     }else{
		               // 8�� ���� 
		                     $("#preview").append(
		                                     "<div class=\"preview-box\" value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
		                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
		                                             + "<span href=\"#\" value=\""
		                                             + imgNum
		                                             + "\" onclick=\"deletePreview(this)\">"
		                                             + "   ����" + "</span>");

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
		     
		       $(document).ready(function() {

		           //============= �����̸����� =============
		           $('#attach input[type=file]').change(function() {
		              addPreview($(this)); //preview form �߰��ϱ�
		          });
		       });
		       
		   //============= "MAP" =============     
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		//������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		//�ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
		var geocoder = new kakao.maps.services.Geocoder();

		//�ּҷ� ��ǥ�� �˻��մϴ�
		geocoder.addressSearch('${placeList.placeAddr}', function(result,
				status) {

			// ���������� �˻��� �Ϸ������ 
			if (status === kakao.maps.services.Status.OK) {

				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				// ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
				var marker = new kakao.maps.Marker({
					map : map,
					position : coords
				});

				// ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
				map.setCenter(coords);
			}
		});
		
		 //============= "����" =============     
		$('.starRev span').hover(function(){
			  $(this).parent().children('span').removeClass('on');
			  $(this).addClass('on').prevAll('span').addClass('on');
			  
			  var sNum = $(this).parent().children('span.starR.on').length;
			  var sText = null;
			  if(sNum==1){
				  sText = "1/5 ���ο���"
			  }else if (sNum==2){
				  sText = "2/5 ���� �ƽ�����";				  
			  }else if(sNum ==3){
				  sText = "3/5 �����̿���";
			  }else if(sNum==4){
				  sText = "4/5 ���ƿ�";
			  }else{
				  sText = "5/5 �ְ���";
			  }

			  $("#starText").text(sText);
			  $("#grade").val(sNum);
			  return false;
			});

		
		   $(function() {
		         //============= ��ȸ���϶� �ı��� Event  ó�� =============   
		         $( "#nonMember" ).on("click" , function() {   
		        	alert("�α����� �ʿ��մϴ�.")
		        });		      
		         //============= ��� Event  ó�� =============   
		         $( "#btn-add" ).on("click" , function() {   
		        	fncAddReview();
		        });

		            
		   });   
	</script>
</body>
</html>