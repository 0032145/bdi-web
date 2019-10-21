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
String op = request.getParameter("op");
out.println("원하는 연산자는 " + op);
%><BR>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
int number1 = Integer.parseInt(num1);
int number2 = Integer.parseInt(num2);
if(op==null){
	out.println("연산자는 null일 수 없습니다");
} else if("+".equals(op)){ // (op.equals("+"))일 경우 op값이 null이면 오류가 발생함 
	out.println("결과 : " + (number1 + number2));
} else if("-".equals(op)){
	out.println("결과 : " + (number1 - number2));
} else if("*".equals(op)){
	out.println("결과 : " + (number1 * number2));
} else if("/".equals(op)){
	out.println("결과 : " + (number1 / number2));
} else if("".equals(op)){
	out.println("잘못된 연산자입니다");
} else{
	out.println("잘못된 연산자입니다");
}
%>
</body>
</html>