<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Dashboard</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/chris-liverani-HUJDz6CJEaM-unsplash.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            text-align: center;
            overflow: hidden;
            filter: brightness(0.7); /* Darken the background */
        }

        /* Floating Animation for H1 */
        h1 {
            font-size: 4rem;
            font-weight: bold;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.6);
            margin-bottom: 20px;
            animation: float 3s infinite ease-in-out;
        }

        /* Typing Animation for H2 */
        h2.typing {
    font-size: 2rem;
    margin: 30px 0;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.6); /* Default shadow for typing effect */
    display: inline-block;
    border-right: 2px solid #fff;
    white-space: nowrap;
    overflow: hidden;
    width: 0;
    animation: typing 4s steps(20, end), blink 0.5s step-end infinite alternate;
}

        /* Button Styles with Glow Effect */
        a {
            text-decoration: none;
            color: #fff;
            background-color: #ff4500;
            padding: 15px 30px;
            border-radius: 30px;
            font-size: 1.5rem;
            font-weight: bold;
            margin: 15px 0;
            display: inline-block;
            box-shadow: 0 4px 10px rgba(255, 69, 0, 0.5), 0 0 10px rgba(255, 69, 0, 0.5);
            transition: transform 0.3s ease, background-color 0.3s ease, box-shadow 0.3s ease;
        }

        a:hover {
            background-color: #ff6347;
            transform: scale(1.1);
            box-shadow: 0 8px 15px rgba(255, 99, 71, 0.7), 0 0 20px rgba(255, 99, 71, 0.7);
        }

        a:active {
            transform: scale(0.9);
        }

        /* Keyframes for Floating Animation */
        @keyframes float {
            0%, 100% {
                transform: translateY(-10px);
            }
            50% {
                transform: translateY(10px);
            }
        }

        /* Keyframes for Typing Effect */
        @keyframes typing {
            from {
                width: 0;
            }
            to {
                width: 100%;
            }
        }

        @keyframes blink {
            from {
                border-color: transparent;
            }
            to {
                border-color: white;
            }
        }

        /* Glowing Text Effect */
        .shadow-text {
    		text-shadow: 4px 4px 10px #00bfff, 0 0 20px #00bfff, 0 0 30px #00bfff; /* Blue shadow */
    		animation: glowEffect 1.5s infinite alternate;
		}

		@keyframes glowEffect {
    		from {
        		text-shadow: 4px 4px 10px rgba(0, 191, 255, 0.8), 0 0 20px rgba(0, 191, 255, 0.8);
    		}
    		to {
        		text-shadow: 4px 4px 20px rgba(0, 191, 255, 1), 0 0 30px rgba(0, 191, 255, 1);
    		}
		}
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="shadow-text">Welcome to the Car Dashboard!</h1>
        <h2 class="typing shadow-text">Ready to drive your car management system?</h2>
        <h2>
            <a href="AddCar.jsp">ADD NEW CAR</a>
        </h2>
        <h2>
            <a href="display-all-cars">DISPLAY ALL CARS</a>
        </h2>
    </div>
</body>
</html>
