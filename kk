<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SecureVote - Online Voting System</title>
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --light: #ecf0f1;
            --success: #2ecc71;
            --warning: #f39c12;
            --dark: #34495e;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f7fa;
            color: var(--dark);
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Header Styles */
        header {
            background-color: var(--primary);
            color: white;
            padding: 1rem 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .logo-icon {
            font-size: 1.8rem;
        }
        
        .logo-text {
            font-size: 1.5rem;
            font-weight: 700;
        }
        
        nav ul {
            display: flex;
            list-style: none;
            gap: 20px;
        }
        
        nav a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 5px 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        
        nav a:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        .auth-buttons {
            display: flex;
            gap: 10px;
        }
        
        .btn {
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .btn-outline {
            background: transparent;
            border: 1px solid white;
            color: white;
        }
        
        .btn-primary {
            background-color: var(--secondary);
            color: white;
        }
        
        .btn:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }
        
        /* Main Content Styles */
        .hero {
            background: linear-gradient(135deg, var(--primary), var(--dark));
            color: white;
            padding: 4rem 0;
            text-align: center;
        }
        
        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 2rem;
        }
        
        .features {
            padding: 4rem 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
            font-size: 2rem;
            color: var(--primary);
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
        
        .feature-card {
            background: white;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            text-align: center;
            transition: transform 0.3s;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
        }
        
        .feature-icon {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 1rem;
        }
        
        .feature-card h3 {
            margin-bottom: 1rem;
            color: var(--primary);
        }
        
        /* Voting Interface */
        .voting-interface {
            background: white;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            max-width: 800px;
            margin: 2rem auto;
        }
        
        .election-title {
            text-align: center;
            margin-bottom: 2rem;
            color: var(--primary);
            border-bottom: 1px solid #eee;
            padding-bottom: 1rem;
        }
        
        .candidate-card {
            display: flex;
            align-items: center;
            padding: 1.5rem;
            border: 1px solid #eee;
            border-radius: 8px;
            margin-bottom: 1rem;
            transition: all 0.3s;
        }
        
        .candidate-card:hover {
            border-color: var(--secondary);
            background-color: #f8fafc;
        }
        
        .candidate-image {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 1.5rem;
            border: 3px solid #eee;
        }
        
        .candidate-info {
            flex-grow: 1;
        }
        
        .candidate-name {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        
        .candidate-party {
            color: #666;
            font-size: 0.9rem;
        }
        
        .vote-btn {
            background-color: var(--success);
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .vote-btn:hover {
            background-color: #27ae60;
        }
        
        /* Footer */
        footer {
            background-color: var(--primary);
            color: white;
            padding: 2rem 0;
            margin-top: 4rem;
        }
        
        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 2rem;
        }
        
        .footer-section {
            flex: 1;
            min-width: 250px;
        }
        
        .footer-section h3 {
            margin-bottom: 1rem;
            font-size: 1.2rem;
        }
        
        .footer-bottom {
            text-align: center;
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                gap: 1rem;
            }
            
            nav ul {
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .candidate-card {
                flex-direction: column;
                text-align: center;
            }
            
            .candidate-image {
                margin-right: 0;
                margin-bottom: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-content">
            <div class="logo">
                <div class="logo-icon">🗳️</div>
                <div class="logo-text">SecureVote</div>
            </div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Elections</a></li>
                    <li><a href="#">Results</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
            <div class="auth-buttons">
                <button class="btn btn-outline">Login</button>
                <button class="btn btn-primary">Register</button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Secure Online Voting System</h1>
            <p>Cast your vote securely from anywhere with our transparent and tamper-proof voting platform. Your voice matters!</p>
            <button class="btn btn-primary" style="padding: 12px 24px; font-size: 1.1rem;">View Active Elections</button>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <h2 class="section-title">Why Choose SecureVote?</h2>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">🔒</div>
                    <h3>Secure & Private</h3>
                    <p>End-to-end encryption ensures your vote remains confidential and tamper-proof.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">⚡</div>
                    <h3>Fast & Efficient</h3>
                    <p>Cast your vote in minutes without waiting in long queues at polling stations.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">🌐</div>
                    <h3>Accessible Anywhere</h3>
                    <p>Vote from any device with an internet connection, at your convenience.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">📊</div>
                    <h3>Real-time Results</h3>
                    <p>View election results instantly after the voting period ends.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Voting Interface -->
    <section class="container">
        <div class="voting-interface">
            <h2 class="election-title">Student Council Election 2023</h2>
            
            <div class="candidate-card">
                <img src="https://via.placeholder.com/80" alt="Candidate" class="candidate-image">
                <div class="candidate-info">
                    <div class="candidate-name">Alex Johnson</div>
                    <div class="candidate-party">Independent</div>
                    <p>Focused on improving campus facilities and student engagement.</p>
                </div>
                <button class="vote-btn">Vote</button>
            </div>
            
            <div class="candidate-card">
                <img src="https://via.placeholder.com/80" alt="Candidate" class="candidate-image">
                <div class="candidate-info">
                    <div class="candidate-name">Maria Garcia</div>
                    <div class="candidate-party">Student Alliance</div>
                    <p>Advocating for mental health resources and academic support.</p>
                </div>
                <button class="vote-btn">Vote</button>
            </div>
            
            <div class="candidate-card">
                <img src="https://via.placeholder.com/80" alt="Candidate" class="candidate-image">
                <div class="candidate-info">
                    <div class="candidate-name">David Chen</div>
                    <div class="candidate-party">Progressive Students</div>
                    <p>Committed to sustainability initiatives and campus diversity.</p>
                </div>
                <button class="vote-btn">Vote</button>
            </div>
            
            <div style="text-align: center; margin-top: 2rem;">
                <button class="btn btn-primary" style="padding: 10px 20px;">Submit Your Vote</button>
                <p style="margin-top: 1rem; font-size: 0.9rem; color: #666;">Once submitted, your vote cannot be changed.</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>SecureVote</h3>
                    <p>A transparent and secure online voting platform for organizations, institutions, and communities.</p>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul style="list-style: none;">
                        <li><a href="#" style="color: white; text-decoration: none;">Home</a></li>
                        <li><a href="#" style="color: white; text-decoration: none;">Active Elections</a></li>
                        <li><a href="#" style="color: white; text-decoration: none;">Past Results</a></li>
                        <li><a href="#" style="color: white; text-decoration: none;">FAQ</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Contact Us</h3>
                    <p>Email: info@securevote.com</p>
                    <p>Phone: +1 (555) 123-4567</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2023 SecureVote. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Simple interactivity for demonstration
        document.addEventListener('DOMContentLoaded', function() {
            // Vote button functionality
            const voteButtons = document.querySelectorAll('.vote-btn');
            voteButtons.forEach(button => {
                button.addEventListener('click', function() {
                    // Deselect all other candidates
                    voteButtons.forEach(btn => {
                        btn.textContent = 'Vote';
                        btn.style.backgroundColor = '';
                        btn.parentElement.style.borderColor = '#eee';
                        btn.parentElement.style.backgroundColor = '';
                    });
                    
                    // Select this candidate
                    this.textContent = 'Selected ✓';
                    this.style.backgroundColor = '#3498db';
                    this.parentElement.style.borderColor = '#3498db';
                    this.parentElement.style.backgroundColor = '#f0f8ff';
                    
                    // In a real system, this would store the selection
                });
            });
            
            // Login/Register buttons
            const loginBtn = document.querySelector('.btn-outline');
            const registerBtn = document.querySelector('.btn-primary');
            
            loginBtn.addEventListener('click', function() {
                alert('Login functionality would be implemented here');
            });
            
            registerBtn.addEventListener('click', function() {
                alert('Registration functionality would be implemented here');
            });
        });
    </script>
</body>
</html>