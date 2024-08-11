<%-- 
    Document   : listOrders
    Created on : 11 de ago. de 2024, 12:08:04
    Author     : melin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>List of Orders</title>
</head>
<body>
    <h2>List of Orders</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Order No</th>
                <th>Purchase Amount</th>
                <th>Order Date</th>
                <th>Customer ID</th>
                <th>Salesman ID</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<ListOrdersServlet.Order> orders = (List<ListOrdersServlet.Order>) request.getAttribute("orders");
                if (orders != null) {
                    for (ListOrdersServlet.Order order : orders) {
            %>
                <tr>
                    <td><%= order.getOrdNo() %></td>
                    <td><%= order.getPurchAmt() %></td>
                    <td><%= order.getOrdDate() %></td>
                    <td><%= order.getCustomerId() %></td>
                    <td><%= order.getSalesmanId() %></td>
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>

