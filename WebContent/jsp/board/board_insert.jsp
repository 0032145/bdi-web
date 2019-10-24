<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/bdi-web/jsp/board/board_insert_ok.jsp">
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="bi_title"value="내용을 채워주세요"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="bi_user"value="내용을 채워주세요"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="bi_content"value="내용을 채워주세요"></td>
			</tr>
			<tr>
				<th colspan="2"><button>작성하기</button></th>
			</tr>
		</table>
		<input type="hidden" name="bi_credat">
		<input type="hidden" name="bi_cretim">
		<input type="hidden" name="bi_moddat">
		<input type="hidden" name="bi_modtim">
	</form>
</body>
</html>