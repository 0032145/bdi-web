<%@page import="java.util.Collections"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
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
		List<Integer> lt = new ArrayList<Integer>();
		Random r = new Random();
		for (int i = 0; i < 6; i++) {
			int rNum = r.nextInt(45) + 1;
			if (lt.indexOf(rNum) == -1) {
				lt.add(rNum);
			} else {
				i--;
			}
		}
		Collections.sort(lt);

		String num1 = Integer.toString(lt.get(0));
		String num2 = Integer.toString(lt.get(1));
		String num3 = Integer.toString(lt.get(2));
		String num4 = Integer.toString(lt.get(3));
		String num5 = Integer.toString(lt.get(4));
		String num6 = Integer.toString(lt.get(5));

		String sql = "insert into lotto(seq,num1,num2,num3,num4,num5,num6) ";
		sql += "values(seq_ui_num.nextval,?,?,?,?,?,?) ";

		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		for (int i = 0; i < lt.size(); i++) {
			ps.setInt(i + 1, lt.get(i));
		}
		int result = ps.executeUpdate();
		if (result == 1) {
			out.println("번호생성 완료");
			con.commit();
	%>
	<form method="post" action="/bdi-web/jsp/lotto/lotto.jsp">
		<button>확인</button>
	</form>
	<%
		/*
			<script>
			alert("번호 생성 완료");
			location.href="/bdi-web/jsp/lotto/lotto.jsp";
			</script>
			*/
		}
	%>
</body>
</html>