<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
     
   <%
  request.setCharacterEncoding("utf-8");
   
   String id = request.getParameter("id");
   String password = request.getParameter("pw");
   String name = request.getParameter("name");
   
   String[] sex = request.getParameterValues("sex");
   String birthyy = request.getParameter("birth_yy");
   

   String[] birthmm = request.getParameterValues("birth_mm");
  
   String birthdd = request.getParameter("birth_dd");
   String email1 = request.getParameter("email_1");
   
   
   String[] email2 = request.getParameterValues("email_2");
   String phone = request.getParameter("phone");
   String address = request.getParameter("address");

   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table>
            <tr>
                <td>아이디</td>
                <td><%=id %></td>
            </tr>
                        
            <tr>
                <td>비밀번호</td>
                <td><%=password %></td>
            </tr>
                    
            <tr>
                <td>이름</td>
                <td><%=name %></td>
            </tr>
                    
            <tr>
                <td>성별</td>
                <td>
                <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String s : sex){
                        out.println(s);
                    }
                %>
                </td>
            </tr>
                    
            <tr>
                <td>생일</td>
                <td>
                <%=birthyy %>년 
                <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String mm : birthmm){
                        out.println(mm);
                    }        
                %>월 <%=birthdd %>일
                </td>
            </tr>
                    
            <tr>
                <td>이메일</td>
                <td>
                    <%=email1 %>
                    <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String e : email2){
                        out.println("@"+e);
                    }        
                    %>
                </td>
            </tr>
                    
            <tr>
                <td>휴대전화</td>
                <td><%=phone %></td>
            </tr>
            <tr>
                <td>주소</td>
                <td>
                    <%=address %>
                </td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="확인">
    </div>

</body>
</html>