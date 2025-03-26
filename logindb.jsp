<%@ page import="java.sql.*" %>
<%
    // Database connection details
    String url = "jdbc:postgresql://localhost:5432/travellomania";
    String dbUser = "postgres";  // Change to your PostgreSQL username
    String dbPassword = "swarali"; // Change to your PostgreSQL password

    // Get login form data
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        // Load PostgreSQL JDBC Driver
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(url, dbUser, dbPassword);

        // Check if email & password match
        String query = "SELECT * FROM users WHERE email=? AND password=?";
        pst = conn.prepareStatement(query);
        pst.setString(1, email);
        pst.setString(2, password);
        rs = pst.executeQuery();

        if (rs.next()) {
        	response.sendRedirect("login_process.jsp");

        } else {
            out.println("<script>alert('Invalid Email or Password!'); window.location.href='login.jsp';</script>");
        }
    } catch (Exception e) {
        out.println("<script>alert('Error: " + e.getMessage() + "'); window.location.href='login.jsp';</script>");
    } finally {
        if (rs != null) rs.close();
        if (pst != null) pst.close();
        if (conn != null) conn.close();
    }
%>
