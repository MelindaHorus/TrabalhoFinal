<%-- 
    Document   : index
    Created on : 10 de ago. de 2024, 22:15:27
    Author     : melin
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bem-vindo ao Sistema de Vendas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        nav {
            background: #444;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
        }
        .main-content {
            padding: 20px;
        }
        .card {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .card h2 {
            margin-top: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Sistema de Vendas</h1>
    </header>
    
    <nav>
        <a href="index.jsp">Página Inicial</a>
        <a href="registerCustomer.jsp">Cadastrar Cliente</a>
        <a href="registerSalesman.jsp">Cadastrar Vendedor</a>
        <a href="registerOrder.jsp">Cadastrar Ordem de Venda</a>
    </nav>

    <div class="container">
        <div class="main-content">
            <div class="card">
                <h2>Bem-vindo ao Sistema de Vendas</h2>
                <p>Utilize os links acima para acessar as páginas de cadastro.</p>
            </div>
        </div>
    </div>
</body>
</html>
