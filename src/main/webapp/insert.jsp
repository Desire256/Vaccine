<%-- 
    Document   : health_center
    Created on : Dec 4, 2021, 1:02:54 PM
    Author     : AWORI BRIDGET DESIRE
--%>
<jsp:include page="booking.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytags" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <vaccination:Booking table="booking" value1='<%= request.getParameter("name") %>' value2='<%= request.getParameter("healthCenter") %>' value3= '<%= request.getParameter("vaccine")%>' value4= '<%= request.getParameter("date")%>' />
        
       
      
    </body>
</html>
