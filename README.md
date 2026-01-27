
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Welcome</title>
  <style>
    /* Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", sans-serif;
    }

    body {
      height: 100vh;
      background: radial-gradient(circle at top, #0f2027, #000);
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
      color: white;
    }

    /* Floating container */
    .container {
      text-align: center;
      animation: float 4s ease-in-out infinite;
    }

    /* Glow text */
    h1 {
      font-size: 3.5rem;
      letter-spacing: 2px;
      animation: glow 2s ease-in-out infinite alternate;
    }

    p {
      margin-top: 15px;
      font-size: 1.2rem;
      opacity: 0;
      animation: fadeIn 2s ease forwards;
      animation-delay: 1.5s;
    }

    /* Button */
    .btn {
      margin-top: 30px;
      padding: 12px 30px;
      border: 2px solid #00f7ff;
      color: #00f7ff;
      background: transparent;
      border-radius: 30px;
      font-size: 1rem;
      cursor: pointer;
      transition: all 0.3s ease;
      opacity: 0;
      animation: fadeIn 2s ease forwards;
      animation-delay: 2.5s;
    }

    .btn:hover {
      background: #00f7ff;
      color: black;
      box-shadow: 0 0 20px #00f7ff;
    }

    /* Animations */
    @keyframes glow {
      from {
        text-shadow: 0 0 10px #00f7ff;
      }
      to {
        text-shadow:
          0 0 20px #00f7ff,
          0 0 40px #00f7ff;
      }
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-15px);
      }
    }

    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }

    /* Floating particles */
    .particle {
      position: absolute;
      width: 6px;
      height: 6px;
      background: #00f7ff;
      border-radius: 50%;
      opacity: 0.6;
      animation: drift linear infinite;
    }

    @keyframes drift {
      from {
        transform: translateY(100vh);
      }
      to {
        transform: translateY(-10vh);
      }
    }
  </style>
</head>
<body>

  <!-- Particles -->
  <script>
    for (let i = 0; i < 30; i++) {
      const p = document.createElement("div");
      p.className = "particle";
      p.style.left = Math.random() * 100 + "vw";
      p.style.animationDuration = 5 + Math.random() * 10 + "s";
      document.body.appendChild(p);
    }
  </script>

  <!-- Content -->
  <div class="container">
    <h1>WELCOME</h1>
    <p>Explore • Learn • Build • Innovate</p>
    <button class="btn">Enter Project</button>
  </div>

</body>
</html>