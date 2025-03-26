<%@ page import="java.sql.*" %>
<%
    // Database connection parameters
    String url = "jdbc:postgresql://localhost:5432/travellomania";
    String user = "postgres";
    String password = "swarali";

    // Retrieve form parameters
    String bookingId = request.getParameter("bookingId");
    String amount = request.getParameter("amount");
    String paymentMode = request.getParameter("paymentMode");
    String paymentStatus = request.getParameter("paymentStatus");
    String transactionId = request.getParameter("transactionId");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load PostgreSQL driver
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(url, user, password);
        
        // SQL insert query
        String sql = "INSERT INTO payment (booking_id, amount, payment_mode, payment_status, transaction_id) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        
        pstmt.setInt(1, Integer.parseInt(bookingId));
        pstmt.setBigDecimal(2, new java.math.BigDecimal(amount));
        pstmt.setString(3, paymentMode);
        pstmt.setString(4, paymentStatus);
        pstmt.setString(5, transactionId);
        
        int rowsInserted = pstmt.executeUpdate();
        if (rowsInserted > 0) {
            out.println("<h3>Payment recorded successfully!</h3>");
        } else {
            out.println("<h3>Failed to record payment.</h3>");
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
