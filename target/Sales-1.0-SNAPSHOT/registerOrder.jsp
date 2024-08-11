<%-- 
    Document   : registerOrder
    Created on : 10 de ago. de 2024, 22:08:08
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
            <h2>Register Order</h2>
            <form action="registerOrder" method="post">
                <label for="purchAmt">Purchase Amount:</label>
                <input type="text" id="purchAmt" name="purchAmt" required><br><br>

                <label for="ordDate">Order Date (yyyy-mm-dd):</label>
                <input type="date" id="ordDate" name="ordDate" required><br><br>

                <label for="customerId">Customer ID:</label>
                <input type="number" id="customerId" name="customerId" required><br><br>

                <label for="salesmanId">Salesman ID:</label>
                <input type="number" id="salesmanId" name="salesmanId" required><br><br>

                <input type="submit" value="Register Order">
            </form>
        </body>
    </html>
</f:view>
