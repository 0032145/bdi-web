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
	<form>
		<select name="search">
			<option value="bi_num">번호</option>
			<option value="bi_title">제목</option>
			<option value="bi_user">작성자</option>
			<option value="bi_content">내용</option>
			<option value="5">제목+내용</option>
			<option value="6">제목+내용+작성자</option>
		</select> : <input type="text" name="searchStr">
		<button>검색</button>
	</form>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>작성일</th>
			<th>작성시간</th>
			<th>수정일</th>
			<th>수정시간</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<%
			String search = request.getParameter("search");
			String searchStr = request.getParameter("searchStr");
			String sql = "select * from board_info ";
			if (search != null) {
				if ("bi_num".equals(search)) {
					sql += " where bi_num like ?";
				} else if ("bi_title".equals(search)) {
					sql += " where bi_title like ?";
				} else if ("bi_user".equals(search)) {
					sql += " where bi_user like ?";
				} else if ("bi_content".equals(search)) {
					sql += " where bi_content like ?";
				} else if ("5".equals(search)) {
					sql += " where bi_title like ? or bi_content like ?";
				} else if ("6".equals(search)) {
					sql += " where bi_title like ? or bi_content like ? or bi_user like ?";
				}
			}
			sql += " order by bi_num desc ";
			Connection con = DBCon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			if (search != null) {
				if ("bi_num".equals(search) || "bi_title".equals(search) || "bi_user".equals(search)
						|| "bi_content".equals(search)) {
					ps.setString(1, "%" + searchStr + "%");
				} else if ("5".equals(search)) {
					ps.setString(1, "%" + searchStr + "%");
					ps.setString(2, "%" + searchStr + "%");
				} else if ("6".equals(search)) {
					ps.setString(1, "%" + searchStr + "%");
					ps.setString(2, "%" + searchStr + "%");
					ps.setString(3, "%" + searchStr + "%");
				}
			}
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String biNum = rs.getString("bi_num");
		%>
		<tr>
			<td><%=biNum%></td>
			<td><%=rs.getString("bi_title")%></td>
			<td><%=rs.getString("bi_user")%></td>
			<td><%=rs.getString("bi_content")%></td>
			<td><%=rs.getString("bi_credat")%></td>
			<td><%=rs.getString("bi_cretim")%></td>
			<td><%=rs.getString("bi_moddat")%></td>
			<td><%=rs.getString("bi_modtim")%></td>
			<td><a
				href="/bdi-web/jsp/board/board_update.jsp?bi_num=<%=biNum%>"><button>수정</button></a></td>
			<td><a
				href="/bdi-web/jsp/board/board_delete.jsp?bi_num=<%=biNum%>"><button>삭제</button></a></td>
		</tr>
		<%
			}
		%>
	</table>
	<form method="post" action="/bdi-web/jsp/board/board_insert.jsp">
		<button>글쓰기</button>
	</form>
</body>
</html>