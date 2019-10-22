<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public void test(HttpServletRequest request){
	// 선언부 메소드가 _jspService메소드 위에 있어서 파라미터가 없으면 request같은 변수가 있는걸 모름
	// 여기에 변수선언하면 멤버변수
	request.getParameter("abc");
}
%>
<%!
// public void test(){request.getParameter("abc");}
%>
<%
// 스크립트릿은 _jspService 메소드 안에 있음
// 그러므로 메소드안에 메소드 불가
// test();
List<String> strList = new ArrayList<String>();
%>
</body>
</html>