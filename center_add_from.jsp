<%@page import="com.ewaste.dto.User"%>
<%User user=(User)session.getAttribute("user"); //downcasting and getting session object//
    if(user==null || user.getEmailId()==null){
        response.sendRedirect("logout.jsp");
    }else{%>
<html>
 <head>
  <title>Center Add Page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head>
 <body>
     <jsp:include page="cache_control_page.jsp"></jsp:include>
  <div>
   <form action="center_add.jsp" method="post">
    <table border="0" align="center">
     <thead>
      <tr>
       <th colspan="2">Center Add Form</th>
     </tr>
     </thead>
     <tbody>
      <tr>
       <td>E-waste Center Name:</td>
       <td><input type="text" name="centerName" /></td>
      </tr>
      <tr>
       <td>Address: </td>
       <td>
           <textarea name="address"></textarea>
       </td>
      </tr>
      <tr>
       <td>Contact No:</td>
       <td><input type="text" name="contactNo" /></td>
      </tr>
      <tr>
       <td><a href="admin_home.jsp" >Back</a></td>
       <td><input type="submit" value="Add" /></td>
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