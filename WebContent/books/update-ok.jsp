<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/first.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String biNum = request.getParameter("bi_num");
		String biTitle = request.getParameter("bi_title");
		String biType = request.getParameter("bi_type");
		String biStar = request.getParameter("bi_star");
		String biCredat = request.getParameter("bi_credat");
		String biDesc = request.getParameter("bi_desr");

		String sql = "update books_info ";
		sql += "set bi_title=?, ";
		sql += "set bi_type=?, ";
		sql += "set bi_star=?, ";
		sql += "set bi_credat=?, ";
		sql += "set bi_desr=? ";
		sql += "where bi_num=?";

		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		int result = ps.executeUpdate();
		if (result == 1) {
			out.println("변경이 완료되었습니다");
			con.commit();
	%>
	<form method="post" action="<%=rootPath%>/books/list.jsp">
		<button>확인</button>
	</form>
	<%
		}
	%>
</body>
</html>