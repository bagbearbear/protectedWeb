y<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- ////////////	Bootsrap, css ///////////////////////// -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">

<link rel="stylesheet"
	href="../../resources/prodmenu/css/open-iconic-bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<link rel="stylesheet" href="../../resources/prodmenu/css/animate.css">

<link rel="stylesheet"
	href="../../resources/prodmenu/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../../resources/prodmenu/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="../../resources/prodmenu/css/magnific-popup.css">

<link rel="stylesheet" href="../../resources/prodmenu/css/aos.css">

<link rel="stylesheet"
	href="../../resources/prodmenu/css/ionicons.min.css">

<!-- <link rel="stylesheet" -->
<!-- 	href="../../resources/prodmenu/css/bootstrap-datepicker.css"> -->



<link rel="stylesheet" href="../../resources/prodmenu/css/flaticon.css">
<link rel="stylesheet" href="../../resources/prodmenu/css/icomoon.css">
<link rel="stylesheet" href="../../resources/prodmenu/css/style.css">
<!-- <script src="./../resources/prodmenu/js/jquery.min.js"></script> -->
<!-- jQuery UI toolTip ��� CSS-->
<!-- <link rel="stylesheet" -->
<!-- 	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="../../resources/prodmenu/js/jquery-migrate-3.0.1.min.js"></script>

<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body>div.container {
	border: 3px;
	margin-top: 10px;
}

#orderinfo {
	padding-left: 50px;
	padding-right: 50px;
	font-size: small;
}

#texth5 {
	font-size: small;
}

#ordertable {
	width: 60%;
	height: 100px;
	margin: auto;
	text-align: center;
}

.img-fluid {
	width: 150px;
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	function fncAddPurchase() {
		$("form").attr("method", "POST").attr("action", "/order/addOrder")
				.submit();
	}

	//============= "����"  Event ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("#addOrder").on("click", function() {
			fncAddPurchase();
		});
	});

	//============= "�ڷ�"  Event ó�� ��  ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("a[href='#']").on("click", function() {
			history.go(-1);
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
						<span class="mr-2"><a href="index.html">order</a></span> <span>page</span>
					</p>
					<h1 class="mb-0 bread">DOG|SHOP �����ϱ�</h1>
				</div>
			</div>
		</div>
	</div>
	<!--//////////////////////////// Sub Toolbar end/////////////////////////////-->
	<div class="container" id="orderinfo">
		<input type="hidden" value="${product.prodNo}" />
		<div class="container">
			<div class="cart_inner">
				<table class="table" id="ordertable">
					<thead>
						<tr>
							<th scope="col">�ֹ���ǰ����</th>
							<th scope="col">��ǰ��</th>
							<th scope="col">�ֹ��ݾ�</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="media">
									<div class="d-flex">
										<img class="img-fluid"
											src="../../resources/file/fileShop/${product.mainFile}"
											alt="Colorlib Template">
									</div>
									<div class="media-body">
										<p></p>
									</div>
								</div>
							</td>
							<td>
								<h5 id="texth5">${product.prodName}</h5>
							</td>
							<td>
								<h5 id="texth5">${product.price}</h5>
							</td>
							<td>
								<h5 id="texth5"></h5>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- ///////////////////////////body navigation tag/////////////////////////// -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-8 ftco-animate">

					<!-- ///////////////////////////body navigation tag/////////////////////////// -->

					<!--////////////////////////// form tag Start /////////////////////////////////-->
					<form class="billing-form" name="addForm">
						<h3 class="mb-4 billing-heading">���� ������ �Է����ּ���</h3>
						<div class="row align-items-end">

							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-group"> -->
							<!-- 									<label for="firstname">����ó</label> <input type="text" -->
							<!-- 										class="form-control" name="phone" id="phone" -->
							<!-- 										placeholder="��ǰ���� �Է����ּ���" value="�׽�Ʈ"> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�ֹ�ȸ��</label> <input type="text"
										class="form-control" name="Id" id="receiverName"
										placeholder="��ǰ���� �Է����ּ���" value="${user.id}">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-sm-3">
								����ȸ�� ����ó <input type="text" class="form-control" id="phone2"
									name="phone1"
									value="${ ! empty user.phone1 ? user.phone1 : ''}"
									placeholder="��ȣ" maxlength="4" style="height: 35px;">
							</div>
							-
							<div class="col-sm-3">
								<input type="text" class="form-control" id="phone2"
									name="phone2"
									value="${ ! empty user.phone2 ? user.phone2 : ''}"
									placeholder="��ȣ" maxlength="4" style="height: 35px;">
							</div>
							-
							<div class="col-sm-3">
								<input type="text" class="form-control" id="phone3"
									name="phone3"
									value="${ ! empty user.phone3 ? user.phone3 : ''}"
									placeholder="��ȣ" maxlength="4" style="height: 35px;">
							</div>
							<input type="hidden" name="phone" />

							<div class="w-100"></div>
							<div class="w-100"></div>

							<!-- ������� receiver Info //////////////////////////////////////////// -->
							<h3 class="mb-4 billing-heading">����� ������ �Է����ּ���</h3>
							<div class="w-100"></div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�̸�</label> <input type="text"
										class="form-control" name="receiverName" id="receiverName"
										placeholder="��ǰ���� �Է����ּ���" value="�׽�Ʈ">
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-sm-3">
								����� ����ó <input type="text" class="form-control" id="phone1"
									name="receiverPhone1" placeholder="��ȣ" maxlength="4"
									style="height: 35px;">
							</div>
							-
							<div class="col-sm-3">
								<input type="text" class="form-control" id="receiverPhone2"
									name="receiverPhone2" placeholder="��ȣ" maxlength="4"
									style="height: 35px;">
							</div>
							-
							<div class="col-sm-3">
								<input type="text" class="form-control" id="receiverPhone3"
									name="receiverPhone3" placeholder="��ȣ" maxlength="4"
									style="height: 35px;"> <input type="hidden"
									name="receiverPhone" />
							</div>

							<br> <br />
							<div class="w-100"></div>
							<div class="w-100"></div>

							<div class="w-100"></div>
							<div class="form-group">
								<label for="ssn" class="c
