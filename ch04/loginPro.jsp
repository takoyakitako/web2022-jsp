<%@page import="org.apache.catalina.filters.SetCharacterEncodingFilter"%>
<%@page import="java.time.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
   %>
 <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   당신의 아아디는 <%=id %> 이고 
   암호는 <%=pwd %>입니다
</body>
</html>