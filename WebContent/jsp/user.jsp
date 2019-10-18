<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
확인<BR>
jsp 자바 서버 페이지<BR>
,% %.는 자바영역 사용가능
<%
int a = 10;
out.println(a);
String str = "~~~~";
out.println(str);
boolean bl = true;
out.println(bl);
String trans = request.getParameter("trans");
if("man".equals(trans)){
	out.println("남자");
} else if("woman".equals(trans)){
	out.println("여자");
} else {
	out.println("?");
}
%><BR>
println이지만 BR코드를 안써서 html에서는 안띄어짐<BR>
동적 자원 (다이나믹 리소시즈): 사용자가 어떻게 접근했는지에 따라 값이 달라짐 
</body>
</html>