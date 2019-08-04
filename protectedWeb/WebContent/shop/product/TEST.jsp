<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
img.bg {
	/* �������� ũ�⿡ �°� ��ü ȭ�鿡 �����. */
	min-height: 100%;
	min-width: 1024px;
	/* ũ�⸦ ȭ����ü�� �������ش�. */
	width: 100%;
	height: auto;
	/* ��ũ���ص� ����̹����� ���� */
	position: fixed;
	/* absolute;�� �ϸ� ��浵 ��ũ�� ������ ���ڿ������� ����. */
	top: 0;
	left: 0;
}

@media screen and (max-width: 1024px) {
	/* �׸��� �������� �߾ӿ� �����. -512�� 1024 �� �ݰ����� �߾�������
���� ���̴�. */
	img.bg {
		left: 50%;
		margin-left: -512px;
	}
}

div#container {
	/* relative; �� �ʼ�, ���ϸ� ȭ���� Ŀ���� �ʴ´�. */
	position: relative;
}

#font { color: #ffffff}


/* fade in ȿ��*/
.bg{
    animation: fadein 2s;
    -moz-animation: fadein 2s; /* Firefox */
    -webkit-animation: fadein 2s; /* Safari and Chrome */
    -o-animation: fadein 2s; /* Opera */
}
@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-moz-keyframes fadein { /* Firefox */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-o-keyframes fadein { /* Opera */
    from {
        opacity:0;
    }
    to {
        opacity: 1;
    }
    
</style>
</head>
<body>

	<img class="bg"
		src="/resources/img/bg-img/los-angeles-commercial-dog-photographer-for-pet-brands-23.jpg"
		alt="" />
	<div id="container">
	<br/>
	&nbsp;&nbsp;<img src="/resources/file/others/favicon.png" alt="logo" height="40px" width="40px">&ensp;<span id="font">��ȣ�Ұ�</span>
	</div>


</body>
</html>

