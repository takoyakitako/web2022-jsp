<%@page import="java.time.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");

Class.forName("com.mysql.jdbc.Driver"); //수정
String url = "jdbc:mysql://localhost:8889/ainadb";
String user = "root";
String pwd = "root";

String name = request.getParameter("name");
String title = request.getParameter("title");
String memo = request.getParameter("memo");

try (Connection conn = DriverManager.getConnection(url, user, pwd); 
	Statement stmt = conn.createStatement();

) {
	
	String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);

	stmt.executeUpdate(
	String.format("insert into board" + "(name,memo,title,regtime,hits)" + "values ('%s','%s','%s','%s',0)",
			name, memo, title, curTime));

	//conn.close();
} catch (Exception e) {
	e.printStackTrace();
	out.println( e.toString() );
}
%>
<script language=javascript>
	self.window.alert("입력한 글을 저장하였습니다.");
	location.href = "writeList.jsp";
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	

</body>
</html>