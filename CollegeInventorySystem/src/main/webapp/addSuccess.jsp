<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Item Added</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .message-box {
            background: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 400px;
        }

        h2 {
            color: #28a745;
            margin-bottom: 20px;
        }

        form, .link-btn {
            margin-top: 20px;
        }

        input[type="submit"], a.link-btn {
            padding: 12px 24px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
            margin: 10px 5px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover, a.link-btn:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>
    <div class="message-box">
        <h2>Item "<%= request.getAttribute("itemName") %>" added successfully!</h2>

        <form action="addItem.jsp">
            <input type="submit" value="➕ Add Another Item" />
        </form>

        <a href="dashboard.jsp" class="link-btn">🏠 Back to Dashboard</a>
    </div>
</body>
</html>
