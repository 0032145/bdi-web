<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp"%>
<% // @include는 include file 코드를 가져와서 사용 %>
<% // JSP는 자기 위치부터 절대경로
   //html은 최상위폴더부터 절대경로%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=str %>
<img src="/bdi-web/imgs/img.jpg">
</body>
</html>