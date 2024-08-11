package com.myapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CustomerServlet extends HttpServlet {

    // Configurações do banco de dados
    private static final String URL = "jdbc:postgresql://ep-frosty-butterfly-a498fjcx-pooler.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require";
    private static final String USER = "default";
    private static final String PASSWORD = "vxeDI7XohFg2";

    @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Redireciona para a página JSP de visualização
    request.getRequestDispatcher("/registerCustomer.jsp").forward(request, response);
}

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String city = request.getParameter("city");
        int grade = Integer.parseInt(request.getParameter("grade"));
        int salesmanId = Integer.parseInt(request.getParameter("salesmanId"));

        try {
            // Conexão com o banco de dados
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

            // Inserção no banco de dados
            String query = "INSERT INTO customer (CUST_NAME, CITY, GRADE, SALESMAN_ID) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, city);
            ps.setInt(3, grade);
            ps.setInt(4, salesmanId);

            ps.executeUpdate();
            ps.close();
            con.close();

            response.getWriter().println("Customer registered successfully!");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("Error registering customer."+ e.getMessage());
        }
    }
}
