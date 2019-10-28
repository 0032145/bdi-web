<%@page import="java.sql.ResultSet"%>
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
		String biNum = request.getParameter("bi_num");
		String sql = "select * from books_info where bi_num=? ";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, biNum);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) {
			out.println(biNum + "에 해당하는 책은 존재하지 않습니다.");
		} else {
	%>
	<form method="post" action="<%=rootPath%>/books/update-ok.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title"
					value="<%=rs.getString("bi_title")%>"></td>
			</tr>
			<tr>
				<th>종류</th>
				<td><input type="text" name="bi_type"
					value="<%=rs.getString("bi_type")%>"></td>
			</tr>
			<tr>
				<th>별점</th>
				<td><input type="text" name="bi_star"
					value="<%=rs.getString("bi_star")%>"></td>
			</tr>
			<tr>
				<th>출판일</th>
				<td><input type="text" name="bi_cerdat"
					value="<%=rs.getString("bi_cerdat")%>"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><input type="text" name="bi_desc"
					value="<%=rs.getString("bi_desc")%>"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>변경하기</button>
				</th>
			</tr>
		</table>
	</form>
	<%
		}
	%>
</body>
</html>