<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Resume</title>
</head>
<body>
<form action="EditResumeServlet" method="post">
    <input type="hidden" name="resumeId" value="1"><!-- Replace with actual resumeId -->
    <label>Full Name:</label><input type="text" name="fullName" value="John Doe" required><br>
    <label>Email:</label><input type="email" name="email" value="john@example.com" required><br>
    <label>Phone:</label><input type="text" name="phone" value="123-456-7890" required><br>
    <label>Address:</label><input type="text" name="address" value="123 Main St" required><br>
    <label>Education:</label><textarea name="education" required>Sample Education</textarea><br>
    <label>Experience:</label><textarea name="experience" required>Sample Experience</textarea><br>
    <label>Skills:</label><textarea name="skills" required>Sample Skills</textarea><br>
    <label>Certifications:</label><textarea name="certifications" required>Sample Certifications</textarea><br>
    <label>Projects:</label><textarea name="projects" required>Sample Projects</textarea><br>
    <input type="submit" value="Update">
</form>
</body>
</html>
