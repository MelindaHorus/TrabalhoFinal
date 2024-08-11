<%-- 
    Document   : register_customer
    Created on : 10 de ago. de 2024, 22:04:30
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
            <h1><h:outputText value="Hello World!"/></h1>
            <form action="registerCustomer" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name"><br><br>
                <label for="city">City:</label>
                <input type="text" id="city" name="city"><br><br>
                <label for="grade">Grade:</label>
                <input type="text" id="grade" name="grade"><br><br>
                <label for="salesmanId">Salesman ID:</label>
                <input type="text" id="salesmanId" name="salesmanId"><br><br>
                <input type="submit" value="Register Customer">
            </form>

        </body>
    </html>
</f:view>
