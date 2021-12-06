/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.vaccine;

import static com.sun.tools.javac.tree.TreeInfo.name;
import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import static javax.ws.rs.core.Response.status;
import static javax.ws.rs.core.Response.status;

/**
 *
 * @author JOAN
 */
public class Vaccine extends SimpleTagSupport {

    private String table;
    private String where;
    private String displayformat;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try{
           Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
           out.println(ex);
        }
        
        try{
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/vaccine",
                    "root",
                    ""
                );
            
            Statement st = con.createStatement();
            ResultSet results = st.executeQuery("SELECT * FROM " + table);
            out.print("<table border=3 style=font-style");
            out.print("<tr>"
                    
                    + "<th>id</th>"
                   
                    + "<th>Name</th>"
                   
                    + "<th>number_of_doses</th>"
                    
                    + "<th>status</th>"
                   
                    + "<th>vaccine_distributed</th>"
                    
                    + "<th>Edit</th>"
                    
                    + "</tr>");
           
            while(results.next()){
                String id = results.getString("id");
                String name = results.getString("name");
                String number_of_doses = results.getString("number_of_doses");
                String status = results.getString("status");
                String vaccine_distributed = results.getString("vaccine_distributed");
               
                out.println("<tr>"
                        + "<td>"+id+"</td>"
                        + "<td>"+name+"</td>"
                        + "<td>"+number_of_doses+"</td>"
                        + "<td>"+status+"</td>"
                        + "<td>"+vaccine_distributed+"</td>"
                        + "<td>"+"<a href='update.jsp?id="+"</td>");
                        
               
                out.println("<a href='update.jsp?id="+

                        results.getString("id")+"&name="+
                        results.getString("name")+"&status="+
                        results.getString("number_of_doses")+"&status="+
                        results.getString("status")+"&status="+
                        results.getString("vaccine_distributed")+"'>edit</a>");
            }
            
          out.println("</table>");
        } catch (SQLException ex) {
            out.println(ex);
        }
        
       
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public void setDisplayformat(String displayformat) {
        this.displayformat = displayformat;
    }
    
}
