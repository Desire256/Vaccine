<%-- 
    Document   : VaccineRegistration
    Created on : Dec 4, 2021, 3:54:24 PM
    Author     : JOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/vaccine.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccine Registration</title>
   
        <vaccination:insert table="vaccine_inventory"
                  value1='<%= request.getParameter("name") %>'
                  value2='<%= request.getParameter("number_of_doses") %>'
                  value3='<%= request.getParameter("status") %>'
                  value4='<%= request.getParameter("vaccine_distributed") %>'/>
                  
        <jsp:include page="vaccine.jsp" />       
      </body>
</html>
