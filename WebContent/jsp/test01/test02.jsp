<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text"name="name">
<form>
<input type="text"name="name1"> <% // form안에 같이 있어야 값이 submit됨 %>
<button>승인</button> <% // 버튼 기본값 submit %>
</form>
</body>
</html>