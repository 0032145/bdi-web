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
request.setCharacterEncoding("UTF-8");
String biNum = request.getParameter("bi_num");
String biTitle = request.getParameter("bi_title");
String biUser = request.getParameter("bi_user");
String biContent = request.getParameter("bi_content");

String sql = "update board_info";
sql += " set bi_title=?,";
sql += " bi_user=?,";
sql += " bi_content=?,";
sql += " bi_moddat=to_char(SYSDATE,'YYYYMMDD'),";
sql += " bi_modtim=TO_CHAR(SYSDATE,'HH24MISS') ";
sql += " where bi_num=?";
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,biTitle);
ps.setString(2,biUser);
ps.setString(3,biContent);
ps.setString(4,biNum);
int result = ps.executeUpdate();
if(result==1){
	out.println("정보 변경이 완료되었습니다");
	con.commit();
	%>
	<form method="post"action="/bdi-web/jsp/board/board_list.jsp">
	<button>확인</button>
	</form><%
} else {
	out.println("변경에 실패했습니다");
	con.rollback();
}
%>
</body>
</html>