<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.* , javax.sql.*, javax.naming.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
	String sql = "INSERT INTO membertbl VALUES (?,?,?)";
	PreparedStatement pstmt = null;
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/shopdb");
		conn = ds.getConnection();
		pstmt = conn.prepareStatement(sql);
		String id = request.getParameter("userId");
		if( id == null) id = "아이디없음";
		pstmt.setString(1, id); // 이런식으로 사용함 form태그 가 있어야함.
		pstmt.setString(2, "김연아");
		pstmt.setString(3, "경기도 수원시");
		int result = pstmt.executeUpdate();
		if (result != 0) {
			out.println("<h3>레코드가 등록되었습니다.</h3>");
		}
	} catch (Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	} finally {
		try {
			if (pstmt != null)
		pstmt.close();
			if (conn != null)
		conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>
</body>
</html>