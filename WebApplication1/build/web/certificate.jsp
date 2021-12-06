<%-- 
    Document   : certificateView
    Created on : Dec 5, 2021, 8:32:05 PM
    Author     : Julius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certificate</title>
    </head>
    <body>
        <h1> COVID-19 CERTIFICATE</h1>
       
        <%
            String name = request.getParameter("nin");
            String nin = request.getParameter("name");
            String health_centres = request.getParameter("centres");
            String date_of_administration = request.getParameter("admin");
            String batch_number = request.getParameter("batch");
            String vaccine = request.getParameter("vaccine");
            
//            out.println("batch number: "+batchnumber);
        
        %>
        
<!--             bean to display certificate-->
        <jsp:useBean id="v" class="org.health.administration.Certificate"></jsp:useBean>
        
        
        <!--        set the value of the student-->
        <jsp:setProperty name="v" property="nin" value="${nin}"></jsp:setProperty>
        <jsp:setProperty name="v" property="name" value="${name}"></jsp:setProperty>
        <jsp:setProperty name="v" property="centres" value="${centres}"></jsp:setProperty>
        <jsp:setProperty name="v" property="admin" value="${admin}"></jsp:setProperty>
        <jsp:setProperty name="v" property="batch" value="${batch}"></jsp:setProperty>
        <jsp:setProperty name="v" property="vaccine" value="${vaccine}"></jsp:setProperty>
        
<!--        get the value from jbean class-->
        <table>
            <tr>
                <td>nin:</td>
                <td><jsp:getProperty name="v" property="nin"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>name:</td>
                <td><jsp:getProperty name="v" property="name"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Health_Centre:</td>
                <td><jsp:getProperty name="v" property="centres"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Date_of_Administration:</td>
                <td><jsp:getProperty name="v" property="admin"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Batch_Number:</td>
                <td><jsp:getProperty name="v" property="batch"></jsp:getProperty></td>
            </tr>
            <tr>
                <td>Vaccine_Administered:</td>
                <td><jsp:getProperty name="v" property="vaccine"></jsp:getProperty></td>
            </tr>
            
             <tr>
                    <td></td>
                    <td><button><a href="/WebApplication1/register.jsp">BACK TO VACCINATION PAGE</a></button></td>
                    <td></td>
              </tr>
        </table>
        
         <%@taglib uri="/WEB-INF/vaccineadministration.tld" prefix="vaccination" %>
         <a:Certificate nin="${nin}" name="${name}" health_centres="${centres}" date_of_administration="${admin}" 
             batch_number="${batch}" vaccine="${vaccine}"></a:Certificate>
             
         
    </body>
</html>
