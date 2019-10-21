<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% //@page 디렉티브페이지  이 페이지가 어떤건지 알려줌 %>
<%
/*
* <     >
*  %@  % 디렉티브 지시문
*  %   % 스크립트릿
*  %=  % 익스프레션 표현식
*  %!  % 디클레이션 선언부 
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public void test(JspWriter out)throws Exception {
		out.println("테스트메소드 호출");
		// 메소드 안에 메소드는 불가능
}
%>
<form action = "/bdi-web/jsp/calc/calc_ok.jsp">
	숫자1 : <input type="number"name="num1" <%//value = "3" 초기값 입력가능 %>>
	<select name="op">
		<option value="">선택</option>
		<option value="+">더하기</option>
		<option value="-">빼기</option>
		<option value="*">곱하기</option>
		<option value="/">나누기</option>
	</select>
	숫자2 : <input type="number"name="num2">
	<button>계산</button>
</form>
</body>
</html>