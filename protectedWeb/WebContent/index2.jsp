<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ε���</title>
</head>
<body>



		<li><a href="#">�о�</a></li>
		<li><a href="#">����</a></li>
		
		
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('�о�')").on("click" , function() {
				$(self.location).attr("href","/adopt/addAdopt?boardCode=AD");
				//self.location = "/user/logout"
			}); 
			
		 	$("a:contains('����')").on("click" , function() {
				$(self.location).attr("href","/adopt/addAdopt?boardCode=MS");
			}); 
		
		 });
		</script>
</body>
</html>