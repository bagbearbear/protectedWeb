<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="EUC-KR">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  ///////////////////////// CSS ////////////////////////// -->
<style>
body>div.container {
	border: 3px solid #D6CDB7;
	margin-top: 10px;
}
</style>

<!--  ///////////////////////// JavaScript ////////////////////////// -->
<script type="text/javascript">
	//============= "등록"  Event 연결 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
		$("#addproduct").on("click", function() {
					//Debug..
					//alert(  $( "td.ct_btn01:contains('등록')" ).html() );
			$("form").attr("method", "POST").attr("action","/product/addProduct").submit();
					//fncAddProduct();
				});
	});

	//============= "취소"  Event 처리 및  연결 =============
	$(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
		$("a[href='#' ]").on("click", function() {
			//Debug..
			//alert(  $( "td.ct_btn01:contains('취소')" ).html() );
			$("form")[0].reset();
		});
	});

	function fncAddProduct() {

		// 		//Form 유효성 검증

		// 		var name=$("input[name='prodName']").val();
		// 	 	//var name = document.detailForm.prodName.value;
		// 	 	var detail=$("input[name='prodDetail']").val();
		// 		//var detail = document.detailForm.prodDetail.value;
		// 		var manuDate=$("input[name='manuDate']").val();
		// 		//var manuDate = document.detailForm.manuDate.value;
		// 		var price=$("input[name='price']").val();
		// 		//var price = document.detailForm.price.value;

		// 		if(name == null || name.length<1){
		// 			alert("상품명은 반드시 입력하여야 합니다.");
		// 			return;
		// 		}
		// 		if(detail == null || detail.length<1){
		// 			alert("상품상세정보는 반드시 입력하여야 합니다.");
		// 			return;
		// 		}
		// 		if(manuDate == null || manuDate.length<1){
		// 			alert("제조일자는 반드시 입력하셔야 합니다.");
		// 			return;
		// 		}
		// 		if(price == null || price.length<1){
		// 			alert("가격은 반드시 입력하셔야 합니다.");
		// 			return;
		// 		}

	}
	

	$(function() {
		$("#manuDate").datepicker({
			dateFormat : "yy-mm-dd"
		});
	});
</script>
</head>

<body>

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">

		<h1 class="bg-primary text-center">상 품 등 록</h1>

		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" id="addForm">

			<div class="form-group">
				<label for="userId" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName"
						name="prodName" placeholder="상품명을 반드시 입력해주세요"> <span
						id="helpBlock" class="help-block"> <strong
						class="text-danger"></strong>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label for="userId" class="col-sm-offset-1 col-sm-3 control-label">상품
					상세정보</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodDetail"
						name="prodDetail" placeholder="상품명을 반드시 입력해주세요"> <span
						id="helpBlock" class="help-block"> <strong
						class="text-danger"></strong>
					</span>
				</div>

				<div class="form-group">
					<label for="manuDate"
						class="col-sm-offset-1 col-sm-3 control-label">상품제조일자</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="manuDate"
							name="manuDate" placeholder="상품제조일자를 입력해주세요" readonly>
					</div>
				</div>


				<div class="form-group">
					<label for="prodDetail"
						class="col-sm-offset-1 col-sm-3 control-label">가격</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="price" name="price"
							placeholder="상품 상세정보를 입력해주세요">
					</div>
				</div>

				<div class="form-group">
					<label for="prodDetail"
						class="col-sm-offset-1 col-sm-3 control-label">수량</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="quantity"
							name="quantity" placeholder="상품 상세정보를 입력해주세요">
					</div>
				</div>

				<div class="form-group">
					<label for="prodDetail"
						class="col-sm-offset-1 col-sm-3 control-label">원산지</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="country"
							name="country" placeholder="상품 상세정보를 입력해주세요">
					</div>
				</div>

				<div class="form-group">
					<label for="prodDetail"
						class="col-sm-offset-1 col-sm-3 control-label">제조사</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="company"
							name="company" placeholder="상품 상세정보를 입력해주세요">
					</div>
				</div>

				<!-- 		     <div class="form-group"> -->
				<!-- 		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label> -->
				<!-- 		    <div class="col-sm-4"> -->
				<!-- 		     <input type="file" class="form-control" id="fileName" name="fileName" placeholder="이미지를 등록해주세요"> -->
				<!-- 		    </div> -->
				<!-- 		    </div> -->

			</div>
			<div class="form-group">
				<label for="prodDetail"
					class="col-sm-offset-1 col-sm-3 control-label">할인가</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="discountPrice"
						name="discountPrice" placeholder="상품 상세정보를 입력해주세요">
				</div>
			</div>


			<div class="form-group">
				<label for="price" class="col-sm-offset-1 col-sm-3 control-label">상품코드</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodCode"
						name="prodCode" placeholder="재고수량을 입력해주세요">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4  col-sm-4 text-center">
					<button type="button" class="btn btn-primary" id="addproduct">등
						&nbsp;록</button>
					<a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
				</div>
			</div>
		</form>
		<!-- form Start /////////////////////////////////////-->

	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>
