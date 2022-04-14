<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import = "java.sql.*"
    %>
    
<%

	//한글처리
	request.setCharacterEncoding("utf-8");

	//웹브라우저에 전달된  정보
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	
	
	//1. 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	
	//2. 커넥션 연결
	 String url = "jdbc:mariadb://localhost:3306/jihyeondb";
   String user = "jihyeon";
   String passwd = "1111";
   Connection con = DriverManager.getConnection(url, user, passwd);
	
	
	//3. SQL문 준비
	//String sql = "insert into login(id,pwd) values('"+id +"','" +pwd + "')";
	String sql = "update login set name=?, pwd=? where id=?";
	

	
	
	//4. SQL문 실행
	//Statement stmt = con.createStatement();
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(3,id);
	pstmt.setString(1,name);
	pstmt.setString(2,pwd);
	
	
	//int i = stmt.executeUpdate(sql);
	int i = pstmt.executeUpdate();
	
	
	//5. 객체 해제
   pstmt.close();
   con.close();
   
   response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
</body>
</html>