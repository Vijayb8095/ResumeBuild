package com.resumebuilder.controller;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DownloadPDFServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/resume_builder";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int resumeId = Integer.parseInt(request.getParameter("resumeId"));

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT * FROM resumes WHERE resume_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, resumeId);

            ResultSet resultSet = stmt.executeQuery();
            if (resultSet.next()) {
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "attachment; filename=\"resume.pdf\"");

                Document document = new Document();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                PdfWriter.getInstance(document, baos);
                document.open();

                document.add(new Paragraph("Resume"));
                document.add(new Paragraph("Name: " + resultSet.getString("full_name")));
                document.add(new Paragraph("Email: " + resultSet.getString("email")));
                document.add(new Paragraph("Phone: " + resultSet.getString("phone")));
                document.add(new Paragraph("Address: " + resultSet.getString("address")));
                document.add(new Paragraph("Education: " + resultSet.getString("education")));
                document.add(new Paragraph("Experience: " + resultSet.getString("experience")));
                document.add(new Paragraph("Skills: " + resultSet.getString("skills")));
                document.add(new Paragraph("Certifications: " + resultSet.getString("certifications")));
                document.add(new Paragraph("Projects: " + resultSet.getString("projects")));

                document.close();

                response.setContentLength(baos.size());
                ServletOutputStream out = response.getOutputStream();
                baos.writeTo(out);
                out.flush();
            } else {
                response.sendRedirect("viewResume.jsp?error=Resume+not+found");
            }
        } catch (SQLException | DocumentException e) {
            e.printStackTrace();
            response.sendRedirect("viewResume.jsp?error=Database+error");
        }
    }
}
