<%-- 
    Document   : login
    Created on : 31 Aug, 2023, 3:14:00 PM
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
             <form method="post" 
                  action="<%= application.getContextPath()%>/AdminLoginservlet">
            <input type="text" id="user" name="user"
                   placeholder="username"
                   class="form-group form-control mt-5"/>
            <input type="password" id="pass" name="pass"
                   placeholder="password"
                    class="form-group form-control"/>
            <button type="submit" class="btn btn-primary form-control form-group">LOGIN</button>   
        </form>                    
                </div>
                <div class="col-4"></div>
                
            </div>
            
        </div>
       
    </body>
</html>
