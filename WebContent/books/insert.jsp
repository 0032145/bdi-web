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
<title>책 등록하기</title>
</head>
<body>
	<%
		Connection con = DBCon.getCon();
		String sql = "select * from books_type order by bt_num";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	%>
	<form method="post" action="<%=rootPath%>/books/insert-ok.jsp">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title"></td>
			</tr>
			<tr>
				<th>종류</th>
				<td><select name="bi_type">
						<%
							while (rs.next()) {
						%>
						<option value="<%=rs.getString("bt_num")%>"><%=rs.getString("bt_name")%></option>
						<%
							}
						%>
				</select></td>

			</tr>
			<tr>
				<th>별점</th>
				<td><input type="text" name="bi_star"></td>
			</tr>

			<tr>
				<th>출간일</th>
				<td><input type="text" name="bi_credat"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><input type="text" name="bi_desc"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button>등록하기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>