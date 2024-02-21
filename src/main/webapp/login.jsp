<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration and Login Form</title>
    <style>
        .container {
            width: 50%;
            margin: auto;
            text-align: center;
        }
        .success-message {
            color: green;
        }
        .error-message {
            color: red;
        }
        #google-logo {
            width: 100px; /* Adjust the width as needed */
            height: auto;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("Name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        String confirmPassword = request.getParameter("psw-repeat");

        if (password.equals(confirmPassword)) {
            // Display a message indicating successful registration
            out.println("<div class=\"container\">");
            out.println("<h1 class=\"success-message\">Thank you, " + name + "! You are logged in.</h1>");
            out.println("<img src=\"/home/idrbt/Downloads/fb.jpg\" alt=\"Profile Image\">");
            out.println("</div>");
        } else {
            // Display a message indicating password mismatch
            out.println("<div class=\"container\">");
            out.println("<p class=\"error-message\">Passwords do not match. Please try again.</p>");
            out.println("</div>");
        }
    }
%>

<form action="<%= request.getContextPath() %>/main" method="post" enctype="multipart/form-data">
    <div class="container">
        <h1>New user Register for Facebook Lite</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="Name"><b>Enter Name</b></label>
        <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
        <br>

        <label for="mobile"><b>Enter mobile</b></label>
        <input type="text" placeholder="Enter mobile number" name="mobile" id="mobile" required>
        <br>

        <label for="email"><b>Enter Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" id="email" required>
        <br>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
        <br>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
        <br>

        <label for="profileImage">Choose Profile Image:</label>
        <input type="file" id="profileImage" name="profileImage" accept="image/*">
        <br>

        <img id="google-logo" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png" alt="Google Logo">
        <!-- Replace the above image URL with the one you prefer -->

        <hr>
        <br>
        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
        <button type="submit" class="registerbtn">Register</button>
    </div>
</form>

<div class="container">
    <h1>Login to Facebook Lite</h1>
    <form action="<%= request.getContextPath() %>/login" method="post">
        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>
        <br>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>
        <br>

        <button type="submit" class="registerbtn">Login</button>
    </form>
</div>

</body>
</html>
