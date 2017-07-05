<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  메인 페이지
</h1>

<!-- 세션이 있으면 회원이름 출력  없으면 로그인 버튼  -->


<button onclick="javascript:location.href='/user/login'">로그인</button>


</body>
</html>
