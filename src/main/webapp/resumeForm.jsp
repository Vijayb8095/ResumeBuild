<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Resume</title>
</head>
<body>
<form action="ResumeServlet" method="post">
    <label>Full Name:</label><input type="text" name="fullName" required><br>
    <label>Email:</label><input type="email" name="email" required><br>
    <label>Phone:</label><input type="text" name="phone" required><br>
    <label>Address:</label><input type="text" name="address" required><br>
    <label>Education:</label><textarea name="education" required></textarea><br>
    <label>Experience:</label><textarea name="experience" required></textarea><br>
    <label>Skills:</label><textarea name="skills" required></textarea><br>
    <label>Certifications:</label><textarea name="certifications" required></textarea><br>
    <label>Projects:</label><textarea name="projects" required></textarea><br>
    <input type="submit" value="Submit">
    <br>
    <a href="logout.jsp">Logout</a>
</form>
</body>
</html>
