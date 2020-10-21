
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="beantest" class="jsptest.BeanTest" />
<%
	//jsptest.BeanTest beantest = new jsptest.BeanTest();
beantest.setName("이순신");
%>
<jsp:setProperty property="name" name="beantest" value="유관순" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<strong>자바빈 사용 예제</strong>
	<h2><%=beantest.getName()%></h2>
	<h2><jsp:getProperty property="name" name="beantest" /></h2>


	<form action="beanTest3.jsp">
		이름 :<input type="text" name="name"> <br /> <input
			type="submit" value="전송">
	</form>

</body>
</html>