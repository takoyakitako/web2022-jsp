<%@page import="com.sun.tools.javac.Main"%>
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
	request.setCharacterEncoding("utf-8");
	String[] p = request.getParameterValues("programing");
	String[] h = request.getParameterValues("hobby");
	
	/* 同じこと
	 */
	for(int i = 0; i<p.length; i++){
		out.println("관심언어:"+p[i]);
	}
	out.println( "<br>" );
	
	for(int i = 0; i<h.length; i++){
		out.println("취미:"+h[i]);
	}
	
	/* 
	for(String s : h){
		out.println(h);
	}  */
	
%>
</body>
</html>