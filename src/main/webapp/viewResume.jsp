<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html>
<head>
    <title>View Resume</title>
</head>
<body>
<%
    HttpSession session1 = request.getSession(false);
    if (session == null || session1.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    int resumeId = 1; 
%>
<h1>Your Resume</h1>
<a href="DownloadPDFServlet?resumeId=<%= resumeId %>">Download as PDF</a><br>
<a href="editResume.jsp?resumeId=<%= resumeId %>">Edit Resume</a><br>
<a href="login.jsp">Logout</a>
</body>
</html>
