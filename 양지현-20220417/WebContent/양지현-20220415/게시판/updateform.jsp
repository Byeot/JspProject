<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*" %>
    <%
    
    String num = request.getParameter("num"); //id가 전달됐다는 이야기는 DB연동
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    //1. jdbc driver를 로드한다.
    Class.forName("org.mariadb.jdbc.Driver");
    
    //2. db와의 연결(connection)을 생성한다.
    String url = "jdbc:mariadb://localhost:3306/jihyeondb";
    String user = "jihyeon";
    String pwd = "1111";
    Connection con = DriverManager.getConnection(url, user, pwd);
    
    //3. 연결 후 그 통로를 통해 sql문을 실행한다.
    String sql = "select * from board where title=?";
   PreparedStatement pstmt = con.prepareStatement(sql);
   pstmt.setString(1,title);
   
    
    //4. SQL 실행
    ResultSet rs = pstmt.executeQuery();
    
    
    String name = "";
    String pwd2 = "";
  //5. 반환된 데이터 출력
    while(rs.next()){
       
       num = rs.getString("num");
    }
  
  //6.객체해지
    rs.close();
    pstmt.close();
    con.close();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>로그인</h2>
	<form name="login" action="updatepro.jsp" method="post">
	 	번호 : <input type="text" name="num" value=<%=num %> > <br>
		이름 : <input type="text" name="title" value=<%=title%> > <br>
		내용 : <input type="password" name="content" value=<%=content%>> <br>
		
		<input type="submit" value="변경저장">
		<button type="button"  onclick="location.href='list.jsp'">목록조회</button>
		<a href="delete.jsp?id=<%=title%>"><button type="button">삭제</button></a>
	</form>
</body>
</html>
</html>