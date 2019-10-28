<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/first.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String sql = "insert into books_info(bi_num,bi_image,bi_title,bi_type,bi_star,bi_credat,bi_desc) ";
	sql += "values(seq_books_bi_num.nextval,'/imgs/img.jpg',?,?,?,?,?)";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, request.getParameter("bi_title"));
	ps.setString(2, request.getParameter("bi_type"));
	ps.setString(3, request.getParameter("bi_star"));
	ps.setString(4, request.getParameter("bi_credat"));
	ps.setString(5, request.getParameter("bi_desc"));

	int result = ps.executeUpdate();
	if (result == 1) {
		out.println("등록이 완료되었습니다");
		con.commit();
%>
<form method="post" action="<%=rootPath%>/books/list.jsp">
	<button>확인</button>
</form>
<%
	}
%>