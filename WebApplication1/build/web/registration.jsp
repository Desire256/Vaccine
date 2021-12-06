<%-- 
    Document   : reqistration
    Created on : Dec 6, 2021, 10:24:14 AM
    Author     : olivia uwimaana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <div>
        <form action="patients.jsp" method="post">
                <label>nin</label><br/>
                <input type="text" name="nin"><br/>
                <label>name</label><br/>
                <input type="text" name="name"><br/>
                <label>health_centres:
                   <select name="centres">
                            <option value="MULAGO HOSPITAL">MULAGO HOSPITAL</option>
                            <option value="UNIVERSITY HOSPITAL">UNIVERSITY HOSPITAL</option>
                            <option value="NORVIK HOSPITAL">NORVIK HOSPITAL</option>
                            <option value="CASE HOSPITAL">CASE HOSPITAL</option>
                            <option value="AAR HOSPITAL">AAR HOSPITAL</option>
                         </select>
                </label><br/>
                <label>date_of_administration</label><br/>
                <input type="date" name="admin"><br/>
                <label>batch_number</label><br/>
                <input type="text" name="batch"><br/>
                <label>vaccine</label><br/>
                <input type="text" name="vaccine"><br/>

                <p id="submission">
                    <input type="submit" value="submit"><br/>
                </p>
                
                
            </form></div>
            
    </body>
</html>
