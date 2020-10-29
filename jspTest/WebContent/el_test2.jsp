<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int age = 30;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장 객체 사용 예제</title>
<style type="text/css">
</style>
</head>
<body>
	<h3>${test }
		:
		<%=(String) session.getAttribute("test")%></h3>
	<!-- Scope: 같은 키값이라면 반드시 표시  다른 키값이라면 생략가능-->
	<h3>${param.name }
		:
		<%=request.getParameter("name")%></h3>
	<h3>${age}</h3>
</body>
</html>