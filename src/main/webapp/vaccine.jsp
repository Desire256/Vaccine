<%-- 
    Document   : vaccine
    Created on : Dec 4, 2021, 1:34:43 PM
    Author     : JOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="WEB-INF/vaccine.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vaccine</title>
         
    </head>
    <body>
        <h3><font-color="green">VACCINES AVAILABLE </font-color></h3>
        <vaccination:select table="vaccine_inventory" 
                            where="" 
                            displayformat="table" />
    </body>
</html>
