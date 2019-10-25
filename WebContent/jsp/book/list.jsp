<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책장</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>저자</th>
			<th>장르</th>
			<th>가격</th>
			<th>출판사</th>
			<th>출간일</th>
		</tr>
		<%
		String sql = "select * from book_info ";
		sql += " order by bi_num desc ";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString("bi_num")%></td>
		<td><%=rs.getString("bi_name")%></td>
		<td><%=rs.getString("bi_author")%></td>
		<td><%=rs.getString("bi_genre")%></td>
		<td><%=rs.getString("bi_price")%></td>
		<td><%=rs.getString("bi_company")%></td>
		<td><%=rs.getString("bi_date")%></td>
	</tr>
	<%
		}
	%>
	</table>
	<form method="post"action="/bdi-web/jsp/book/insert.jsp">
	<button>책 등록하기</button>
	</form>
</body>
</html>