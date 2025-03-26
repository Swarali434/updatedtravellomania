<!DOCTYPE html>
<html>
<head>
    <title>Payment - Travellomania</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .payment-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        label {
            font-weight: bold;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-btn {
            background-color: blue;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .submit-btn:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <h2>Payment Details</h2>
        <form action="paymentdb.jsp" method="post">
            
            <label for="bookingId">Booking ID:</label>
            <input type="text" id="bookingId" name="bookingId" required>

            <label for="amount">Amount:</label>
            <input type="number" step="0.01" id="amount" name="amount" required>

            <label for="paymentMode">Payment Mode:</label>
            <select id="paymentMode" name="paymentMode" required>
                <option value="Net Banking">Net Banking</option>
                <option value="Debit Card">Debit Card</option>
                <option value="UPI">UPI</option>
            </select>

            <label for="paymentStatus">Payment Status:</label>
            <select id="paymentStatus" name="paymentStatus" required>
                <option value="Pending">Pending</option>
                <option value="Completed">Completed</option>
                <option value="Failed">Failed</option>
            </select>

            <label for="transactionId">Transaction ID:</label>
            <input type="text" id="transactionId" name="transactionId" required>

            <button type="submit" class="submit-btn">Submit Payment</button>
        </form>
    </div>
</body>
</html>
