<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	숫자 1 :
	<input type="number" id="num1"> + 숫자 2 :
	<input type="number" id="num2">
	<button onclick="calc();">계산하기</button>
	<%
		// on+click : 클릭 이벤트(자바스크립트 영역) / on+OO : OO 이벤트
	%>
	<script>
		//alert(1);alert(2);
		// 데이터타입이 정해져있지않아서 void를 쓰지않음
		// return값을 입력하면 return취급, return잉 없으면 void 취급
		function calc() {
			var n1 = document.getElementById("num1");
			var n2 = document.getElementById("num2");
			alert(parseInt(n1.value)+parseInt(n2.value));

			n1 = new Number(n1.value);
			n2 = new Number(n2.value);
			alert(n1+n2);
			alert(n1==n2);
			// new를 해서 주소값이 달라짐
			
			// 자바스크립트에서 값을 가져오면 기본적으로 문자
			// DOM : 다큐먼트 오브젝트 모델
			// BOM : 브라우저 오브젝트 모델
			// getElementsByName : 이름은 중복가능해서 엘리먼츠로 복수형
			// 돈의 가치로 쓸 수 있는건 절대 스크립트로 하지않는다
			// 암호화하는건 절대 스크립트로 하지않는다
			// 쉽게 까고 변경 할 수 있음
		}
	</script>
</body>
</html>