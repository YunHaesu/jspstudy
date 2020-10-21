<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content = "text/html; charset=UTF-8">
</head>
<body>
<%
	pageContext.setAttribute("pageScope", "pageValue");
	request.setAttribute("requestScope", "requestValue");
	
%>
<jsp:forward page="attributeTest5Result.jsp"></jsp:forward>
</body>
</html>