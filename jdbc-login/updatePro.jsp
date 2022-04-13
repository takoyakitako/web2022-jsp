<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	//1.jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와 연결(connection) 생성
	String url ="jdbc:mariadb://localhost:3308/ainadb";
	String user = "aina";
	String passwd ="1111";

	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3. DB연동
	String sql = "update login set name=?, pwd=? where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, pwd);
	pstmt.setString(3, id);
	
	int i = pstmt.executeUpdate();//반환 데이터 타입이 int

	pstmt.close();
	con.close();
	
	//response.sendRedirect("list.jsp");
%>

<script>
	let ans = alert("변경되었습니다");
	if (!ans){
		location.href='list.jsp'
	}
	
</script>

