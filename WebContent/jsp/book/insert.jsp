<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 등록하기</title>
</head>
<body>
	<form method="post" action="/bdi-web/jsp/book/insert_ok.jsp">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_name"></td>
			</tr>
			<tr>
				<th>저자</th>
				<td><input type="text" name="bi_author"></td>
			</tr>
			<tr>
				<th>장르</th>
				<td><input type="checkbox" name="bi_genre" value="novel">소설
					<input type="checkbox" name="bi_genre" value="essay">수필 <input
					type="checkbox" name="bi_genre" value="poems">시집 <input
					type="checkbox" name="bi_genre" value="fairytale">동화책 <input
					type="checkbox" name="bi_genre" value="biography">위인전<br>
					<input type="checkbox" name="bi_genre" value="workbook">문제집 <input
					type="checkbox" name="bi_genre" value="dictionary">사전 <input
					type="checkbox" name="bi_genre" value="educationalbooks">교양서적 <input
					type="checkbox" name="bi_genre" value="ebook">전자책 <input
					type="checkbox" name="bi_genre" value="comicbook">만화책</td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="number" name="bi_price"></td>
			</tr>
			<tr>
				<th>출판사</th>
				<td><input type="text" name="bi_company"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button>등록하기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>