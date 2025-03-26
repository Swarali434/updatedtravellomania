<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Travellomania</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
      /* Header Styles */
        header {
            background-color: #003366;
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 100;
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
        
        .about-container {
            max-width: 1000px;
            margin: auto;
            padding: 50px 20px;
            text-align: center;
        }
        .about-container h2 {
            color: #333;
            font-size: 36px;
            margin-bottom: 20px;
        }
        .about-container p {
            font-size: 18px;
            color: #555;
            line-height: 1.8;
            margin-bottom: 20px;
        }
        .about-image {
            width: 100%;
            max-height: 400px;
            object-fit: cover;
            border-radius: 10px;
        }
        footer {
            background-color: #001f3f;
            color: #fff;
            padding: 3rem 0 1.5rem;
            margin-top: 4rem;
        }
        
        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }
        
        .footer-logo {
            font-size: 1.6rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }
        
        .footer-logo span {
            color: #ff9933;
        }
        
        .footer-company-description {
            margin-bottom: 1.5rem;
            opacity: 0.8;
            font-size: 0.9rem;
        }
        
        .footer-column h3 {
            font-size: 1.2rem;
            margin-bottom: 1.2rem;
            position: relative;
            padding-bottom: 0.5rem;
        }
        
        .footer-column h3::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 40px;
            height: 2px;
            background-color: #ff9933;
        }
        
        .footer-links {
            list-style: none;
        }
        
        .footer-links li {
            margin-bottom: 0.8rem;
        }
        
        .footer-links a {
            color: #ccc;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }
        
        .footer-links a:hover {
            color: #ff9933;
        }
        
        .footer-contact p {
            display: flex;
            align-items: flex-start;
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }
        
        .footer-social {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }
        
        .footer-social a {
            display: inline-block;
            width: 35px;
            height: 35px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s;
        }
        
        .footer-social a:hover {
            background-color: #ff9933;
        }
        
        .footer-bottom {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1.5rem 1rem 0;
            text-align: center;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            margin-top: 2rem;
            font-size: 0.9rem;
            opacity: 0.7;
        }
        
    </style>
</head>
<body>
    <header>
        <!-- Header -->
       
        <div class="header-container">
            <div class="logo">Travello<span>mania</span></div>
            <nav>
                <ul>
                    <li><a href="index1.jsp">Home</a></li>
                    <li><a href="destinations.jsp" class="active">Destinations</a></li>
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
    
    
    <section class="about-container">
        <h2>Welcome to Travellomania</h2>
        <img src="images/aboutus.png" alt="Travel Image" class="about-image">
        <p>
            Travellomania is your ultimate travel companion, helping you explore the world's most breathtaking destinations
            with carefully curated travel packages. Whether you are looking for family trips, honeymoon getaways, or adventurous 
            excursions with friends, we have something for everyone.
        </p>
        <p>
            Our mission is to make travel effortless and enjoyable by offering affordable, well-planned, and exciting journeys. 
            We take pride in delivering unforgettable experiences, seamless bookings, and personalized customer support.
        </p>
        <p>
            Embark on your next adventure with Travellomania and create memories that last a lifetime!
        </p>
    </section>
    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Travellomania</h3>
                <p>Specialized in educational trips and college collaborations since 2020.</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="footer-column">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="index1.jsp">Home</a></li>
                    <li><a href="destinations.jsp">Destinations</a></li>
                    <li><a href="colleges.jsp">College Collaborations</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h4>Trip Types</h4>
                <ul>
                    <li><a href="trips.jsp?type=historical">Historical</a></li>
                    <li><a href="trips.jsp?type=scientific">Scientific</a></li>
                    <li><a href="trips.jsp?type=cultural">Cultural</a></li>
                    <li><a href="trips.jsp?type=environmental">Environmental</a></li>
                    <li><a href="trips.jsp?type=customized">Customized Tours</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h4>Contact Us</h4>
                <ul class="contact-info">
                    <li><i class="fas fa-map-marker-alt"></i> 123 Education Street, New Delhi, India</li>
                    <li><i class="fas fa-phone"></i> +91 98765 43210</li>
                    <li><i class="fas fa-envelope"></i> info@travellomania.com</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Travellomania. All rights reserved.</p>
        </div>
    </footer>
    
    
    
</body>
</html>