">�ּ�</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="sample6_postcode"
										placeholder="�����ȣ" readonly="readonly">
								</div>

								<div class="col-sm-2">
									<input type="button" class="form-control"
										onclick="execDaumPostcode()" value="�����ȣ ã��"><br>
								</div>
							</div>

							<div class="form-group">
								<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label"></label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="receiverAddr"
										name="receiverAddr" placeholder="�ּ�" readonly="readonly">
									<br> <input type="text" class="form-control"
										id="sample6_extraAddress" placeholder="�����׸�"> <input
										type="text" class="form-control" id="sample6_detailAddress"
										placeholder="���ּ�">
								</div>
							</div>
							<div class="w-100"></div>
							<br />

							<div class="w-100"></div>

							<div class="col-md-12">
								<div class="form-group">
									<label for="firstname">��ۿ�û����</label> <input type="text"
										class="form-control" name="orderRequest" id="price"
										placeholder="��ۿ�û������ �Է����ּ���">
								</div>
							</div>

							<p class="buttons">
								<a class="btn btn-primary py-3 px-4" id="pointpage"
									href="http://localhost:8080/shop/order/pointexample.jsp">����Ʈ
									����</a>
							<div class="w-100"></div>
							<!-- 
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">��������</label> <input type="text"
										class="form-control" name="price" id="sample4_postcode"
										placeholder="�����ȣ �Է����ּ���">
								</div>
							</div>
							<p align="center">
								<a class="btn btn-primary py-3 px-4"
									onclick="sample4_execDaumPostcode()" id="sample4_postcode">��ȸ�ϱ�</a>
								&nbsp;&nbsp;
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����Ʈ ��ȸ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>
							<div class="w-100"></div>-->
							<div class="text-center">


								<p class="buttons">
									<a class="btn btn-primary py-3 px-4" id="addOrder">�����ϱ�</a>
									&nbsp;&nbsp;<a href="#" class="btn btn-primary py-3 px-4">����ϱ�</a>
								</p>
							</div>
						</div>
					</form>
					<!-- ////////////////////////////form tag end //////////////////////////////-->
				</div>
			</div>
		</div>
	</section>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	 // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

	            // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
	            // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
	            var userAddr = ''; // �ּ� ����
	            var extraAddr = ''; // �����׸� ����

	            //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
	            if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
	                userAddr = data.roadAddress;
	            } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
	                userAddr = data.jibunAddress;
	            }

	            // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
	            if(data.userSelectedType === 'R'){
	                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
	                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
	                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
	                document.getElementById("sample6_extraAddress").value = extraAddr;
	            
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }

	            // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("userAddr").value = userAddr;
	            // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	    }

//============= "���"  Event ó�� ��  ���� =============
$(function() {
	$("a[href='#' ]").on("click" , function() {
		$("form")[0].reset();
	});
});	
	

	</script>

	//////////////////////////////////////////////////////// �ٿ� �����ȣ END

	///////////////////////////////////////////////////////////���ſϷ� EVENTó��
	<!-- ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		//============= "���"  Event ���� =============
		$(function() {

			$("#addOrder").on(
					"click",
					function() {

						//Debug..
						//alert(  $( "td.ct_btn01:contains('���')" ).html() );
						$("form[name='addForm']").attr("method", "POST").attr(
								"action", "/order/addOrder").submit();
						//fncAddProduct();
					});
		});
	</script>





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

</body>
</html>