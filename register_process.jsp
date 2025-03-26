<!DOCTYPE html>
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Registration Successful | Travel Website</title>  
    <style>  
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
        body {
            background-color: #808080; /* Grey background */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            text-align: center;
        }

        /* Header Styles */  
        header {  
            background-color: #003366;  
            padding: 1rem 0;  
            position: sticky;  
            top: 0;  
            z-index: 100;  
            width: 100%;
        }  
        
        .header-container {  
            max-width: 1200px;  
            margin: 0 auto;  
            display: flex;  
            justify-content: space-between;  
            align-items: center;  
            padding: 0 1rem;  
        }  
        
        .logo {  
            color: #fff;  
            font-size: 1.8rem;  
            font-weight: bold;  
        }  

        .logo span {  
            color: #ff9933;  
        }  

        nav ul {  
            display: flex;  
            list-style: none;  
        }  

        nav ul li {  
            margin-left: 1.5rem;  
        }  

        nav ul li a {  
            color: #fff;  
            text-decoration: none;  
            font-weight: 500;  
            transition: color 0.3s;  
        }  

        nav ul li a:hover {  
            color: #ff9933;  
        }  

        .auth-buttons {  
            display: flex;  
            align-items: center;  
        }  

        .auth-buttons a {  
            margin-left: 1rem;  
            padding: 0.5rem 1rem;  
            border-radius: 4px;  
            text-decoration: none;  
            font-weight: 500;  
        }  

        .login {  
            color: #fff;  
        }  

        .signup {  
            background-color: #ff9933;  
            color: #fff;  
        }  

        /* Success Container */  
        .success-container {  
            background: rgba(255, 255, 255, 0.95);  
            padding: 20px;  
            border-radius: 8px;  
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  
            width: 350px;  
            margin: auto;
            margin-top: 10vh;
        }  

        h2 {  
            color: #28a745;  
            margin-bottom: 10px;  
        }  

        p {  
            font-size: 16px;  
            color: #333;  
        }  

        .btn {  
            display: block;  
            padding: 10px;  
            margin: 10px 0;  
            text-decoration: none;  
            color: white;  
            background: #007BFF;  
            border-radius: 5px;  
            font-size: 16px;  
            width: 100%;  
        }  

        .btn:hover {  
            background: #0056b3;  
        }  

        .home-btn {
            background: #28a745;
        }

        /* Footer */  
        footer {  
            background-color: #001f3f;  
            color: #fff;  
            padding: 2rem 0;  
            margin-top: auto;
        }  

        .footer-container {  
            max-width: 1200px;  
            margin: 0 auto;  
            padding: 0 1rem;  
            text-align: center;  
        }  

        .footer-logo {  
            font-size: 1.6rem;  
            font-weight: bold;  
            margin-bottom: 1rem;  
        }  

        .footer-logo span {  
            color: #ff9933;  
        }  

        .footer-bottom {  
            max-width: 1200px;  
            margin: 0 auto;  
            padding: 1.5rem 1rem 0;  
            text-align: center;  
            border-top: 1px solid rgba(255, 255, 255, 0.1);  
            margin-top: 2rem;  
            font-size: 16px;  
            opacity: 0.7;  
        }  

        @media (max-width: 768px) {  
            .success-container {  
                width: 90%;  
            }
        }
    </style>
</head>  

<body>  
    <!-- Header -->
    <header>  
        <div class="header-container">  
            <div class="logo">Travello<span>mania</span></div>  
            <nav>  
                <ul>  
                    <li><a href="index1.jsp">Home</a></li>  
                    <li><a href="destinations.jsp">Destinations</a></li>  
                    <li><a href="tourpackage.jsp">Tour Packages</a></li>  
                    <li><a href="services.jsp">Services</a></li>  
                    <li><a href="contact.jsp">Contact</a></li>  
                </ul>  
            </nav>  
            <div class="auth-buttons">  
                <a href="login.jsp" class="login">Login</a>  
                <a href="register.jsp" class="signup">Sign Up</a>  
            </div>  
        </div>  
    </header>  

    <!-- Success Message -->
    <div class="success-container">  
        <h2>Registration Successful!</h2>  
        <p>Your account has been created successfully. You can now log in and start exploring amazing travel destinations.</p>  
        <a href="login.jsp" class="btn">Go to Login</a>  
        <a href="index1.jsp" class="btn home-btn">Back to Home</a>  
    </div>  

    <!-- Footer -->
    <footer>  
        <div class="footer-container">  
            <div class="footer-logo">Travello<span>mania</span></div>  
            <p>&copy; 2025 Travellomania. All Rights Reserved.</p>  
        </div>  
    </footer>
</body>  
</html>