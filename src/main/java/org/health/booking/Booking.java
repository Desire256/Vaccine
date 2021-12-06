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
import java.sql.SQLException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 *
 * @author USER
 */
public class Booking extends SimpleTagSupport {

    private String table;
    private String value1;
    private String value2;
    private String value3;
    private String value4;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
       // try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            
            
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
            String query = "INSERT INTO " + table + "(full_name,healthcentre_name,vaccines_id,booking_date) VALUES('" + value1 + "','" + value2 + "','" + value3 + "','" + value4 + "')";
            
            // String queryUpdate = "UPDATE " + table + " SET name="+ value1 + ",location="+value2+" WHERE id = " + where;
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.execute();       
            
        } catch (SQLException ex) {
            out.println(ex);
        }

            
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");

          //  JspFragment f = getJspBody();
            //if (f != null) {
              //  f.invoke(out);
            //}

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }

    public void setValue2(String value2) {
        this.value2 = value2;
    }

    public void setValue3(String value3) {
        this.value3 = value3;
    }
    public void setValue4(String value4) {
        this.value4 = value4;
    }
    
    
}
