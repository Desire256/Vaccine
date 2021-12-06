/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author USER
 */
public class Show extends SimpleTagSupport {

    private String car1;
    private String car2;
    private String car3;
    private String car4;
    private String table;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
       
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
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
        Statement stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("SELECT * FROM " + table);
            
            out.println("<table border=3>"
              +"<tr>"
              +"<th>Name</th>"
              +"<th>Health Centre</th>"
              +"<th>Vaccine Name</th>"
              +"<th>Date</th>"
              +"</tr>");
            
            
            while(results.next()){
                //Display value
                
                out.print("<tr>"
                        +"<td>"+results.getString("full_name")+"</td>"
                        +"<td>"+results.getString("healthcentre_name")+"</td>"
                        +"<td>"+results.getString("vaccines_id")+"</td>"
                        +"<td>"+results.getString("booking_date")+"</td>"
                        +"</tr>");
                        
            
            }

            out.println("</table>");
        } catch (SQLException ex) {
            out.println(ex);
        }
            

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");

    }

    public void setCar1(String car1) {
        this.car1 = car1;
    }

    public void setCar2(String car2) {
        this.car2 = car2;
    }

    public void setCar3(String car3) {
        this.car3 = car3;
    }

    public void setCar4(String car4) {
        this.car4 = car4;
    }

    public void setTable(String table) {
        this.table = table;
    }
    
}
