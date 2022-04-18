<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"
    %>
    
<%
	//1. jdbc driver를 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	 String url = "jdbc:mariadb://localhost:3306/jihyeondb";
   String user = "jihyeon";
   String pwd = "1111";
   Connection con = DriverManager.getConnection(url, user, pwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행한다.
	String sql = "select * from login";
	Statement stmt = con.createStatement();
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DB 연동</title>
	
  
<body>

<div class="container">
<h2>사용자목록</h2>

	<table class="table table-striped">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
		<tr>
<%	
	//5. 반환된 데이터 출력
	while(rs.next()){
		String id = rs.getString("id");
		String name = rs.getString("name");
		String pwd2 = rs.getString("pwd");
%>
			<td><a href='updateForm.jsp?id=<%=id%>'><%=id %></a></td>
			<td><%=name %></td>
			<td><%=pwd %></td>
		</tr>			
	<%	}%>
	</table>
	

	
	<button class="btn btn-light" type="button" onclick="location.href='index.jsp'">돌아가기</button>
</div>
	
<%
	//6. 객체 해제
	rs.close();
	stmt.close();
	con.close();
	
	%>
</body>
</html>