/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.vaccine;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author JOAN
 */
public class updating extends SimpleTagSupport {

    private String table;
    private String where;
    private String newvalue1;
    private String newvalue2;
    private String newvalue3;
    private String newvalue4;
   

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException ex){
        out.println(ex);
    }
        try{
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/vaccine",
                    "root",
                    ""
                );
          
            String queryUpdate = "UPDATE " + table + " SET name ='"+ newvalue1 + "',status='"+newvalue2+"',number_of_doses='"+newvalue3+"',vaccine_distributed="+newvalue4+" WHERE id= " + where;
            PreparedStatement preparedStmt = con.prepareStatement(queryUpdate);
            preparedStmt.execute();
            
            
            } catch (SQLException ex) {
            Logger.getLogger(updating.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        }catch (SQLException ex) {
            out.println(ex);
        }
        
    }
    public void setTable(String table) {
        this.table = table;
    }

    public void setWhere(String where) {
        this.where = where;
    }
    
    public void setNewValue1(String newvalue1) {
        this.newvalue1 = newvalue1;
    }
    public void setNewValue2(String newvalue2) {
        this.newvalue2 = newvalue2;
    }
    public void setNewValue3(String newvalue3) {
        this.newvalue3 = newvalue3;
    }
     public void setNewValue4(String newvalue4) {
        this.newvalue4 = newvalue4;
    }
    
    
}
