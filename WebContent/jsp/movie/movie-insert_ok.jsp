<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String miNum = request.getParameter("mi_num");
String miName = request.getParameter("mi_name");
String miPrice = request.getParameter("mi_price");
String miDate = request.getParameter("mi_date");
miDate = miDate.replace("-","");
String miDesc = request.getParameter("mi_desc");
String miAge = request.getParameter("mi_age");
String miStarRate = request.getParameter("mi_star_rate");

out.println(miNum);
out.println(miName);
out.println(miPrice);
out.println(miDate);
out.println(miDesc);
out.println(miAge);
out.println(miStarRate);

String sql = "insert into movie_info(mi_num, mi_name, mi_price, mi_date, mi_desc, mi_age, mi_star_rate) ";
sql += "values('" + miNum + "', ";
sql += "'" + miName + "', ";
sql += "'" + miPrice + "', ";
sql += "'" + miDate + "', ";
sql += "'" + miDesc + "', ";
sql += "'" + miAge + "', ";
sql += "'" + miStarRate + "') ";
out.println(sql);
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
int result = stmt.executeUpdate(sql);
if(result==1) {
	out.println("정상적으로 영화 정보가 등록되었습니다");
	con.commit();
} else {
	out.println("등록에 실패했습니다");
	con.rollback();
}
%>