<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Car</title>
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

        .home-link {
            margin-top: 20px;
            text-decoration: none;
            font-size: 1.5rem;
            color: #00ff88;
            text-shadow: 2px 2px 4px rgba(0, 255, 136, 0.8);
        }

        .home-link:hover {
            color: #00cc70;
            text-shadow: 4px 4px 8px rgba(0, 255, 136, 1);
        }
    </style>
</head>
<body>
    <h1>Add New Car</h1>
    <div class="form-container">
        <form action="add-car" method="post">
            <input type="number" placeholder="Enter CarId" name="carId" required> 
            <input type="text" placeholder="Enter Car Model" name="carModel" required> 
            <input type="text" placeholder="Enter Car Brand" name="carBrand" required> 
            <input type="text" placeholder="Enter Car Colour" name="carColour" required> 
            <input type="number" placeholder="Enter Car Price" name="carPrice" required> 
            <input type="submit" value="Add Car">
        </form>
    </div>
    <a href="index.jsp" class="home-link">⬅ Back to Home</a>
</body>
</html>
