<%-- 
    Document   : index
    Created on : 22 Feb, 2021, 6:28:57 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page import="com.shibin.employee.Employee"%>
<%@page import="com.shibin.employee.ConnectionDao"%>
<%@page import="com.shibin.employee.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    EmpDao bookData = new EmpDao(ConnectionDao.getCon());
    List<Employee> book = bookData.getAllBooks();
    request.setAttribute("BOOKS_LIST", book);
%>


<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>CRUD Application</title>

        <style>
            .inner{
                margin: 15px 0;
            }
        </style>
    </head>
    <body>
        <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Employee Management</a>
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
</nav>
        </div>
<div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-3">
                        <h3>
Input Employee Information</h3>
<form action="AddEmployeeServlet" method="post">
                            <div class="form-group">
                                <label>First Name</label>
                                <input class="form-control" name="empfn" place-holder="First name" required>
                            </div>
<div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control" name="empln" place-holder="Last Name" required>
                            </div>
<div class="form-group">
                                <label>Address</label>
                                <input class="form-control" name="empaddr" place-holder="Address" required>
                            </div>
<div class="form-group">
                                <label>State</label>
                                <input class="form-control" name="emstate" place-holder="State" required>
                            </div>
<div class="form-group">
                                <label>Country</label>
                                <input class="form-control" name="empcountry" place-holder="Country" required>
                            </div>
<div class="form-group">
                                <label>Zip Code</label>
                                <input class="form-control" name="empzipcode" place-holder="Xip Code" required>
                            </div>

<div class="form-group" >
                                <label>Department</label>
                                <select id="inputState" class="form-control" name="empdpt" required>
                                    <option selected disabled>Choose Category</option>
                                    <option value="Accounting">Accounting</option>
                                    <option value="Technical">Technical</option>
                                    <option value="Logistics">Logistics</option>
                                </select>
                            </div>
<button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
</div>
<div class="col-md-9">
                        <h3>
Employee Details</h3>
<table class="table">
                            <thead class="bg-light">
<tr>
                                    <th scope="col">Employee ID</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">State</th>
                                    <th scope="col">Country</th>
                                    <th scope="col">Zip Code</th>
                                    <th scope="col">Department</th>
                                </tr>
</thead>
                            <tbody>
                                <c:forEach var="tempEmp" items="${BOOKS_LIST}">
<tr>
                                        <td>${tempEmp.empId }</td>
                                        <td>${tempEmp.firstName }</td>
                                        <td>${tempEmp.lastName }</td>
                                        <td>${tempEmp.address}</td>
                                        <td>${tempEmp.state}</td>
                                        <td>${tempEmp.country}</td>
                                        <td>${tempEmp.zipCode}</td>
                                        <td>${tempEmp.dept}</td>
                                        <td><a href="editEmployee.jsp?empId=${tempEmp.empId }">Edit</a> 
                                            <a href="DeleteEmployeeServlet?empId=${tempEmp.empId}">Delete</a></td>
                                    </tr>
</c:forEach>
                            </tbody>
                        </table>
</div>
</div>
</div>
</div>
<!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>

