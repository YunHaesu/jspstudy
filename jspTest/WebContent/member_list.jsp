<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*"%>
<%
	request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/ms");
	conn = ds.getConnection();

	pstmt = conn.prepareStatement("select * from members");
	rs = pstmt.executeQuery();

} catch (Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 로그인 페이지</title>
<style type="text/css">
table {
	margin: auto;
	width: 400px;
	border: 1px solid gray;
	text-align: center;
}

.td_title {
	font-weight: bold;
	font-size: x-large;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" class="td_title">회원 목록</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><a href="member_info.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("id")%></a>
			</td>
			<td><a href="member_delete.jsp?id=<%=rs.getString("id")%>">삭제</a>
			</td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>