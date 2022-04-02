<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   request.setCharacterEncoding("utf-8");
   
  String title = request.getParameter("title");
	String content = request.getParameter("content");
	
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	제목: <%=title %><br>
	내용 : <%=content %><br>

	

</body>
</html>