<%@ page contentType="text/html; charset=EUC-KR"%>
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

.img-fluid{
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
		$("button.btn.btn-primary").on("click", function() {
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
	<input type="hidden" value="${product.prodNo}"/>
		<div class="container">
			<div class="cart_inner">
				<table class="table" id="ordertable">
					<thead>
						<tr>
							<th scope="col">�ֹ���ǰ����</th>
							<th scope="col">��ǰ��</th>
							<th scope="col">����</th>
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
									<label for="firstname"> <input type="hidden"
										value=""></label> <input type="text"
										class="form-control" name="proName" id="prodName"
										placeholder="��ǰ���� �Է����ּ���" value="�׽�Ʈ">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�ֹ��� ����ȣ</label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>
							<div class="w-100"></div>
							<br /> <br />

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
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�ֹ��� ����ȣ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>

							<div class="w-100"></div>
							<!-- �����ȣ ����//////////////////////////////////////////////// -->
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�����ȣ</label> <input type="text"
										class="form-control" name="receiverAdder"
										id="sample4_postcode" placeholder="�����ȣ �Է����ּ���">
								</div>
							</div>
							<p align="center">
								<a class="btn btn-primary py-3 px-4"
									onclick="sample4_execDaumPostcode()" id="sample4_postcode">�����ȣ</a>
								&nbsp;&nbsp;
							<div class="w-100"></div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname"></label> <input type="text"
										class="form-control" name="price" id="sample4_roadAddress"
										placeholder="���θ� �ּ�">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname"></label> <input type="text"
										class="form-control" name="price" id="sample4_jibunAddress"
										placeholder="�����ּ�">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname"></label> <input type="text"
										class="form-control" name="price" id="sample4_detailAddress"
										placeholder="���ּ�">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname"></label> <input type="text"
										class="form-control" name="price" id="sample4_extraAddress"
										placeholder="�����׸�">
								</div>
							</div>
							<div class="w-100"></div>

							<!-- �����ȣ  END//////////////////////////////////////////////////// -->

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����ó</label> <input type="text"
										class="form-control" name="receiverPhone" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>

							<div class="w-100"></div>

							<div class="col-md-12">
								<div class="form-group">
									<label for="firstname">��ۿ�û����</label> <input type="text"
										class="form-control" name="orderRequest" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>

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
									<label for="firstname">��밡���� ���ϸ���</label> <input type="text"
										class="form-control" name="price" id="userMileage" value="12000"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">��� ���ϸ���</label> <input type="text"
										class="form-control" min="0" max="99999" id="useMileage"
												value="0" maxlength="5" oninput="maxLengthCheck(this)"
										placeholder="�ǸŰ����� �Է����ּ���"/>
								</div>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�ܿ� ���ϸ���</label> <input type="text"
										class="form-control" name="price" id="restMileage"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
								<a class="btn btn-primary py-3 px-4"
									onclick="sample4_execDaumPostcode()" id="mileageCal">�����ϱ�</a>
								&nbsp;&nbsp;
								<button class="btn btn-md btn-outline btn-danger pull-right"
											type="reset">
											<i class="glyphicon glyphicon-repeat"></i> �ʱ�ȭ
										</button>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����Ʈ ��ȸ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����Ʈ ��ȸ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����Ʈ ��ȸ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div><div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����Ʈ ��ȸ</label> <input type="text"
										class="form-control" name="price" id="price"
										placeholder="�ǸŰ����� �Է����ּ���">
								</div>
							</div>
							<div class="w-100"></div>


							<p class="buttos">
								<a class="btn btn-primary py-3 px-4" id="addproduct">�����ϱ�</a>
								&nbsp;&nbsp;<a href="#" class="btn btn-primary py-3 px-4">����ϱ�</a>
							</p>
						</div>
					</form>
					<!-- ////////////////////////////form tag end //////////////////////////////-->
				</div>
			</div>
		</div>
	</section>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		//���� �����ȣ START////////////////////////////////////////////////
		//�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

							// ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
							// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
							var roadAddr = data.roadAddress; // ���θ� �ּ� ����
							var extraRoadAddr = ''; // ���� �׸� ����

							// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
							// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
							if (data.bname !== ''
									&& /[��|��|��]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(���� ���θ� �ּ� : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(���� ���� �ּ� : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}

		//////////////////////////////////////////////////////// �ٿ� �����ȣ END
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
	
	
	<script type="text/javascript">
	//���ϸ��� ���� ����
	
	$(document).ready(function() {
			// �ʱ� ����
			var calCheck = 0;
			
			
			//���ϸ��� ����
			$("#mileageCal").click(function(e) {
				e.preventDefault();
				if ($("#useMileage").val() == '') {
					$("#useMileage").val(0);
				}
				
				if (parseInt($("#userMileage").val()) >= parseInt($("#useMileage").val())){
					var sub = parseInt($("#userMileage").val()) - parseInt($("#useMileage").val());
					console.log($("#paymentAfter").val());
					$("#restMileage").val(sub);
					$("#resvMileage").val($("#useMileage").val());
					$("#paymentAfter").val(parseInt($("#paymentBefore").val()) - parseInt($("#useMileage").val()));
					console.log($("#paymentAfter").val());
					$("#resvPayamount").val($("#paymentAfter").val());
					$("#resvUsingmileage").val($("#useMileage").val());
					
					calCheck = 1;
				} else {
					alert("��밡���� ���ϸ����� �ʰ��Ͽ����ϴ�.")
					$("#useMileage").val(0);
					$("#mileageCal").trigger("click");
					
					calCheck = 0;
				}
			});
	</script>
</body>
</html>