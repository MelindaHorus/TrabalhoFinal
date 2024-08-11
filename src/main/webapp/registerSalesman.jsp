<%-- 
    Document   : registerSalesman
    Created on : 10 de ago. de 2024, 22:06:55
    Author     : melin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>
            <h2>Register Salesman</h2>
            <form action="registerSalesman" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br><br>

                <label for="city">City:</label>
                <input type="text" id="city" name="city" required><br><br>

                <label for="commission">Commission:</label>
                <input type="text" id="commission" name="commission" required><br><br>

                <input type="submit" value="Register Salesman">
            </form>
        </body>
    </html>
</f:view>
