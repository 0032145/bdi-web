<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	!DOCTYPE html : html5
	<!-- 
	meta : 정보데이터
	title : 익스플로러 탭 이름
	script태그는 head body 모두 사용 가능
	맞지않는곳에 코드를 써도 되긴하지만 표준대로 사용하는것이 좋다
	
	자바 - 메소드method 스크립트 - 펑션function
	
	자바스크립트에서는 ""나 '' 모두 String
	 -->
	<script>
		//window(변수, 생략가능).alert(1);
		alert(1);
		alert(2);
		// 자바스크립트는 선언할때 데이터타입을 알려줄수 없음
		// 값을 대입하면 거기에 맞는 데이터타입으로 바뀜 = 데이터타입은 동적으로 바뀜
		// var 을 쓰면 정해져있는 데이터타입이나 정해져있지않은 데이터타입 모두 입력 가능
		var str = 1;
		alert(str + 1);
		str = "1";
		alert(str + 1);
		str = true;
		str = [ 1, 2, 3 ];
		str = null;
		str = undefined;
		// 자바스크립트에서는 null이 값뿐만이 아니라 데이터타입의 역할도 함
		// undefined와 null은 서로 다른것
	</script>
</body>
</html>