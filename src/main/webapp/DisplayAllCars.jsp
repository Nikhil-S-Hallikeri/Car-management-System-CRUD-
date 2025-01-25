<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display All Cars</title>
    <style>
        /* Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: #000; /* Pure black background */
            color: #f1f1f1;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        /* Title Styling */
        h1 {
            margin-top: 20px;
            font-size: 3rem;
            text-align: center;
            text-shadow: 4px 4px 10px #00ff88; /* Neon Green Glow */
            animation: glowEffect 1.5s infinite alternate;
        }

        /* Table Container */
        .table-container {
            background: #111; /* Deep Black */
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 255, 136, 0.2); /* Neon Glow Effect */
            margin: 20px 0;
            width: 90%;
            max-width: 1200px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            color: #f1f1f1;
            text-align: center;
            overflow: hidden;
        }

        table th {
            background: #333; /* Dark Gray */
            color: #00ff88; /* Neon Green */
            font-size: 1.2rem;
            padding: 15px;
            text-shadow: 2px 2px 5px rgba(0, 255, 136, 0.8);
        }

        table td {
            padding: 15px;
            border: 1px solid #444; /* Subtle Border */
        }

        table tr:nth-child(odd) {
            background: #222; /* Slightly lighter black */
        }

        table tr:nth-child(even) {
            background: #111; /* Pure Black */
        }

        table tr:hover {
            background: rgba(0, 255, 136, 0.1); /* Neon Green Tint */
            cursor: pointer;
            transform: scale(1.02);
            transition: transform 0.2s ease, background-color 0.2s ease;
        }

        /* Link Buttons */
        .link-button {
            text-decoration: none;
            padding: 10px 20px;
            background: #00ff88; /* Neon Green */
            color: #000; /* Black Text */
            font-weight: bold;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 255, 136, 0.6);
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .link-button:hover {
            background-color: #00cc70; /* Slightly darker Neon Green */
            transform: scale(1.1);
        }

        /* Fade-In Animation */
        @keyframes glowEffect {
            from {
                text-shadow: 4px 4px 10px rgba(0, 255, 136, 0.8);
            }
            to {
                text-shadow: 4px 4px 20px rgba(0, 255, 136, 1);
            }
        }

        /* Home Link */
        .home-link {
            margin-top: 20px;
            text-decoration: none;
            font-size: 1.5rem;
            color: #00ff88; /* Neon Green */
            text-shadow: 2px 2px 4px rgba(0, 255, 136, 0.8);
        }

        .home-link:hover {
            color: #00cc70; /* Slightly darker Neon Green */
            text-shadow: 4px 4px 8px rgba(0, 255, 136, 1);
        }
    </style>
</head>
<body>
    <h1>All Cars</h1>
    <div class="table-container">
        <%
            ResultSet rs = (ResultSet) request.getAttribute("carList");
        %>
        <table>
            <tr>
                <th>Car ID</th>
                <th>Car Model</th>
                <th>Car Brand</th>
                <th>Car Colour</th>
                <th>Car Price</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            <%
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td>₹<%= rs.getInt(5) %></td>
                <td><a href="find-car-by-id?carId=<%= rs.getInt(1) %>" class="link-button">UPDATE</a></td>
                <td><a href="delete-car-by-id?carId=<%= rs.getInt(1) %>" class="link-button">DELETE</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <a href="index.jsp" class="home-link">⬅ Back to Home</a>
</body>
</html>