<%@page import="java.sql.Statement"%>
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
삭제할 게시물 번호 : <%=request.getParameter("bi_num") %>
<%
String biNum = request.getParameter("bi_num");
String sql = " delete from board_info where bi_num =" + biNum;

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
int result = stmt.executeUpdate(sql);
if(result==1){
	out.println("삭제 완료");
	con.commit();
}
%>
<form method="post"action="/bdi-web/jsp/board/board_list.jsp">
<button>확인</button>
</form>
</body>
</html>