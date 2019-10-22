<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Calendar"%>
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
		<th>영화 선택</th>
		<th>극장 선택</th>
	</tr>
	<tr>
		<td><select name = "mc">
			<option value="">영화 선택</option>
			<option value="joker">조커</option>
			<option value="maleficent">말레피센트2</option>
			<option value="romance">가장 보통의 연애</option>
			<option value="again">두번할까요</option>
			<option value="perfect">퍼펙트맨</option>
			</select>
		</td>
		<td><select name = "cc">
			<option value="">극장 선택</option>
			<option value="cgv">CGV</option>
			<option value="lotte">롯데시네마</option>
			<option value="mega">메가박스</option>
			</select>
		</td>
	</tr>
</table>
<a href = "/bdi-web/jsp/movie/movie-link."><button>예매하기</button></a>
</body>
</html>