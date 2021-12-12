<%@page import="com.ewaste.dao.UserDaoImple"%>
<%@page import="com.ewaste.dao.UserDao"%>
<%@page import="com.ewaste.dto.User"%>
<%@page import="java.util.List"%>
<jsp:useBean id="user" class="com.ewaste.dto.User" scope="session"></jsp:useBean>



<%
    User user=(User)session.getAttribute("user"); //downcasting and getting session object//
    if(user==null || user.getEmailId()==null){
        response.sendRedirect("logout.jsp");
    }else{
        
UserDao udao = new UserDaoImple();
List<User> ulist = udao.userlist();
%>



<html>
 <head>
  <title>User List Page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
      .even{
          background-color: pink;
          text-align: center;
      }
    .odd{
          background-color: powderblue;
          text-align: center;
      }
      
  </style>
 </head>
 <body>
  <div>
   <jsp:include page="cache_control_page.jsp"></jsp:include>
   <form action="center_add.jsp" method="post">
    <table border="1" align="center">
     <thead>
      <tr>
       <th colspan="6">User List</th>
     </tr>
     <tr>
         <th>User Name</th>
     </tr>
     </thead>
     <tbody>
         
      <%
          int i=0;
        for(User uc:ulist){
            i++;
      %>
      <tr class='<%=(i%2==0)?"even":"odd"%>'>       
       <td><%=uc.getEmailId()%></td>
      </tr>
      <% } %>
      <tr>
     <td style="text-align: right" colspan="6" ><a href="admin_home.jsp">Back</a></td>
      </tr>
     </tbody>
    </table>    
   </form>
  </div>
 </body>
</html>
<%
    }
%>