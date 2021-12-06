<%-- 
    Document   : Edit_health_centre
    Created on : Dec 4, 2021, 6:22:25 PM
    Author     : AWORI BRIDGET DESIRE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE HEALTH CENTRE</title>
    </head>
    <body>
        <div>
           <form action="edit_hc.jsp" method="post">
               <input type ="text" name="id" value='<%= request.getParameter("id") %>' hidden><br>
        
            
               <font color="black">name: </font><br>
                <input type ="text" name="name" value='<%= request.getParameter("name") %>'><br>
            
             
                <font color="black">location: </font> <br>
                 <input type ="text" name="location" value='<%= request.getParameter("location") %>'><br>
            
            
                 <font color="black"> vaccines_received: </font> <br>
                 <input type ="text" name="vaccines_received" value='<%= request.getParameter("vaccines_received") %>'><br>
            
             
                 <font color="black">available_vaccines: </font><br>
                 <input type ="text" name="available_vaccines" value='<%= request.getParameter("available_vaccines") %>'><br>
            
            

                    <p id="submission"><input type="submit" value="submit"></p>
               
        
              
        
        </form>
                   
            
            
            
            
            
            
            
        </div> 
        
        
        
        
        
        
        
        
    </body>
</html>
