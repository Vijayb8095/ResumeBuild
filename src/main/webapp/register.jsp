<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="RegisterServlet" method="post">
    <label>Username:</label><input type="text" name="username" required><br>
    <label>Password:</label><input type="password" name="password" required><br>
    <label>Email:</label><input type="email" name="email" required><br>
    <input type="submit" value="Register">
    <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
    
</form>
</body>
</html>
