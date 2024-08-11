package com.myapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class OrderServlet extends HttpServlet {

    private static final String URL = "jdbc:postgresql://ep-frosty-butterfly-a498fjcx-pooler.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require";
    private static final String USER = "default";
    private static final String PASSWORD = "vxeDI7XohFg2";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Redireciona para a página JSP de visualização
    request.getRequestDispatcher("/registerOrder.jsp").forward(request, response);
}

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double purchAmt = Double.parseDouble(request.getParameter("purchAmt"));
        Date ordDate = Date.valueOf(request.getParameter("ordDate")); // Espera-se que a data esteja no formato yyyy-MM-dd
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        int salesmanId = Integer.parseInt(request.getParameter("salesmanId"));

        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

            String query = "INSERT INTO orders (PURCH_AMT, ORD_DATE, CUSTOMER_ID, SALESMAN_ID) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setDouble(1, purchAmt);
            ps.setDate(2, ordDate);
            ps.setInt(3, customerId);
            ps.setInt(4, salesmanId);

            ps.executeUpdate();
            ps.close();
            con.close();

            response.getWriter().println("Order registered successfully!");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("Error registering order." + e.getMessage());
        }
    }
}
