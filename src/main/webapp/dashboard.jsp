<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<h1>Welcome, <%= session1.getAttribute("username") %></h1>
<a href="resumeForm.jsp">Create Resume</a><br>
<a href="viewResume.jsp">View Resume</a><br>
<a href="login.jsp">Logout</a>
</body>
</html>
