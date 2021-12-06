/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.administration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
/**
 *
 * @author olivia uwimaana
 */
public class VaccineHandler extends SimpleTagSupport {

    private String table;
    private String value1;
    private String value2;
    private String value3;
    private String value4;
    private String value5;
    private String value6;

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
        }
        catch(ClassNotFoundException ex){
            out.println(ex);
        }
        try{
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root", "");
            String query="INSERT INTO " + table +"(nin,name,health_centres,date_of_administration,batch_number,vaccine) VALUES('"+value1 +"','"+ value2+"','"+value3+"','"+value4 +"','"+ value5+"','"+value6+"');";
            
            PreparedStatement preparedStmt=con.prepareStatement(query);
            preparedStmt.execute();
            
            out.println("successfully registered");
        } catch (SQLException ex) {
           out.println(ex);
        }
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

    public void setValue5(String value5) {
        this.value5 = value5;
    }
     public void setValue6(String value6) {
        this.value6 = value6;
    }
    
}
