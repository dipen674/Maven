<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Understanding DevOps</title>
  <style>
    /* Base Styles */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background: #121212;
      color: #e0e0e0;
      line-height: 1.8;
    }

    a {
      color: #4dd0e1;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    /* Header */
    header {
      background: linear-gradient(90deg, #0f2027, #203a43, #2c5364);
      padding: 40px 20px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
    }

    header h1 {
      font-size: 40px;
      color: #00e5ff;
      letter-spacing: 1px;
    }

    /* Main Content */
    main {
      padding: 50px 10%;
      background-color: #1e1e1e;
    }

    h2 {
      color: #00bcd4;
      margin-top: 40px;
      font-size: 26px;
      border-left: 4px solid #00bcd4;
      padding-left: 12px;
      transition: all 0.3s ease-in-out;
    }

    h2:hover {
      color: #1de9b6;
      border-left-color: #1de9b6;
    }

    p, ul {
      margin: 15px 0;
      font-size: 16px;
    }

    ul {
      padding-left: 20px;
    }

    li {
      margin-bottom: 8px;
    }

    li::marker {
      color: #00e676;
    }

    section {
      margin-bottom: 40px;
      animation: fadeIn 0.6s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
    }

    /* Footer */
    footer {
      text-align: center;
      padding: 20px;
      background-color: #111;
      color: #aaa;
      font-size: 14px;
      border-top: 1px solid #333;
    }

    /* Responsive */
    @media (max-width: 768px) {
      main {
        padding: 30px 5%;
      }

      header h1 {
        font-size: 30px;
      }
    }
  </style>
</head>
<body>

  <header>
    <h1>Understanding DevOps</h1>
  </header>

  <main>
    <section>
      <h2>What is DevOps?</h2>
      <p>
        DevOps is a cultural and technical movement that brings together software development (Dev) and IT operations (Ops).
        It aims to automate and integrate the processes between software development and IT teams, allowing them to build,
        test, and release software faster and more reliably.
      </p>
    </section>


