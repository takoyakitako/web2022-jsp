<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");

//1.jdbc driver 등록
Class.forName("org.mariadb.jdbc.Driver");

//2. db와 연결(connection) 생성
String url ="jdbc:mariadb://localhost:3308/ainadb";
String user = "aina";
String passwd ="1111";

Connection con = DriverManager.getConnection(url, user, passwd);

//3. DB연동
String sql = "select id, name, pwd from login where id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs = pstmt.executeQuery();

//4.결과 셋에서 데이터 추출하기
rs.next();
String name =rs.getString("name");
String pwd =rs.getString("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
 <form action="updatePro.jsp" method="post">
 	아이디 : <input type="text" name="id" value="<%=id %>"><br>
 	이름 : <input type="text" name="name" value="<%=name %>"><br>
 	암호 : <input type="password" name="pwd" value="<%=pwd %>"><br>
 	<input type="submit" value="변경 저장">
 	<button type="button" onclick="location.href='delete.jsp?id=<%=id%>'">삭제</button>
 	<button type="button" onclick="location.href='list.jsp'">사용자 조회</button>
 </form>
</body>
</html>