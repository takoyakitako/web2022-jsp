<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));

String memo = "";
String title = "";
String name = "";
String regtime = "";
int hits = 0;

Class.forName("com.mysql.jdbc.Driver"); //수정
String url = "jdbc:mysql://localhost:8889/ainadb";
String user = "root";
String pwd = "root";

try (Connection conn = DriverManager.getConnection(url, user, pwd);
		Statement stmt = conn.createStatement();

		ResultSet rs = stmt.executeQuery("select * from board1 where num" + num);

) {
	if (rs.next()) {
		memo = rs.getString("memo");
		title = rs.getString("title");
		name = rs.getString("name");
		regtime = rs.getString("regtime");
		hits = rs.getInt("hits");

		title = title.replace(" ", "&nbsp");
		memo = memo.replace(" ", "&nbsp").replace("\n", "<br>");

		stmt.executeUpdate("update board1 set hits = hits+1 where num=" + num);
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<table>
		<tr>
			<th>제목</th>
			<td><%=title%></td>
		</tr>
		
		<tr>
			<th>작성자</th>
			<td><%=name%></td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td><%=memo%></td>
		</tr>
	</table>
	<input type="button" value="목록보기" onclick="location.href.writeList.jsp">












</body>
</html>