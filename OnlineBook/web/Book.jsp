<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Details</title>
    <link rel="stylesheet" href="style1.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="content">
        <!-- Display book details here -->
        <div class="book-details">
            <img src="books/th.jpeg" alt="Book Cover">
            <h2 class="book-title">Book Title</h2>
            <p class="book-author">Author Name</p>
            <p class="book-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit....</p>
            <p class="book-price">$19.99</p>
            <!-- Star Ratings -->
            <div class="star-ratings">
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
                <span class="star">&#9733;</span>
            </div>
            <a href="cart.jsp?action=addToCart&id=1" class="btn">Add to Cart</a>
            <!-- EMI Information -->
            <div class="emi-info">
                EMI Options Available | Starting from $5.00/month
            </div>
        </div>
        <!-- Repeat for other book details sections -->
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>
