<%@page import="com.ewaste.dao.EwasteCenterDaoImple"%>
<%@page import="com.ewaste.dao.EwasteCenterDao"%>
<%
   String p1=request.getParameter("centerId");   //geting centerId
   int centerId=Integer.parseInt(p1);               //converting centerId to intger
   EwasteCenterDao edao=new EwasteCenterDaoImple();
   edao.deleteCenter(centerId);
   response.sendRedirect("center_list.jsp");        //new list is called
   
%>