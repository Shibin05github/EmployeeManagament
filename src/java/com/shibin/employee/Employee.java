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
public class Employee 
{
    int empId;
    String firstName;
    String lastName;
    String address;
    String state;
    String country;
    String zipCode;
    String dept;

    public Employee() {
    }

    public Employee(int id, String firstName, String lastName, String address, String state, String country, String zipCode, String dept ) {
        this.empId = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.state = state;
        this.country = country;
        this.zipCode = zipCode;
        this.dept = dept;
    }

    public Employee(String firstName, String lastName, String address, String state, String country, String zipCode, String dept) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.state = state;
        this.country = country;
        this.zipCode = zipCode;
        this.dept = dept;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
   
    @Override
    public String toString() {
        return "Employee{" + "empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", address=" + address + ", state=" + state + ", country=" + country + ", zipCode=" + zipCode + ", dept=" + dept + '}';
    }
    
    
    
}
