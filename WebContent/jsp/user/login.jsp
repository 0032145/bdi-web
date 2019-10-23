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
<% // get방식은 url이 바뀌고 post방식은 url이 바뀌지않음 
	// get방식은 조회    post방식은 신규생성(로그인은 포스트)
request.setCharacterEncoding("UTF-8"); // post방식은 인코딩 안하면 한글 깨짐
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id!=null){
	String sql = "select * from user_info where ui_id = ? and ui_pwd = ? ";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,id);
	ps.setString(2,pwd);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		out.println(rs.getString("ui_name") + "님 안녕하세요");
	} else {
		out.println("아이디와 비밀번호를 다시 입력해주세요");
	}
}
%>
<form method="post">
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd"><br>
	<button>로그인</button>
</form>
아이디가 없으신가요?
<a href = "/bdi-web/jsp/user/signup.jsp"><button>회원가입</button></a>
</body>
</html>