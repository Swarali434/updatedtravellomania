<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Get form values with null checks
    String membersParam = request.getParameter("members");
    int numMembers = (membersParam != null && !membersParam.isEmpty()) ? Integer.parseInt(membersParam) : 1; // Default 1

    String city = request.getParameter("city") != null ? request.getParameter("city") : "";
    String hotelChoice = request.getParameter("hotel") != null ? request.getParameter("hotel") : "";
    String foodPreference = request.getParameter("food") != null ? request.getParameter("food") : "";

    // Default booking status
    String bookingStatus = "Pending"; 

    // Database connection details
    String url = "jdbc:postgresql://localhost:5432/travellomania"; // Change to your DB
    String dbUser = "postgres"; // Change to your DB username
    String dbPassword = "swarali"; // Change to your DB password

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load PostgreSQL driver
        Class.forName("org.postgresql.Driver");

        // Establish connection
        conn = DriverManager.getConnection(url, dbUser, dbPassword);

        // Insert booking details into the database (Auto-incremented user_id)
        String sql = "INSERT INTO booking(num_members, city, hotel_choice, food_preference, booking_status) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);

        pstmt.setInt(1, numMembers);
        pstmt.setString(2, city);
        pstmt.setString(3, hotelChoice);
        pstmt.setString(4, foodPreference);
        pstmt.setString(5, bookingStatus);

        int rowsInserted = pstmt.executeUpdate();

        if (rowsInserted > 0) {
            out.println("<h3>Booking Successful!</h3>");
        } else {
            out.println("<h3>Booking Failed! Please try again.</h3>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
