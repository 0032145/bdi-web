<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String biName = request.getParameter("bi_name");
	String biAuthor = request.getParameter("bi_author");
	String[] genres = request.getParameterValues("bi_genre");
	String biGenre = "";
	for (int i = 0; i < genres.length; i++) {
		biGenre += genres[i] + ", ";
	}
	biGenre = biGenre.substring(0, biGenre.length() - 2);
	String biPrice = request.getParameter("bi_price");
	String biCompany = request.getParameter("bi_company");

	String sql = "insert into book_info(bi_num,bi_name,bi_author,bi_genre,bi_price,bi_company,bi_date) ";
	sql += "values(seq_bi_num.nextval,?,?,?,?,?,to_char(SYSDATE,'YYYYMMDD'))";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, biName);
	ps.setString(2, biAuthor);
	ps.setString(3, biGenre);
	ps.setString(4, biPrice);
	ps.setString(5, biCompany);
	int result = ps.executeUpdate();
	if (result == 1) {
		out.println("등록이 완료되었습니다");
		con.commit();
%>
<form method="post" action="/bdi-web/jsp/book/list.jsp">
	<button>확인</button>
</form>
<%
	} else {
		out.println("작성에 실패했습니다");
		con.rollback();
	}
%>