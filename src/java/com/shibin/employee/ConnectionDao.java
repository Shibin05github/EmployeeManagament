/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shibin.employee;
import java.sql.*;
/**
 *
 * @author Administrator
 */
public class ConnectionDao {
    private static Connection con;

    public static Connection getCon() throws SQLException {
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            //con=DriverManager.getConnection("jdbc:mysql://localhost:3307/employee","root","Mpassword@1454");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/employee?zeroDateTimeBehavior=convertToNull","root","Mpassword@1454");            
            con.getCatalog();
            
        }catch (Exception ex) {
           ex.printStackTrace();
            
        } 
        return con;
    }
}

