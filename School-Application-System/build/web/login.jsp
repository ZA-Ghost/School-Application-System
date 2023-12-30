<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4; /* Set a light background color for the whole page */
      margin: 0; /* Remove default margin */
    }

    h1 {
      text-align: center;
      color: #333;
      margin-top: 20px; /* Add space above the heading */
    }

    form {
      width: 70%;
      margin: 20px auto 0; /* Add space above the container */
      background-color: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border: 2px solid #333; /* Added border for a square look */
    }

    .form-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between; /* Ensure labels and inputs are next to each other */
      margin-bottom: 20px;
    }

    label {
     
      display: block;
      margin-bottom: 5px;
      color: #333;
    }

    input {
     
      width: calc(100% - 12px); /* Adjusted width to allow for padding */
      padding: 10px;
      box-sizing: border-box;
    }

    button {
      background-color: white;
      color: black;
      cursor: pointer;
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
    }

    button:hover {
      background-color: #808080;
    }
  </style>
</head>
<body>
  <h1>Login</h1>

  <form action="loginProcess.jsp" method="post">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <button type="submit">Login</button>
    </div>
  </form>

  <script src="script.js"></script>
</body>
</html>
