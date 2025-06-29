<%@ page import="com.inventory.model.User" %>
<%
  User user = (User) session.getAttribute("user");
  if (user == null) response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }

        .dashboard-box {
            background-color: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        .button-group a {
            display: inline-block;
            margin: 10px 15px;
            padding: 12px 24px;
            font-size: 16px;
            color: white;
            background-color: #007bff;
            border-radius: 6px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .button-group a:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
    <div class="dashboard-box">
        <h2>Welcome, <%= user.getUsername() %>!</h2>

        <div class="button-group">
            <a href="addItem.jsp"> Add Item</a>
            <a href="ViewItemsServlet"> View Items</a>
        </div>
    </div>
</body>
</html>
