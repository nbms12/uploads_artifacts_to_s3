<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Consultancy Services</title>
    <style>
        /* Global Styles */
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --light: #ecf0f1;
            --dark: #2c3e50;
            --accent: #e74c3c;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            line-height: 1.6;
            color: var(--dark);
            background-color: #8c18e8;
        }
        
        a {
            text-decoration: none;
            color: var(--secondary);
        }
        
        /* Header */
        header {
            background-color: var(--primary);
            color: white;
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 100;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
        }
        
        .logo span {
            color: var(--secondary);
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 2rem;
        }
        
        nav ul li a {
            color: white;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: var(--secondary);
        }
        
        /* Hero Section */
        .hero {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            text-align: center;
            color: white;
            margin-top: 60px;
        }
        
        .hero-content h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
        }
        
        .hero-content p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 2rem;
        }
        
        .btn {
            display: inline-block;
            background-color: var(--secondary);
            color: white;
            padding: 0.8rem 1.8rem;
            border-radius: 30px;
            font-weight: 600;
            transition: all 0.3s;
            border: none;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #2980b9;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        
        /* Services Section */
        .services {
            padding: 5rem 0;
            background-color: white;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }
        
        .section-title p {
            color: #777;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }
        
        .service-card {
            background-color: var(--light);
            padding: 2rem;
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
        }
        
        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }
        
        .service-card i {
            font-size: 3rem;
            color: var(--secondary);
            margin-bottom: 1.5rem;
        }
        
        .service-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        
        /* About Section */
        .about {
            padding: 5rem 0;
            background-color: var(--light);
        }
        
        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }
        
        .about-img {
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
        }
        
        .about-img img {
            width: 100%;
            height: auto;
            display: block;
        }
        
        .about-text h2 {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1.5rem;
        }
        
        .about-text p {
            margin-bottom: 1.5rem;
            color: #555;
        }
        
        /* Contact Section */
        .contact {
            padding: 5rem 0;
            background-color: white;
        }
        
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            background-color: var(--light);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        .form-group {
            margin-bottom: 1.5rem;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }
        
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.8rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }
        
        .form-group textarea {
            height: 150px;
        }
        
        /* Footer */
        footer {
            background-color: var(--primary);
            color: white;
            padding: 3rem 0;
            text-align: center;
        }
        
        .footer-content {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .social-links {
            margin: 1.5rem 0;
        }
        
        .social-links a {
            color: white;
            margin: 0 1rem;
            font-size: 1.5rem;
            transition: color 0.3s;
        }
        
        .social-links a:hover {
            color: var(--secondary);
        }
        
        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
            }
            
            nav ul {
                margin-top: 1rem;
            }
            
            nav ul li {
                margin: 0 0.5rem;
            }
            
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .about-content {
                grid-template-columns: 1fr;
            }
            
            .about-img {
                order: -1;
            }
        }
    </style>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="header-content">
                <div class="logo">Expert<span>Consult</span></div>
                <nav>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">
                <h1>Strategic Business Consulting Solutions</h1>
                <p>We help businesses grow through innovative strategies, digital transformation, and operational excellence.</p>
                <a href="#contact" class="btn">Get Started</a>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="services">
        <div class="container">
            <div class="section-title">
                <h2>Our Services</h2>
                <p>We offer comprehensive consulting services tailored to your business needs</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <i class="fas fa-chart-line"></i>
                    <h3>Business Strategy</h3>
                    <p>Develop winning strategies for sustainable growth and competitive advantage.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-digital-tachograph"></i>
                    <h3>Digital Transformation</h3>
                    <p>Leverage technology to streamline operations and enhance customer experiences.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-hand-holding-usd"></i>
                    <h3>Financial Advisory</h3>
                    <p>Expert financial analysis and planning to maximize your profitability.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-users"></i>
                    <h3>HR Consulting</h3>
                    <p>Build high-performing teams with our human capital solutions.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-globe"></i>
                    <h3>Market Research</h3>
                    <p>Data-driven insights to understand your market and customers better.</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-project-diagram"></i>
                    <h3>Project Management</h3>
                    <p>From planning to execution, we ensure your projects deliver results.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about" id="about">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>About Our Consultancy</h2>
                    <p>With over 15 years of experience across multiple industries, our team of experts provides strategic guidance to help businesses navigate challenges and capitalize on opportunities.</p>
                    <p>We combine deep industry knowledge with innovative thinking to deliver customized solutions that drive measurable results for our clients.</p>
                    <p>Our approach is collaborative, data-driven, and focused on creating sustainable value for your organization.</p>
                    <a href="#contact" class="btn">Learn More</a>
                </div>
                <div class="about-img">
                    <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" alt="Consultancy Team">
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact" id="contact">
        <div class="container">
            <div class="section-title">
                <h2>Get In Touch</h2>
                <p>Ready to transform your business? Contact us for a free consultation.</p>
            </div>
            <div class="contact-form">
                <form id="consultForm">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="tel" id="phone" name="phone">
                    </div>
                    <div class="form-group">
                        <label for="service">Service Interested In</label>
                        <select id="service" name="service" class="form-group input">
                            <option value="">Select a service</option>
                            <option value="strategy">Business Strategy</option>
                            <option value="digital">Digital Transformation</option>
                            <option value="financial">Financial Advisory</option>
                            <option value="hr">HR Consulting</option>
                            <option value="research">Market Research</option>
                            <option value="projects">Project Management</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" required></textarea>
                    </div>
                    <button type="submit" class="btn">Submit</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="logo">Expert<span>Consult</span></div>
                <p>Strategic solutions for business growth</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
                <p>&copy; 2023 Expert Consult. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script>
        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Form submission handling
        const form = document.getElementById('consultForm');
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Get form values
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const service = document.getElementById('service').value;
            
            // Simple validation
            if (!name || !email) {
                alert('Please fill in all required fields');
                return;
            }
            
            // In a real app, you would send this data to a server
            console.log('Form submitted:', { name, email, service });
            
            // Show success message
            alert(`Thank you, ${name}! We've received your inquiry about ${service || 'our services'}. We'll contact you soon at ${email}.`);
            
            // Reset form
            form.reset();
        });

        // Mobile menu toggle (would need more HTML elements for full mobile menu)
        // This is a placeholder for more complete mobile functionality
        function toggleMobileMenu() {
            // Implementation would go here
        }
    </script>
</body>
</html>
