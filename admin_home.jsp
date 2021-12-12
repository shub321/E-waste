<%@page import="com.ewaste.dto.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
User user=(User)session.getAttribute("user"); //downcasting and getting session object//
    if(user==null || user.getEmailId()==null){
        response.sendRedirect("logout.jsp");
    }else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
    </head>
    <body>
        <jsp:include page="cache_control_page.jsp"></jsp:include>
        <h1>Admin</h1>
        <a href="center_add_from.jsp" >ADD e-waste Center</a>
        <a href="center_list.jsp" >Show e-waste Center</a>
        <a href="user_list.jsp" >Show User Lists</a>
        
    </body>
</html>
<% }
%>