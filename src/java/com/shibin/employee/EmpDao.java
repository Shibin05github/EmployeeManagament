/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shibin.employee;

/**
 *
 * @author Administrator
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class EmpDao {
    Connection con;

    public EmpDao(Connection con) {
        this.con = con;
    }
    
    
    //add Employee information to database
    public boolean addBook(Employee emp){
        boolean test = false;
        
        try{
            /*String query =  "insert into employee.empdetails (1,empFN,empLN,empAddr,empState,empCountry,empZipCode,empDpt) values(?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, emp.getFirstName());
            pst.setString(2, emp.getLastName());
            pst.setString(3, emp.getAddress());
            pst.setString(4, emp.getState());
            pst.setString(5, emp.getCountry());
            pst.setString(6, emp.getZipCode());
            pst.setString(7, emp.getDept());            
            pst.executeUpdate();*/
            Statement stmt=con.createStatement();  
            stmt.executeQuery("insert into employee.empdetails values(2,'as','czx','ds','asd','cxzc','cx','fd')");  
            //String query =  "insert into employee.empdetails (1,"asd","czx","ds","asd","cxzc","cx","fd")";
            test= true;

        }catch(SQLException e){            
            e.printStackTrace();
        }
        return test;
    }
    
//    retrieve the emp details from databse
    public List<Employee> getAllBooks(){
        List<Employee> emp = new ArrayList<>();
        
        try{
            
            String query = "select * from employeedetails";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int eid = rs.getInt("eid");
                String empFN = rs.getString("empFN");
                String empLN = rs.getString("empLN");
                String empAddr = rs.getString("empAddr");
                String empState = rs.getString("empState");
                String empCountry = rs.getString("empCountry");
                String empZipCode = rs.getString("empZipCode");
                String empDpt = rs.getString("empDpt");
                
                Employee row = new Employee(eid,empFN,empLN,empAddr,empState,empCountry,empZipCode,empDpt);
                emp.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return emp;
    }
    
    
//    eidt emp information
    public void editBookInfo(Employee emp){
        
        try{
            String query = "update empdtails set empFN=?, empLN=?, empAddr=?, empState=?, empCountry=?, empZipCode =?, empDpt=? where eid=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, emp.getFirstName());
            pt.setString(2, emp.getLastName());
            pt.setString(3, emp.getAddress());
            pt.setString(4, emp.getState());
            pt.setString(5, emp.getCountry());
            pt.setString(6, emp.getZipCode());
            pt.setString(7, emp.getDept()); 
            pt.setInt(8, emp.getEmpId());
            
            pt.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        
        
    }
    
//    get single emp information in edit page
    public Employee getSingleBook(int id){
        Employee bk = null;
        
        try{
            String query = "select * from employeedetails where eid=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs= pt.executeQuery();
            
            while(rs.next()){
                int eid = rs.getInt("eid");
                String empFN = rs.getString("empFN");
                String empLN = rs.getString("empLN");
                String empAddr = rs.getString("empAddr");
                String empState = rs.getString("empState");
                String empCountry = rs.getString("empCountry");
                String empZipCode = rs.getString("empZipCode");
                String empDpt = rs.getString("empDpt");
                bk = new Employee(eid,empFN,empLN,empAddr,empState,empCountry,empZipCode,empDpt);
            }
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return bk;
    }
    
    
//    delete Employee from database
    
    
    public void deleteBook(int id){
        try{
            
           String query= "delete from employeedetails where eid=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
}