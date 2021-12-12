<%@page import="com.ewaste.dto.User"%>
<%
    User user=(User)session.getAttribute("user"); //downcasting and getting session object//
    if(user==null || user.getEmailId()==null){
        response.sendRedirect("logout.jsp");
    }else{
session.setAttribute("centerId",request.getParameter("centerId"));
%>
<html>
 <head>
  <title>Center Upload Page</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head>
 <body>
     <jsp:include page="cache_control_page.jsp"></jsp:include>
  <div>
      <form action="UploadServlet" method="post" enctype="multipart/form-data">
    <table border="0" align="center">
     <thead>
      <tr>
       <th colspan="2">Center Upload Image form</th>
     </tr>
     </thead>
     <tbody>
      <tr>
       <td>Select Image: </td>
       <td>
       
       <input type="file" name="centerImage" /></td>
      </tr>
      <tr>
       <td><a href="center_list.jsp" >Back</a></td>
       <td><input type="submit" value="Upload" /></td>
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