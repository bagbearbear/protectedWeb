<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
		body {
            padding-top : 50px;
        }
    </style>
    

	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-center">
	       <h3 class=" text-info">회원정보수정</h3>
	       <h5 class="text-muted">내 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5>
	    </div>
	    
	    <input type="hidden" id="authKeyReturn">
	    
	    <!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">
		<input type="hidden" id="id" name="id" value="${ user.id }">
		  <div class="form-group">
		    <label for="pw" class="col-sm-offset-1 col-sm-3 control-label">비밀번호</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="pw" name="pw" value="${user.pw}">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw2" class="col-sm-offset-1 col-sm-3 control-label">비밀번호 확인</label>
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="pw2" name="pw2" value="${ user.pw }">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="nickname" class="col-sm-offset-1 col-sm-3 control-label">닉네임</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="nickname" name="nickname" value="${user.nickname}">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-offset-1 col-sm-3 control-label">이메일</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="email" name="email" value="${ user.email }">
		    </div>
		    <div id="mailAuth" style="display:none">
		      <input type="text" id="checkMail"/>
		      <input type="button" id="mailClick" value="전송"/>
		    </div>
		    <input type="button" id="authMail" name="authMail" value="인증하기">
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">휴대전화번호</label>
		     <div class="col-sm-2">
		      <select class="form-control" name="phone1" id="phone1">
				  	<option value="010" ${ ! empty user.phone1 && user.phone1 == "010" ? "selected" : ""  } >010</option>
					<option value="011" ${ ! empty user.phone1 && user.phone1 == "011" ? "selected" : ""  } >011</option>
					<option value="016" ${ ! empty user.phone1 && user.phone1 == "016" ? "selected" : ""  } >016</option>
					<option value="018" ${ ! empty user.phone1 && user.phone1 == "018" ? "selected" : ""  } >018</option>
					<option value="019" ${ ! empty user.phone1 && user.phone1 == "019" ? "selected" : ""  } >019</option>
				</select>
		    </div>
		    <div class="col-sm-2">
				<input type="text" class="form-control" id="phone2" name="phone2" placeholder="미입력시 인증 불필요">
		    </div>
		    <div class="col-sm-2">
				<input type="text" class="form-control" id="phone3" name="phone3">
		    </div>
			<input type="hidden" value="${ user.phone }" name="phone"/>
		    <div id="authButton" style="display:none">
				<input type="text" id="checkAuth"/>
				<input type="button" id="authClick" value="전송"/>
		    </div>
 		    <input type="button" id="authPhone" name="authPhone" value="인증하기">
		  </div>
		  
		  <div class="form-group">
		    <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">주소</label>
		    <div class="col-sm-2">
		      <input type="text" class="form-control"id="sample6_postcode" placeholder="우편번호" readonly="readonly">
		    </div>
		      
		    <div class="col-sm-2">
			  <input type="button" class="form-control" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
			</div>
		  </div>
		  
		<div class="form-group">
		  <label for="ssn" class="col-sm-offset-1 col-sm-3 control-label"></label>
		  <div class="col-sm-4">
		      <input type="text" class="form-control" id="userAddr" name="userAddr" placeholder="주소" value="${ user.userAddr }" readonly="readonly">
		      <br>
			  <input type="text" class="form-control"  id="sample6_extraAddress" placeholder="참고항목">
			  <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
			  </div>
		   </div>
		  
