<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
%> 
 <%   
 //1.jdbc driver 등록
Class.forName("org.mariadb.jdbc.Driver");

//2. db와 연결(connection) 생성
String url ="jdbc:mariadb://localhost:3308/ainadb";
String user = "aina";
String passwd ="1111";

Connection con = DriverManager.getConnection(url, user, passwd);

//3. DB연동
String sql = "select id, name, pwd from login";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);

//4.결과 셋에서 데이터 추출하기
String id ="";
String name ="";
String pwd ="";

    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>DB 연결</title>
</head>
<body>
<table class="table table-striped">
	<tr>
		<th>id</th>
		<th>pwd</th>
		<th>name</th>
	</tr>
	<tr>
<%
	//5.결과 셋 확인 
	while(rs.next()){
	 
	id = rs.getString("id");
	pwd = rs.getString("pwd");
	name = rs.getString("name");
%>

	<td><a href="updateForm.jsp?id=<%=id %>"> <%=id %> </a></td>
	<td><%=pwd %></td>
	<td><%=name %></td>
	</tr>
	
<% } %>


</table>
<%
     rs.close();
	stmt.close();
	con.close();
%>
</body>
</html>