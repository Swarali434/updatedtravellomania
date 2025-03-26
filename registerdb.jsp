<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String userType = request.getParameter("userType");
    String college = request.getParameter("college");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement ps = null;
    
    try {
        Class.forName("org.postgresql.Driver");  // Ensure PostgreSQL driver is loaded
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/travellomania", "postgres", "swarali");

        String query = "INSERT INTO users (first_name, last_name, email, phone, user_type, college, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
        ps = con.prepareStatement(query);
        ps.setString(1, firstName);
        ps.setString(2, lastName);
        ps.setString(3, email);
        ps.setString(4, phone);
        ps.setString(5, userType);
        ps.setString(6, college);
        ps.setString(7, password);

        int result = ps.executeUpdate();
        if (result > 0) {
            response.sendRedirect("register_process.jsp");  // Redirecting to success page
        } else {
            out.println("<script>alert('Registration Failed! Please try again.'); window.location.href='register.jsp';</script>");
        }
    } catch (Exception e) {
        out.println("<script>alert('Error: " + e.getMessage() + "'); window.location.href='register.jsp';</script>");
        e.printStackTrace();
    } finally {
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
%>
