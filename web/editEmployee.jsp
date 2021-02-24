<%@page import="com.shibin.employee.Employee"%>
<%@page import="com.shibin.employee.ConnectionDao"%>
<%@page import="com.shibin.employee.EmpDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("empId"));
    EmpDao bkd = new EmpDao(ConnectionDao.getCon());
    Employee bk = bkd.getSingleBook(id);
    request.setAttribute("edit_books", bk);
%>
<!DOCTYPE html>
<html>
    <head>
         <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Employee Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        
       <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Book Store</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
<li class="nav-item">
                            <a class="nav-link active" href="index.jsp">Home</a>
                        </li>
</ul>
</nav>
        </div>
<div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>
Edit Employee Details</h3>
<form action="EditEmployeeServlet" method="post">
                            <div class="form-group">
                                <label>Employee ID</label>
                                <input class="form-control" name="empid" value="${edit_books.empId }" required>
                            </div>
<div class="form-group">
                                <label>First Name</label>
                                <input class="form-control" name="empfn" value="${edit_books.firstName }" required>
                            </div>
<div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control" name="empln" value="${edit_books.lastName}" required>
                            </div>
<div class="form-group">
                                <label>Address</label>
                                <input class="form-control" name="empaddr" value="${edit_books.address}" required>
                            </div>
                            <div class="form-group">
                                <label>State</label>
                                <input class="form-control" name="emstate" value="${edit_books.state}" required>
                            </div>
                            <div class="form-group">
                                <label>Country</label>
                                <input class="form-control" name="empcountry" value="${edit_books.country}" required>
                            </div>
                            <div class="form-group">
                                <label>Zip Code</label>
                                <input class="form-control" name="empzipcode" value="${edit_books.dept}" required>
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
                            <button  class="btn btn-primary"><a href="index.jsp">Cancel</a></button>
                        </form>
</div>
</div>
</div>
</div>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        
    </body>
</html>

