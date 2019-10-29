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
		// get방식은 url이 바뀌고 post방식은 url이 바뀌지않음 
		// get방식은 조회    post방식은 신규생성(로그인은 포스트)
		request.setCharacterEncoding("UTF-8"); // post방식은 인코딩 안하면 한글 깨짐
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if (id != null) {
			String sql = "select * from user_info where ui_id = ? and ui_pwd = ? ";
			Connection con = DBCon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				out.println(rs.getString("ui_name") + "님 안녕하세요");
			} else {
				out.println("아이디와 비밀번호를 다시 입력해주세요");
			}
		}
	%>
	<form method="post"id="loginForm"action="/bdi/jsp/user/login-ok.jsp">
		아이디 : <input type="text" name="id"id="id"value="333"><br> 비밀번호 : <input
			type="password" name="pwd"id="pwd"value="123"><br>
		<button type="button" onclick="login()">로그인</button>
	</form>
	아이디가 없으신가요?
	<a href="/bdi-web/jsp/user/signup.jsp"><button>회원가입</button></a>
	<script>
		function login() { // function으로 지정되면 자동으로 window에 귀속
			//alert('로그인 클릭'); window.alert이지만 window 생략
			var idObj = document.getElementById("id");
			//alert(idObj.value); 변수 idOdj가 가지고있는 value
			var id = idObj.value
			
			var pwdObj = document.getElementById("pwd");
			var pwd = pwdObj.value;
			
			//alert(id.length);
			//alert(pwd.length);
			if(id.length<5){
				alert('id와 비밀번호는 5글자 이상 입력해야합니다')
				idObj.valur='';
				idObj.focus();
				return;
			}
			if(pwd.length<5){
				alert('비밀번호는 5글자 이상 입력해야합니다')
				pwdObj.valur='';
				pwdObj.focus();
				return;
			}
			var loginForm = document.getElementById("loginForm");
			loginForm.submit(); // 액션값이 없어서 그런것이지 submit은 일어났음
		}
	</script>
</body>
</html>