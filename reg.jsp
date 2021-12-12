<%@page import="com.ewaste.dao.UserDaoImple"%>
<%@page import="com.ewaste.dao.UserDao"%>
<jsp:useBean id="user" class="com.ewaste.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>

<%
 UserDao dao = new UserDaoImple();
 dao.register(user);
 response.sendRedirect("login_form.jsp");
%>