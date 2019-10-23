<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String[] hobbies = request.getParameterValues("hobby");
String hobby = "";
for(int i=0;i<hobbies.length;i++){
	hobby += hobbies[i] + ", ";
}
hobby = hobby.substring(0,hobby.length()-2);
String uiId = request.getParameter("ui_id");
String uiPwd = request.getParameter("ui_pwd");
String uiName = request.getParameter("ui_name");
String uiAge = request.getParameter("ui_age");
String uiEtc = request.getParameter("ui_etc");

String sql = "insert into user_info(UI_NUM,UI_ID,UI_PWD,UI_NAME,UI_AGE,UI_ETC,hobby)"
 + "values(seq_ui_num.nextval,?,?,?,?,?,?)";
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,uiId);
ps.setString(2,uiPwd);
ps.setString(3,uiName);
ps.setString(4,uiAge);
ps.setString(5,uiEtc);
ps.setString(6,hobby);
int result = ps.executeUpdate();
if(result==1){
	out.println("회원가입이 완료되었습니다");
	con.commit();
} else {
	out.println("가입에 실패했습니다");
	con.rollback();
}
%>