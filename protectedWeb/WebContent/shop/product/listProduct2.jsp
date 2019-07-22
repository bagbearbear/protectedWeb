<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">
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
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============

	// �˻� / page �ΰ��� ��� ��� Form ������ ���� JavaScrpt �̿�  
	function fncGetList(currentPage) {
		//document.getElementById("currentPage").value = currentPage;
		$("#currentPage").val(currentPage)
		//document.detailForm.submit();	
		$("form").attr("method", "POST").attr("action", "/product/listProduct")
				.submit();
	}

	//============= Event ó�� ��  ���� =============
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		$("#button").on("click", function() {
			self.location = "/shop/prodQna/addProdQna.jsp";
		});

		// 	$(function() {

		// 		$("td.ct_btn01:contains('�˻�')").on("click", function() {
		// 			fncGetList(1);
		// 		});

		// 		$("#change2").on(
		// 				"click",
		// 				function() {
		// 					var prodNo = $(this).data('param1');
		// 					self.location = "/purchase/updateTranCodeByProd?prodNo="
		// 							+ prodNo + "&tranCode=2";
		// 				})
		// 		$("#prod").on(
		// 				"click",
		// 				function() {
		// 					self.location = "/product/getProduct?prodNo="
		// 							+ $(this).text().trim();
		// 				});

	});
</script>
</head>

<body class="goto-here">
	<!-- //////////////////////ToolBar Start ///////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
	<!--/////////////////////// ToolBar End ////////////////////////////////-->

	<div class="hero-wrap hero-bread"
		style="background-image: url('images/bg_6.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span>
					</p>
					<h1 class="mb-0 bread">#PROTECTED SHOP| ��ȣ��</h1>
				</div>
			</div>
		</div>
	</div>
	<!--  SUB TOOLBAR END///////////////////////////////////////////////// -->
	<!--/////////////////////// form start /////////////////////////////////-->
	<!-- table ���� �˻� Start /////////////////////////////////////-->
	<div class="row">

		<div class="col-md-6 text-left">
			<p class="text-primary">��ü ${resultPage.totalCount } �Ǽ�, ����
				${resultPage.currentPage} ������</p>
		</div>

		<div class="col-md-6 text-right">
			<form class="form-inline" name="detailForm">

				<div class="form-group">
					<select class="form-control" name="searchCondition">
						<option value="0"
							${ ! empty search.searchCondition && search.searchCondition eq 0 ? "selected" : "" }>��ǰ��</option>
						<option value="1"
							${ ! empty search.searchCondition && search.searchCondition eq 1 ? "selected" : "" }>��ǰ��ȣ</option>
						<option value="2"
							${ ! empty search.searchCondition && search.searchCondition eq 2 ? "selected" : "" }>��ǰ����</option>
					</select>
				</div>

				<div class="form-group">
					<label class="sr-only" for="searchKeyword">�˻���</label> <input
						type="text" class="form-control" id="searchKeyword"
						name="searchKeyword" placeholder="�˻���"
						value="${! empty search.searchKeyword ? search.searchKeyword : '' }">
				</div><br/>

				<button type="button" class="btn btn-default">�˻�</button>

				<!-- PageNavigation ���� ������ ���� ������ �κ� -->
				<input type="hidden" id="currentPage" name="currentPage" value="" />

			</form>
		</div>

	</div>

	<!--  table Start /////////////////////////////////////-->

	<!-- table ���� �˻� Start /////////////////////////////////////-->


	<!--  table Start /////////////////////////////////////-->
	<form class="listProduct">
		<div class="row">
			<div class="col-md-8 col-lg-10 order-md-last">
				<div class="row">
					<div class="col-sm-6 col-md-6 col-lg-4 ftco-animate">
						<div class="product">
							<a href="#" class="img-prod"><img class="img-fluid"
								src="../../resources/file/fileShop/100s.jpg"
								alt="Colorlib Template"> <span class="status">30%</span>
								<div class="overlay"></div> </a>
							<div class="text py-3 px-3">
								<h3>
									<input type="hidden" name="prodNo" value="${product.prodNo}" />
									<a href="#">${product.prodName}</a>
								</h3>
								<div class="d-flex">
									<div class="pricing">
										<p class="price">
											<span class="mr-2 price-dc">${product.price}</span>
										</p>
										<p class="price2">
											<span class="price-sale">${product.discountPrice}</span>
										</p>
									</div>
									<div class="rating">
										<p class="text-right">
											<a href="#"><span class="ion-ios-star-outline"></span></a> <a
												href="#"><span class="ion-ios-star-outline"></span></a> <a
												href="#"><span class="ion-ios-star-outline"></span></a> <a
												href="#"><span class="ion-ios-star-outline"></span></a> <a
												href="#"><span class="ion-ios-star-outline"></span></a>
										</p>
									</div>
								</div>
								<p class="bottom-area d-flex px-3">
									<a href="#" class="add-to-cart text-center py-2 mr-1"><span>��ٱ��Ͽ�
											��� <i class="ion-ios-add ml-1"></i>
									</span></a> <a href="#" class="buy-now text-center py-2">�����ϱ�<span><i
											class="ion-ios-cart ml-1"></i></span></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

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