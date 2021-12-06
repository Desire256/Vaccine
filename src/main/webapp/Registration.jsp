<%-- 
    Document   : Registration
    Created on : Dec 4, 2021, 4:48:38 PM
    Author     : JOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="assets/images/vaccine.png"
    />
        <div class="auth-box bg-white border-top border-primary">
            <div class="text-center pt-3 pb-3">
              <span class="db">
                <img src="assets/images/logo.png" alt="logo"
              /></span>
            </div>
        </div>
            
    </head>
    <body>
        <div class="page-wrapper">
       
        
         
      
                <div class="card-body">
                    <h2 class="card-title mb-1"><font color="green"><left-align>VACCINE REGISTRATION</font></left-align></h2>
                </div>
               
            
         </div>
           <table>
                      <form action="VaccineRegistration.jsp" method="post"> 
                         
              <div class ="form-group col-md-12">
                          <tr>
                              <td><left-align><label for="inputName">name</label></left-align></td>
                              <td><input name="name" type="name" ></td>
                               
                          </tr>       

              </div>
                          <tr>
                              <td><left-align><label for="inputName">number_of_doses</label></left-align></td>
                              <td><input name="number_of_doses" type="name" ></td>
                               
                          </tr>
                          
                           <tr>
                              <td><left-align><label for="inputName">status</label></left-align></td>
                              <td><input name="status" type="name" ></td>
                               
                          </tr>
                           <tr>
                              <td><left-align><label for="inputName">vaccine_distributed</label></left-align></td>
                              <td><input name="vaccine_distributed" type="name" ></td>
                               
                          </tr>
             
           
            </table>
            <div class="col-3">
                            <div class="form-group">
                                <div class="pt-3 d-grid">
                                    <left-align><button
                                        class="btn btn-block btn-lg btn-info"
                                        type="submit"
                                        >
                                            Register
                                        </button></left-align>
                                </div>
                            </div>
            </div>
        <jsp:include page="vaccine.jsp" />
        
        
        
          </form>
    </body>
</html>
