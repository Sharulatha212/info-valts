<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Animated Login/Signup</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background: url('https://img.freepik.com/free-vector/background-realistic-abstract-technology-particle_23-2148431735.jpg') no-repeat center center fixed;
  background-size: cover;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
    }

    .container {
      position: relative;
      width: 350px;
      background: white;
      padding: 2rem;
      border-radius: 20px;
      box-shadow: 0 0 40px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.6s ease-in-out;
    }

    .form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      animation: fadeIn 1s ease-in-out;
    }

    .form h2 {
      text-align: center;
      color: #333;
    }

    .form input {
      padding: 10px 15px;
      border: 1px solid #ccc;
      border-radius: 10px;
      outline: none;
      transition: border 0.3s ease;
    }

    .form input:focus {
      border-color: #2d89ef;
    }

    .form button {
      background: #2d89ef;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .form button:hover {
      background: #1864c7;
    }

    .switch {
      text-align: center;
      margin-top: 1rem;
    }

    .switch a {
      color: #2d89ef;
      cursor: pointer;
      text-decoration: none;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .hidden {
      display: none;
    }

  </style>
</head>
<body>
  <div class="container">
    <!-- LOGIN FORM -->
    <form class="form" id="loginForm">
      <h2>Login</h2>
      <input type="text" placeholder="Username" required />
      <input type="password" placeholder="Password" required />
      <button type="submit">Login</button>
      <div class="switch">
        Don't have an account? <a onclick="switchForm('signup')">Sign Up</a>
      </div>
    </form>

    <!-- SIGNUP FORM -->
    <form class="form hidden" id="signupForm">
      <h2>Sign Up</h2>
      <input type="text" placeholder="Username" required />
      <input type="email" placeholder="Email" required />
      <input type="password" placeholder="Password" required />
      <button type="submit">Register</button>
      <div class="switch">
        Already have an account? <a onclick="switchForm('login')">Login</a>
      </div>
    </form>
  </div>

  <script>
    const loginForm = document.getElementById('loginForm');
    const signupForm = document.getElementById('signupForm');
  
    function switchForm(form) {
      if (form === 'signup') {
        loginForm.classList.add('hidden');
        signupForm.classList.remove('hidden');
      } else {
        signupForm.classList.add('hidden');
        loginForm.classList.remove('hidden');
      }
    }
  
    // Redirect to study.html when login form is submitted
    loginForm.addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent actual form submission
      window.location.href = "study.html"; // Redirect to your desired page
    });
  </script>
  
</body>
</html>
