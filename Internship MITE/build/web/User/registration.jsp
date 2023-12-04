<%-- 
    Document   : registration
    Created on : 31 Aug, 2023, 3:31:21 PM
    Author     : hithe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <link href="../css/bootstrap.min.css" type="text/css"
          rel="stylesheet" />
    <body>
        <div class="container">
            <div class="row">
                <div class="col-4">
                </div>
                   <div class="col-4">
                </div>
                   <div class="col-4">
               
             <h1> Registration </h1>
        <form  method="post"
               action="<%=application.getContextPath()%>/RegistrationServlet">
            <input type="text" id="name" name="name" placeholder="Name" class="form-group form-control mt-5"/>
             <input type="text" id="contact" name="contact" placeholder="Contact No" class="form-group form-control"/>
              <input type="email" id="email" name="email" placeholder="Email Id" class="form-group form-control"/>
              <textarea id="address" name="address" placeholder="Address" class="form-group form-control"></textarea>
              <input type="text" id="user" name="user" placeholder="User Name" class="form-group form-control"/>
              <input type="password" id="pass" name="pass" placeholder="Password" class="form-group form-control"/>
              <button type="submit" class="btn btn-primary form-control form-group">Register</button>
              
        </form>
              </div>
        </div>
        </div>
    </body>
</html>
