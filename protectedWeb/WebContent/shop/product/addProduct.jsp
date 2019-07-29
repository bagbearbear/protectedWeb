<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
   
<head>
<title> ��ǰ ���</title>
   <meta charset="EUC-KR">
   
   <!-- ���� : http://getbootstrap.com/css/   ���� -->
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
   <!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>


<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
.container {
	width: 1000px;
	font-size :17px;
	margin-top: 10px;

}

</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//============= "���"  Event ���� =============
	$(function() {

		$("#addproduct").on(
				"click",
				function() {
					
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
			                url : '/Images/json/imageupload/Shop',
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
					
					//Debug..
					//alert(  $( "td.ct_btn01:contains('���')" ).html() );
					$("form[name='addForm']").attr("method", "POST").attr(
							"action", "/product/addProduct").submit();
					//fncAddProduct();
				});
	});

	//  	$(function() {

	// 		$("#addproduct").on("click", function() {
	// 			self.location = "/shop/product/addProduct"
	// 		});

	// 	});

	//============= "���"  Event ó�� ��  ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		$("a[href='#' ]").on("click", function() {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('���')" ).html() );
			$("form")[0].reset();
		});
	});

	function fncAddProduct() {
		//Form ��ȿ�� ����

		// 		var prodName=$("input[name='prodName']").val();
		// 	 	//var name = document.detailForm.prodName.value;
		// 	 	var prodDetail=$("input[name='prodDetail']").val();
		// 		//var detail = document.detailForm.prodDetail.value;
		// 		var manuDate=$("input[name='manuDate']").val();
		// 		//var manuDate = document.detailForm.manuDate.value;
		// 		var price=$("input[name='price']").val();
		// 		//var price = document.detailForm.price.value;

		// 		if(prodName == null || prodName.length<1){
		// 			alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		// 			return;
		// 		}

		// 		if(manuDate == null || manuDate.length<1){
		// 			alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		// 			return;
		// 		}
		// 		if(price == null || price.length<1){
		// 			alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		// 			return;
		// 		}
		//$("form[name='addForm']").attr("method", "POST").attr("action","/product/addProduct").submit;
	}

	//============= �޷�  =============
	$(function() {
		$("input[name='manuDate']").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>
</head>

<body>
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ToolBar End /////////////////////////////////////-->
	<!--//////////////////////////// Sub Toolbar Start/////////////////////////////-->
	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_6.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="#">admin</a></span> <span>page</span>
					</p>
					<h1 class="mb-0 bread">PROTECTED | SHOP ��ǰ���</h1>
				</div>
			</div>
		</div>
	</div>
	<br><br><br/>
	<!--//////////////////////////// Sub Toolbar end/////////////////////////////-->

	<!-- ///////////////////////////body navigation tag/////////////////////////// -->
	<section class="ftco-section">
		<div class="container">
			<form class="billing-form" name="addForm">
				<div class="row justify-content-center">
					<div class="col-xl-8 ftco-animate">

						<!-- ///////////////////////////body navigation tag/////////////////////////// -->

						<!--////////////////////////// form tag Start /////////////////////////////////-->

						<h3 class="mb-4 billing-heading">��ǰ������ ������ּ���</h3>
						<div class="w-100"></div>
						<div class="row align-items-end">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">��ǰ��</label> <input type="text"
										class="form-control" name="prodName" id="prodName"
										placeholder="��ǰ���� �Է����ּ���">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">��ǰ�ڵ�</label> <input type="text"
										class="form-control" name="prodCode" id="prodCode"
										placeholder="��ǰ�ڵ带 �Է����ּ���">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="lastname">�� ��</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="������ �Է����ּ���">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">������</label> <input type="text"
										class="form-control" name="country" id="country"
										placeholder="�������� �Է����ּ���">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="streetaddress">������</label> <input type="text"
										class="form-control" name="company" id="company"
										placeholder="�����縦 �Է����ּ���">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="streetaddress">������</label> <input type="text"
										class="form-control" name="manuDate" id="manuDate"
										placeholder="�������ڸ� �Է����ּ���">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="towncity">���ξ�</label> <input type="text"
										class="form-control" name="discountPrice" id="discountPrice"
										placeholder="��ǰ�� ���ΰ��� �Է����ּ���">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="postcodezip">������</label> <input type="text"
										class="form-control" name="quantity" id="quantity"
										placeholder="��ǰ�� �԰������ �Է����ּ���">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="w-100"></div>
							
						
            <!-- ÷�� ��ư -->
            &nbsp;&nbsp;&nbsp;&nbsp;<div id="attach" class="form-group">
                <span class="label label-primary " ><label class="waves-effect waves-teal btn-flat" for="uploadInputBox">�������</label></span>&nbsp;&nbsp;�Ǿ� �̹����� ��ǥ�̹����Դϴ�. (�ִ� 8����� ���ε� �����մϴ�.)
                <input id="uploadInputBox" style="display: none" type="file" value="���" name="filedata"  />
            </div>
           <br/>
            
            <!-- �̸����� ���� -->
            <div class="form-group">
            <div id="preview" class="col-md-3" align="center" style='display:inline; min-width:600px;'></div> 
            </div>
		    <input type="hidden" class="form-control" id="multiFile" name="multiFile" >
						
						
						<div class="col-md-6">
								<div class="form-group">
									<label for="postcodezip">������</label> <input type="text"
										class="form-control" name="prodDetail" id="prodDetail"
										placeholder="��ǰ�� �������� �Է����ּ���">
								</div>
							</div>
						</div>
						<p align="center">
							<a class="btn btn-primary py-3 px-4" id="addproduct">����ϱ�</a>
							&nbsp;<a href="#" class="btn btn-primary py-3 px-4">����ϱ�</a>
						</p>

						<!-- ////////////////////////////form tag end //////////////////////////////-->
					</div>
				</div>
			</form>
		</div>

	</section>




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
	<!-- ////////////////////�޷� /////////////////////////////-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
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
	     

	    	 
	         $(document).ready(function() {

	             //============= �����̸����� =============
	             $('#attach input[type=file]').change(function() {
	                addPreview($(this)); //preview form �߰��ϱ�
	            });
	     });
	     
	
	</script>

</body>
</html>