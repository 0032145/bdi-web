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
String mc = request.getParameter("mc");
String cc = request.getParameter("cc");
if(cc == "cgv"){
	if("joker".equals(mc)){
		%><a href = "http://www.cgv.co.kr/ticket/?MOVIE_CD=20020857&MOVIE_CD_GROUP=20020856"></a><%
	} else if("maleficent".equals(mc)) {
		%><a href = "http://www.cgv.co.kr/ticket/?MOVIE_CD=20019651&MOVIE_CD_GROUP=20019651"></a><%
	} else if("romance".equals(mc)) {
		%><a href = "http://www.cgv.co.kr/ticket/?MOVIE_CD=20020891&MOVIE_CD_GROUP=20020637"></a><%
	} else if("again".equals(mc)){
		%><a href = "http://www.cgv.co.kr/ticket/?MOVIE_CD=20020787&MOVIE_CD_GROUP=20020787"></a><%
	} else if("perfect".equals(mc)){
		%><a href = "http://www.cgv.co.kr/ticket/?MOVIE_CD=20020790&MOVIE_CD_GROUP=20020790"></a><%
	} else {
		out.println("선택하신 영화를 찾을 수 없습니다.");
	}
}
%>
</body>
</html>