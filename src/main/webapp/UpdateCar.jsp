<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Car</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: #000;
            color: #f1f1f1;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h1 {
            margin-top: 20px;
            font-size: 3rem;
            text-align: center;
            text-shadow: 4px 4px 10px #00ff88;
            animation: glowEffect 1.5s infinite alternate;
        }

        .form-container {
            background: #111;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 255, 136, 0.2);
            margin: 20px 0;
            width: 80%;
            max-width: 800px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #444;
            background: #222;
            color: #f1f1f1;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        input:focus {
            background-color: #333;
            outline: none;
            box-shadow: 0 0 10px #00ff88;
        }

        input[type="submit"] {
            background: #00ff88;
            color: #000;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #00cc70;
        }

        @keyframes glowEffect {
            from {
                text-shadow: 4px 4px 10px rgba(0, 255, 136, 0.8);
            }
            to {
                text-shadow: 4px 4px 20px rgba(0, 255, 136, 1);
            }
        }

        .home-link, .back-link {
            margin-top: 20px;
            text-decoration: none;
            font-size: 1.5rem;
            color: #00ff88;
            text-shadow: 2px 2px 4px rgba(0, 255, 136, 0.8);
        }

        .home-link:hover, .back-link:hover {
            color: #00cc70;
            text-shadow: 4px 4px 8px rgba(0, 255, 136, 1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Car Information</h1>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("carObject"); 
            rs.next();
        %>
        <form action="save-updated-car" method="post">
            <input type="number" value="<%= rs.getInt(1) %>" name="carId" readonly="readonly"> <br>
            <input type="text" value="<%= rs.getString(2) %>" name="carModel"> <br>
            <input type="text" value="<%= rs.getString(3) %>" name="carBrand"> <br>
            <input type="text" value="<%= rs.getString(4) %>" name="carColour"> <br>
            <input type="number" value="<%= rs.getInt("carPrice") %>" name="carPrice"> <br> 
            <input type="submit" value="Update Car">
        </form>

        <div class="back-link">
            <a href="display-all-cars" class="back-link">⬅ Back to All Cars</a> <br>
    		<a href="index.jsp" class="home-link">⬅ Back to Home</a>
        </div>
    </div>
</body>
</html>
