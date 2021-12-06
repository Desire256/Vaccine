<%-- 
    Document   : update
    Created on : Dec 4, 2021, 6:16:46 PM
    Author     : JOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updating table</title>
    </head>
    <body>
         <div class="page-wrapper">
       
        
         
        <div class="container-fluid">
         <div class="bg-color-red"> 
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                    <h2 class="card-title mb-1"><font color="green"><left-align>VACCINE UPDATE</font></left-align></h2>
                </div>
                  
                </div>
               
            </div>
          </div>
         </div>
           <table>
                <form action="updating.jsp" method="post"> 
                         
                          <tr>
                              <td><label for="id">name</label></td>
                              <td><input type ="text" name="name" value='<%=request.getParameter("name") %>'></td>
                               
                          </tr>       

              
                          <tr>
                              <td><center><label for="inputName">number_of_doses</label></center></td>
                              <td><input type ="text" name="status" value='<%=request.getParameter("number_of_doses") %>'></td>
                               
                          </tr>
                          
                          <tr>
                              <td><center><label for="inputName">status</label></center></td>
                              <td><input type ="text" name="status" value='<%=request.getParameter("status") %>'></td>
                               
                          </tr>
                                            
                          <tr>
                              <td><label for="inputName">vaccine_distributed</label></td>
                              <td><input type ="text" name="vaccine_distributed" value='<%=request.getParameter("vaccine_distributed") %>'></td>
                                                      
                          </tr>
                          <tr>
                              <td><p id="submission"><input type="submit" value="update"></p></td>
                          </tr>
             
            </table>
             
          </form>
    </body>
</html>
