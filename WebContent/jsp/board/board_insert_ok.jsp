<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String biTitle = request.getParameter("bi_title");
	String biUser = request.getParameter("bi_user");
	String biContent = request.getParameter("bi_content");

	String sql = "insert into board_info(bi_num,bi_title,bi_user,bi_content,bi_credat,bi_cretim,bi_moddat,bi_modtim)"
			+ "values(seq_ui_num.nextval,?,?,?,to_char(SYSDATE,'YYYYMMDD'),TO_CHAR(SYSDATE,'HH24MISS'),to_char(SYSDATE,'YYYYMMDD'),TO_CHAR(SYSDATE,'HH24MISS'))";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, biTitle);
	ps.setString(2, biUser);
	ps.setString(3, biContent);
	int result = ps.executeUpdate();
	if (result == 1) {
		out.println("작성이 완료되었습니다");
		con.commit();
%>
<form method="post" action="/bdi-web/jsp/board/board_list.jsp">
	<button>확인</button>
</form>
<%
	} else {
		out.println("작성에 실패했습니다");
		con.rollback();
	}
%>