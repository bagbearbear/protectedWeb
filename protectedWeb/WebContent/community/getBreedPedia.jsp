<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="ko">
<head>

<title>�������</title>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- jQuery CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>

<style type="text/css">
body {
	font-family: Helvetica;
}

#banner-message {
	BACKGROUND: #FFF;
	BORDER-RADIUS: 4PX;
	PADDING: 20PX;
	FONT-SIZE: 25PX;
	TEXT-ALIGN: CENTER;
	TRANSITION: ALL 0.2S;
	MARGIN: 0 AUTO;
	WIDTH: 500PX;
}

#breed_data {
	background: #fff;
	border-radius: 4px;
	padding: 20px;
	font-size: 14px;
	text-align: left;
	transition: all 0.2s;
	margin: 0 auto;
	width: 500px;
	color: black;
}

#breed_image {
	background: #fff;
	margin: 0 auto;
	width: 500px;
	height: 500px;
}

td{
	color : black;
	width : 300px;
}
</style>
</head>
<body>

	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="hero-wrap hero-bread" style="padding-bottom: 0px; padding-top : 10px;">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="/index.jsp">��������</a></span>
					</p>
					<h1 class="mb-0 bread">�������</h1>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		
		<div id="banner-message">

			<select class="breed_select">
				<option></option>
			</select>

		</div>
		<div id="breed_data">
			<img id="breed_image" src="" />
			<p><b>ǰ�� ����</b></p>
			<table id="breed_data_table">

			</table>
		</div>
	</div>
	<script type="text/javascript">
		var $breed_select = $('div.breed_select1');
		$breed_select.click(function() {
			//alert($(this).children().attr("id"));
			// 			alert("1 : "+$(".breed_select1").children(this).attr("id"));
			// 			alert("2 : "+$(this).parents().html());
			// 			alert("3 : "+$(this).children(":clicked").attr("id"));
			// 			alert("4 : "+$(this).text());
			//var id = $(this).children(":selected").attr("id");
			//alert(id);
			getDogByBreed(id);
		});
		
		// ���� �ε��� ������ �ȶߴ� ���� �ذ�
		var id = 1;
		getDogByBreed(id);
		
		// Select Box �̺�Ʈ
		var $breed_select = $('select.breed_select');
		$breed_select.change(function() {
			id = $(this).children(":selected").attr("id");
			getDogByBreed(id);
		});

		// OpenAPI�̿� ������ ��������
		function getBreeds() {
			ajax_get('https://api.thedogapi.com/v1/breeds', function(data) {
				populateBreedsSelect(data);
			});
		}

		function populateBreedsSelect(breeds) {
			$breed_select.empty().append(
					function() {
						var output = '';
						$.each(breeds, function(key, value) {

							if (value.name == 'Chow Chow') {
								value.name = '��������';
							}
							if (value.name == 'Affenpinscher') {
								value.name = '�����ɼ�';
							}
							if (value.name == 'Afghan Hound') {
								value.name = '������ �Ͽ��';
							}
							if (value.name == 'African Hunting Dog') {
								value.name = '������ī�鰳';
							}
							if (value.name == 'Airedale Terrier') {
								value.name = '����� �׸���';
							}
							if (value.name == 'Akbash Dog') {
								value.name = '�ǹٽ� ����';
							}
							if (value.name == 'Akita') {
								value.name = '��ŰŸ';
							}
							if (value.name == 'Alapaha Blue Blood Bulldog'){
								value.name = '�˶� ���� ��� ���� �ҵ�';
							}
							if (value.name == 'Alaskan Husky'){
								value.name = '�˷���ĭ �㽺Ű';
							}
							if (value.name == 'Alaskan Malamute'){
								value.name = '�˷���ĭ �����Ʈ';
							}
							if (value.name == 'American Bulldog'){
								value.name = '�Ƹ޸�ĭ �ҵ�';
							}
							if (value.name == 'American Bully'){
								value.name = '�Ƹ޸�ĭ �Ҹ�';
							}
							if (value.name == 'American Eskimo Dog'){
								value.name = '�Ƹ޸�ĭ ����Ű�� ����';
							}
							if (value.name == 'American Foxhound'){
								value.name = '�Ƹ޸�ĭ �����Ͽ��';
							}
							if (value.name == 'American Pit Bull Terrier'){
								value.name = '�Ƹ޸�ĭ �ͺ��׸���';
							}
							if (value.name == 'American Staffordshire Terrier'){
								value.name = '�Ƹ޸�ĭ �����۵�� �׸���';
							}
							if (value.name == 'American Water Spaniel'){
								value.name = '�Ƹ޸�ĭ ���� ����Ͼ�';
							}
							if (value.name == 'Anatolian Shepherd Dog'){
								value.name = '�Ƴ��縮�� ���۵�';
							}
							if (value.name == 'Appenzeller Sennenhund'){
								value.name = '����ÿ�� ������Ʈ';
							}

							// 							output += '<span id="' + value.id + '">'
							// 							+ value.name + '</span><br>';

							output += '<option id="' + value.id + '">'
									+ value.name + '</option>';
						});
						return output;
					});
		}

		function getDogByBreed(breed_id) {
			ajax_get(
					'https://api.thedogapi.com/v1/images/search?include_breed=1&breed_id='
							+ breed_id,
					function(data) {

						if (data.length == 0) {
							clearBreed();
							$("#breed_data_table")
									.append(
											"<tr><td>���� �ۼ��Ǿ� ���� ���� ǰ�� ���� �Դϴ�.</td></tr>");
						} else {
							displayBreed(data[0])
						}
					});
		}

		function clearBreed() {
			$('#breed_image').attr('src', "");
			$("#breed_data_table tr").remove();
		}

		function displayBreed(image) {
			$('#breed_image').attr('src', image.url);
			$("#breed_data_table tr").remove();

			var breed_data = image.breeds[0]
			$.each(breed_data, function(key, value) {
				if (key == 'weight' || key == 'height') {
					value = value.metric
				}

				if (key == 'weight') {
					key = '����';
				}

				if (key == 'height') {
					key = 'Ű';
				}

				if (key == 'id') {
					key = '�ĺ���ȣ';
				}

				if (key == 'name') {
					key = '�̸�';
				}

				if (key == 'breed_group') {
					key = 'ǰ���׷�';
				}

				if (key == 'life_span') {
					key = '��ռ���';
				}

				if (key == 'temperament') {
					key = '����';
					//alert(value);
					var valueArray = value.split(',');
					//alert(valueArray);
					for (i = 0; i < valueArray.length; i++) {
						//alert(valueArray[i]);
						if (valueArray[i].trim() == 'Friendly') {
							valueArray[i] = 'ģ����';
						}
						if (valueArray[i].trim() == 'Loyal') {
							valueArray[i] = '�漺������';
						}
						if (valueArray[i].trim() == 'Quiet') {
							valueArray[i] = '������';
						}
						if (valueArray[i].trim() == 'Charming') {
							valueArray[i] = '�ŷ�����';
						}
					}

					$("#breed_data_table").append(
							"<tr><td>" + key + "</td><td>" + valueArray
									+ "</td></tr>");

				}

				if (key == 'country_code') {
					key = '�����ڵ�';
				}

				if (key == 'bred_for') {
					key = '����';
				}

				if (!(key == '����')) {
					$("#breed_data_table").append(
							"<tr><td>" + key + "</td><td>" + value
									+ "</td></tr>");
				} else {
					return false;
				}

			});
		}

		function ajax_get(url, callback) {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					console.log('responseText:' + xmlhttp.responseText);
					try {
						var data = JSON.parse(xmlhttp.responseText);
					} catch (err) {
						console
								.log(err.message + " in "
										+ xmlhttp.responseText);
						return;
					}
					callback(data);
				}
			};

			xmlhttp.open("GET", url, true);
			xmlhttp.send();
		}

		getBreeds();
	</script>
	
	<div style="min-height: 200px;">
	
	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>
	
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