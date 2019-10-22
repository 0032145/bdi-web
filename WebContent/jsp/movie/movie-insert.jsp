<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1">
	<tr>
		<th>번호</th>
		<td><input type = "number" name = "mi_num"></td>
	</tr>
	<tr>
		<th>영화제목</th>
		<td><input type = "text" name = "mi_name"></td>
	</tr>
	<tr>
		<th>티켓가격</th>
		<td><input type = "number" name = "mi_price"></td>
	</tr>
	<tr>
		<th>개봉일</th>
		<td><input type = "date" name = "mi_date"></td>
	</tr>
	<tr>
		<th>영화설명</th>
		<td><input type = "text" name = "mi_desc"></td>
	</tr>
	<tr>
		<th>관람등급</th>
		<td><input type = "text" name = "mi_age"></td>
	</tr>
	<tr>
		<th>별점</th>
		<td><input type = "number" name = "mi_star_rate"></td>
	</tr>
	<tr>
		<td>
		<a href = "/bdi-web/jsp/movie/movie-insert_ok.jsp"><button>등록하기</button></a>
		</td>
	</tr>
</table>
</body>
</html>