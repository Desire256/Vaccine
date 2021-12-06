<%-- 
    Document   : updating
    Created on : Dec 6, 2021, 12:44:27 PM
    Author     : JOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/vaccine.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <vaccination:updating table="vaccine_inventory"
                            where="" 
                           
                            newvalue1='<%= request.getParameter("name")%>'
                            newvalue2='<%= request.getParameter("number_of_doses")%>'
                            newvalue3='<%= request.getParameter("status")%>'
                            newvalue4='<%= request.getParameter("vaccine_distributed")%>'
        />                                         
    </body>
</html>