<!-- 		  <div class="form-group"> -->
<!-- 		    <label for="account" class="col-sm-offset-1 col-sm-3 control-label">계좌번호</label> -->
<!-- 		    <div class="col-sm-4"> -->
<%-- 		      <input type="text" class="form-control" id="account" name="account" value="${ user.account }"> --%>
<!-- 		    </div> -->
<!-- 		  </div> -->
		  
		  <div class="form-group">
		    <label for="birthDate" class="col-sm-offset-1 col-sm-3 control-label">생년월일</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="birthDate" name="birthDate" value="${ user.birthDate }">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">프로필사진</label>
			   <div class="col-sm-4">
				  <input type="file" class="form-control" id="profile" name="file" style="width: 300px; 
						height: 40px" maxLength="13" value="${ user.profile }"/>
			   </div>
		  </div>		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <input type="submit" id="submit" class="btn btn-primary" value="수&nbsp;정">
			  <a class="btn btn-primary btn" href="#" role="button">취 &nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
	    
 	</div>


	    <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		
		$(function() {
			
			$( "#submit" ).on("click" , function() {
				var value = "";	
				
				if($("input:text[name='phone2']").val() == "" && $("input:text[name='phone3']").val() != "" ){
					$("input:hidden[name='phone']").val(${user.phone});
					
				}
				if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
					var value = $("option:selected").val() + "-" 
								+ $("input[name='phone2']").val() + "-" 
								+ $("input[name='phone3']").val();
					$("input:hidden[name='phone']").val( value );
				}

				
				$("form").attr("method" , "POST").attr("action" , "/users/updateUsers");
			});
		});	
		
		$(function(){
		
			$("#authPhone").on("click", function(){
				var value = "";	
				if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
					var value = $("option:selected").val() + "-" 
								+ $("input[name='phone2']").val() + "-" 
								+ $("input[name='phone3']").val();
				}

				$("input:hidden[name='phone']").val( value );
				
				var check=$("input:hidden[name='phone']").val();
				
				$.ajax({
					
					url:"/users/json/sendSMS",
					method:"POST",
					data:JSON.stringify({
						phone:check
					}),
					headers: {
						"accept":"application/json",
						"content-type":"application/json"
					},
					success:function(authPhone, status){
						alert(status);
						alert(authPhone.authKey);
						$("#authKeyReturn").val(authPhone.authKey);
						$("#authButton").show();
					}
					
				})

			})
			
		});
		
		$(function() {
			$("#authClick").on("click", function(){
				if($("#checkAuth").val()==$("#authKeyReturn").val()){
					$("#authButton").hide();
					$("#authPhone").hide();
					alert("인증되었습니다.");
				}else{
					alert("인증번호가 맞지 않습니다.");
				}
			})
		});
		
		$(function(){
			
			$("#authMail").on("click", function(){

				var check=$("input[name='email']").val();

					$.ajax({
						
						url:"/users/json/mailSender",
						method:"POST",
						data:JSON.stringify({email:check}),
						headers: {
							"accept":"application/json",
							"content-type":"application/json"
						},
						success:function(authMail, status){
// 							alert(status);
// 							alert(authMail.authKey);
							$("#authKeyReturn").val(authMail.authKey);
							$("#mailAuth").show();
						}
									
					})
		
				})
					
			});

			$(function() {
				$("#mailClick").on("click", function(){
					if($("#checkMail").val()==$("#authKeyReturn").val()){
						$("#authMail").hide();
						$("#mailAuth").hide();
						alert("인증되었습니다.");
					}else{
						alert("인증번호가 맞지 않습니다.");
					}
				})
			});
		
		
		 $(function() {
			 
			 $("input[name='email']").on("change" , function() {
				
				 var email=$("input[name='email']").val();
			    
				 if(email != "" && (email.indexOf('@') < 1 || email.indexOf('.') == -1) ){
			    	alert("이메일 형식이 아닙니다.");
			    	return;
			     }
			});
			 
		});
		 
			function execDaumPostcode() {
			    new daum.Postcode({
			        oncomplete: function(data) {
			        	 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			            var userAddr = ''; // 주소 변수
			            var extraAddr = ''; // 참고항목 변수

			            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                userAddr = data.roadAddress;
			            } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                userAddr = data.jibunAddress;
			            }

			            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			            if(data.userSelectedType === 'R'){
			                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                    extraAddr += data.bname;
			                }
			                // 건물명이 있고, 공동주택일 경우 추가한다.
			                if(data.buildingName !== '' && data.apartment === 'Y'){
			                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                }
			                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                if(extraAddr !== ''){
			                    extraAddr = ' (' + extraAddr + ')';
			                }
			                // 조합된 참고항목을 해당 필드에 넣는다.
			                document.getElementById("sample6_extraAddress").value = extraAddr;
			            
			            } else {
			                document.getElementById("sample6_extraAddress").value = '';
			            }

			            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			            document.getElementById('sample6_postcode').value = data.zonecode;
			            document.getElementById("userAddr").value = userAddr;
			            // 커서를 상세주소 필드로 이동한다.
			            document.getElementById("sample6_detailAddress").focus();
			        }
			    }).open();
			    }
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
	
	</script>
 	
</body>

</html>