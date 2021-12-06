<%-- 
    Document   : patients
    Created on : Dec 6, 2021, 10:16:05 AM
    Author     : olivia uwimaana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/vaccineadministration.tld" prefix="vaccination" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <vaccination:insert table="vaccine_administration"
                            value1='<%= request.getParameter("nin") %>'
                            value2='<%= request.getParameter("name") %>'
                            value3='<%= request.getParameter("centres") %>'
                            value4='<%= request.getParameter("admin") %>'
                            value5='<%= request.getParameter("batch") %>'
                            value6='<%= request.getParameter("vaccine") %>'
                                              />
    </body>
</html>
