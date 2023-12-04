
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% ResultSet res = (ResultSet) request.getAttribute("userlist");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= application.getContextPath()%>/css/bootstrap.min.css" type="text/css"
              rel="stylesheet" />

    </head>
    <body>
        <nav class=" navbar-light navbar-expand-lg bg-dark">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link btn btn-primary" href="<%= application.getContextPath()%>/user">User</a>
                </li>
            </ul>
        </nav>
        <% if (res != null) { %>
        <table class="table">
            <tr>
                <th> S.No</th>
                <th> Name</th>
                <th> Contact No</th>
                <th>  Email Id</th>
                <th> Address</th>
                <th>Status</th>
                <th>action</th>
            </tr>
            <% while (res.next()) {%>
            <tr>
                <td><%= res.getInt("Id")%></td>
                <td><%= res.getString("Name")%></td>
                <td><%= res.getString("ContactNo")%></td>
                <td><%= res.getString("Email")%></td>
                <td><%= res.getString("Address")%></td>
                <td><% if (res.getInt("Is_active") == 1) {%>
                    <p> Active</p>
                <td>
                    <form method="get"
                          action="<%= application.getContextPath()%>/UpdateAction">
                        <input type="hidden" name="userid" value="<%= res.getInt("Id")%>"/>
                        <input type="hidden" name="whichac" value="deactivate"/>
                        <button class="btn btn-primary" style="background-color: red; color: white;" type="submit">Deactivate</button>
                    </form>
                </td>
                <% } else {%>
            <p>Deactive</p>

            <td>
                <form method="get"
                      action="<%= application.getContextPath()%>/UpdateAction">
                    <input type="hidden" name="userid" value="<%= res.getInt("Id")%>"/>
                    <input type="hidden" name="whichac" value="activate"/>
                    <button class="btn btn-info btn-primary " style="background-color: green; color: white;" type="submit">Activate</button>
            </td>
            <% } %>
        </td>
        <td>

        </td>
    </tr>
    <% } %>
</table>

<% }%>

</body>
</html>
