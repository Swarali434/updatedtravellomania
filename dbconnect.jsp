<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:postgresql://localhost:5432/travellomania"; // Change port if needed
    String dbUser = "postgres";
    String dbPass = "swarali";
    Connection conn = null;
    String message = "";

    try {
        Class.forName("org.postgresql.Driver"); 
        conn = DriverManager.getConnection(url, dbUser, dbPass);
        message = "Database connection successful!";
    } catch (Exception e) {
        message = "Database connection failed: " + e.getMessage();
        e.printStackTrace();
    }
%>

<h3><%= message %></h3>
