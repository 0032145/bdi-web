<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Map<String,String[]> paramMap = request.getParameterMap();
Iterator<String> it = paramMap.keySet().iterator();
// Set에서 Iterator를 함
while(it.hasNext()){
	String key = it.next();
	String[] values = paramMap.get(key);
	out.println("key[" + key + "]:");
	for(int i=0;i<values.length;i++){
		out.println(values[i] + ",");
	}
	out.println();
}
// 이걸 알아야 request 구조를 이해할수있음
%>