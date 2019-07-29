<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="../resources/css/others/animate.css" rel="stylesheet">
<!-- IMPORT -->
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
.container {
	width: 1000px;
	font-size: 17px;
	margin-top: 10px;
}
</style>

<script type="text/javascript">
	//============= "���"  Event ���� =============
	$(function() {
		$("#addproduct").on(
				"click",
				function() {
					//Debug..
					alert( $( "form[name='addForm']" ).html() );
					$("form[name='addForm']").attr("method", "POST").attr("action", "/order/addOrder").submit();
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
						<span class="mr-2"><a href="index.html">�߰�</a></span> <span>����</span>
					</p>
					<h1 class="mb-0 bread">DOG|SHOP �����ϱ�</h1>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br />
	<!--//////////////////////////// Sub Toolbar end/////////////////////////////-->

	<!-- ///////////////////////////body navigation tag/////////////////////////// -->
	<section class="ftco-section">
		<div class="container">
			<form class="billing-form" name="addForm">
			<input type="hidden" value="prodNo"/>
				<div class="row justify-content-center">
					<div class="col-xl-8 ftco-animate">

						<!-- ///////////////////////////body navigation tag/////////////////////////// -->
						<div class="container" id="orderinfo">
							<input type="hidden" value="${product.prodNo}" />
							<div class="container">
								<section id="cart" class="cart">
									<div class="container">
										<table id="cart" class="table table-hover table-condensed">
											<thead>
												<tr>
													<th style="width: 50%">��ǰ��</th>
													<th style="width: 10%">��ǰ��</th>
													<th style="width: 22%" class="text-center">�Ѿ�</th>
													<th style="width: 10%"></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td data-th="Product">
														<div class="row">
															<div class="col-sm-2 hidden-xs">
																<img
																	src="../../resources/file/fileShop/${product.mainFile}"
																	alt="..." class="img-responsive" />
															</div>
															<div class="col-sm-10 prod-desc">
																<h6 class="nomargin">${product.company}</h6>
																<p>${product.prodName}</p>
															</div>
														</div>
													</td>
													<td data-th="Price">${product.price}</td>
													<td data-th="Subtotal" class="text-center">$64.34</td>
													<td class="actions" data-th="">
														<button class="btn btn-info btn-sm">
															<i class="fa fa-refresh"></i>
														</button>
														<button class="btn btn-danger btn-sm">
															<i class="fa fa-trash-o"></i>
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</section>
							</div>
						</div>
						<!--////////////////////////// form tag Start /////////////////////////////////-->
						<h3 class="mb-4 billing-heading">���������� �Է����ּ���</h3>
						<div class="row align-items-end">

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">����ȸ��</label> <input type="text"
										class="form-control" name="id" id="id"
										placeholder="��ǰ���� �Է����ּ���" value="${sessionScope.user.id }"
										readonly>
								</div>
							</div>

							<div class="w-100"></div>
							<div class="w-100"></div>
							<div class="w-100"></div>

							<h3 class="mb-4 billing-heading">&nbsp;&nbsp;����������� �Է����ּ���</h3>
							<div class="w-100"></div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">�޴���</label> <input type="text"
										class="form-control" name="receiverName" id="receiverName"
										placeholder="��۹޴º� �̸��� �Է����ּ���">
								</div>
							</div>

							<div class="w-100"></div>
							<div class="col-sm-3">
								<label for="firstname">��ۿ���ó</label> <select
									class="form-control" name="receiverPhone2" id="receiverPhone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
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
									style="height: 35px;">
							</div>
							<input type="hidden" name="receiverPhone" />



							<div class="w-100"></div>
							<br />
							<div class="col-sm-4">
								<label for="firstname">�ּ�|�����ȣ</label> <input type="text"
									class="form-control" id="sample6_postcode" placeholder="��ȣ"
									style="height: 35px;">
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��">
							<div class="w-100"></div>
							<div class="col-sm-4">
								<input type="text" class="form-control"
									id="sample6_address" placeholder="�ּ�"
									style="height: 35px;">
							</div>
							<div class="col-sm-4">
								<input type="text" class="form-control"
									id="sample6_extraAddress" placeholder="�����׸�"
									style="height: 35px;">
							</div>
								<div class="col-sm-4">
								<input type="text" class="form-control" id="sample6_detailAddress"
									placeholder="���ּ�" style="height: 35px;">
							</div>
							<input type="hidden" name="receiverAddr" />

							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstname">��ۿ�û����</label> <input type="text"
										class="form-control" name="orderRequest" id="orderRequest"
										placeholder="��ۿ�û������ �Է����ּ���">
								</div>
							</div>
							<hr />
							<div class="w-100"></div>

							<div class="col-md-13">
								<div class="form-group">
									<label for="streetaddress">��������</label> <select
										class="form-control" name="paymentCode" id="paymentCode">
										<option value="1">���������</option>
										<option value="2">ī�����</option>
									</select>
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


	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var addr = ''; // �ּ� ����
                var extraAddr = ''; // �����׸� ����

                //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    addr = data.roadAddress;
                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    addr = data.jibunAddress;
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
                document.getElementById("sample6_address").value = addr;
                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
 		</body></html>


