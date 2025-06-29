<%@ page import="java.util.List" %>
<%@ page import="com.inventory.model.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Inventory Items</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #f9f9fb;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 14px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #eef2f8;
        }

        .delete-link {
            color: #dc3545;
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s;
        }

        .delete-link:hover {
            color: #a71d2a;
            text-decoration: underline;
        }

        .back-link {
            text-align: center;
            display: block;
            margin-top: 30px;
            font-weight: bold;
            text-decoration: none;
            color: #007bff;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>📦 Inventory Items</h2>

    <table>
        <tr>
            <th>Item Name</th>
            <th>Category</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Action</th>
        </tr>

        <%
            List<Item> items = (List<Item>) request.getAttribute("items");
            if (items != null && !items.isEmpty()) {
                for (Item item : items) {
        %>
        <tr>
            <td><%= item.getName() %></td>
            <td><%= item.getCategory() %></td>
            <td><%= item.getQuantity() %></td>
            <td>₹ <%= item.getPrice() %></td>
            <td>
                <a href="deleteItem?id=<%= item.getId() %>" class="delete-link"
                   onclick="return confirm('Are you sure you want to delete this item?');">
                    Delete
                </a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5">No items found in inventory.</td>
        </tr>
        <%
            }
        %>
    </table>

    <a href="dashboard.jsp" class="back-link">⟵ Back to Dashboard</a>
</body>
</html>
