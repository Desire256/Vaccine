<%-- 
    Document   : health_center
    Created on : Dec 4, 2021, 1:02:54 PM
    Author     : AWORI BRIDGET DESIRE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/health.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>health_center.jsp</title>
    </head>
    <body>
        <vaccination:select table="health_centres" where="nmmm" displayformat="table" />
        
    </body>
</html>
