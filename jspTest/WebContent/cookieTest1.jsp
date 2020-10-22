<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("name","honggildong");
	cookie.setMaxAge(600); // 계산식도 들어감. 0초로 넣어주면 쿠키가 파괴된다. 따로 쿠키 삭제는 없다.
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
<h2><%= cookie.getName() %></h2>
<h2><%= cookie.getValue() %></h2>
<h2><%= cookie.getMaxAge() %></h2>
<a href = "cookieTest2.jsp">쿠키 값 불러오기</a>

</body>
</html>