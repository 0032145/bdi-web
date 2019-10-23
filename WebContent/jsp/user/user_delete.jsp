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
삭제할 회원 번호 : <%=request.getParameter("ui_num") %>
<%
String uiNum = request.getParameter("ui_num");
String sql = " delete from user_info where ui_num =" + uiNum;

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
int result = stmt.executeUpdate(sql);
if(result==1){
	out.println("삭제 완료");
	con.commit();
}
%>
</body>
</html>