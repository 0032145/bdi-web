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
		String uiNum = request.getParameter("ui_num");
		String sql = "select * from user_info where ui_num=?";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, uiNum);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) { // rs.next()가 내릴게 있으면 ture 없으면 faluse
			out.println(uiNum + "에 해당하는 게시물은 존재하지 않습니다.");
		} else {
	%>
	<form method="post" action="/bdi-web/jsp/user/user_update_ok.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=uiNum%></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ui_id"
					value="<%=rs.getString("ui_id")%>" readonly /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="ui_pwd"
					value="<%=rs.getString("ui_pwd")%>"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="ui_name"
					value="<%=rs.getString("ui_name")%>"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="ui_age"
					value="<%=rs.getString("ui_age")%>"></td>
			</tr>
			<tr>
				<th>비고</th>
				<td><input type="text" name="ui_etc"
					value="<%=rs.getString("ui_etc")%>"></td>
			</tr>
			<tr>
				<th>취미</th>
					<td>
					<input type="checkbox" name="hobby" value="study">공부
					<input type="checkbox" name="hobby" value="game">게임 
					<input type="checkbox" name="hobby" value="movie">영화
					<input type="checkbox" name="hobby" value="music">음악
					</td>
			</tr>
			<tr>
				<th colspan="2">
					<button>변경하기</button>
				</th>
			</tr>
		</table>
		<input type="hidden" name="ui_num" value="<%=rs.getString("ui_num")%>">
	</form>
	<%
		}
	%>
</body>
</html>