<%-- 
    Document   : Registrationform
    Created on : Dec 4, 2021, 4:42:01 PM
    Author     : AWORI BRIDGET DESIRE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
    </head>
    <body>
       <div>
            <form action="inserting_health_center.jsp" method="post">
        <table>
            <tr>
                <td><font color="black">name: </font></td>
                <td><input type ="text" name="name"></td>
            </tr>
             <tr>
                 <td><font color="black">location: </font></td> 
                 <td><input type ="text" name="location"></td>
            </tr>
             <tr>
                 <td><font color="black"> vaccines_received: </font></td> 
                 <td><input type ="text" name="vaccines_received"></td>
            </tr>
             <tr>
                 <td><font color="black">available_vaccines: </font></td> 
                 <td><input type ="text" name="available_vaccines"></td>
            </tr>
            <tr>

                <td><p id="submission"><input type="submit" value="submit"></p></td>
               
        </tr>
              
        </table>
        </form>
           
          
                  
                </div>
                

                
    </body>
</html>
