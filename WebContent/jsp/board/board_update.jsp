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
<title>Insert title here</title>
</head>
<body>
<%
		String biNum = request.getParameter("bi_num");
		String sql = "select * from board_info where bi_num=?";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, biNum);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) {
			out.println(biNum + "에 해당하는 게시물은 존재하지 않습니다.");
		} else {
	%>
	<form method="post" action="/bdi-web/jsp/board/board_update_ok.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=biNum%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title"
					value="<%=rs.getString("bi_title")%>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user"
					value="<%=rs.getString("bi_user")%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="bi_content"
					value="<%=rs.getString("bi_content")%>"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>변경하기</button>
				</th>
			</tr>
		</table>
		<input type="hidden" name="bi_num" value="<%=rs.getString("bi_num")%>">
		<input type="hidden" name="bi_moddat"value="to_char(SYSDATE,'YYYYMMDD')">
		<input type="hidden" name="bi_modtim"value="TO_CHAR(SYSDATE,'HH24MISS')">
	</form>
	<%
		}
	%>
</body>
</html>