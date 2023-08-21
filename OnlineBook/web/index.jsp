<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Bookstore</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="content">
        <!-- Display genres here -->
        <div class="genre-section">
            <h2>Genres</h2>
            <ul class="genre-list">
                <li><a href="#genre-fiction">Fiction</a></li>
                <li><a href="#genre-mystery">Mystery</a></li>
                <li><a href="#genre-romance">Romance</a></li>
                <!-- Add more genres -->
            </ul>
        </div>
        
        <!-- Genre: Fiction -->
        <div class="genre" id="genre-romance">
            <h2>Fiction</h2>
            <div class="book-card">
                <img src="books/th.jpeg" alt="Book Cover">
                <h2 class="book-title">Merchant Of Venice</h2>
                <div class="details">
                <p class="book-author">Shakespeare</p>
                <p class="book-price">$19.99</p>
                <a href="Book.jsp?id=1" class="btn">View Details</a>
            </div>
                </div>
             <div class="book-card">
                <img src="" alt="Book Cover">
                <h2 class="book-title">The One You Cant Have</h2>
                <p class="book-author">Preeti Senon</p>
                <p class="book-price">$34.56</p>
                <a href="Book.jsp?id=2" class="btn">View Details</a>
            </div>
             <div class="book-card">
                <img src="" alt="Book Cover">
                <h2 class="book-title">I Too Had Love Story</h2>
                <p class="book-author">Ravinder Shingh</p>
                <p class="book-price">$26.99</p>
                <a href="Book.jsp?id=3" class="btn">View Details</a>
            </div>
             <div class="book-card">
                <img src="images/book1.jpg" alt="Book Cover">
                <h2 class="book-title">This Is Not Your Story</h2>
                <p class="book-author">Savi Sharma</p>
                <p class="book-price">$19.09</p>
                <a href="Book.jsp?id=4" class="btn">View Details</a>
            </div>
            <!-- Repeat for more fiction books -->
        </div>
        
        <!-- Genre: Mystery -->
        <div class="genre" id="genre-mystery">
            <h2>Mystery</h2>
            <div class="book-card">
                <img src="images/book2.jpg" alt="Book Cover">
                <h2 class="book-title">Mysterious Book</h2>
                <p class="book-author">Mystery Author</p>
                <p class="book-price">$24.99</p>
                <a href="book.jsp?id=6" class="btn">View Details</a>
            </div>
            <div class="book-card">
                <img src="images/book2.jpg" alt="Book Cover">
                <h2 class="book-title">Mysterious Book</h2>
                <p class="book-author">Mystery Author</p>
                <p class="book-price">$24.99</p>
                <a href="book.jsp?id=6" class="btn">View Details</a>
            </div>
            <div class="book-card">
                <img src="images/book2.jpg" alt="Book Cover">
                <h2 class="book-title">Mysterious Book</h2>
                <p class="book-author">Mystery Author</p>
                <p class="book-price">$24.99</p>
                <a href="book.jsp?id=6" class="btn">View Details</a>
            </div>
            <!-- Repeat for more mystery books -->
        </div>
        
        <!-- Genre: Romance -->
        <div class="genre" id="genre-fiction">
            <h2>Romance</h2>
            <div class="book-card">
                <img src="images/book3.jpg" alt="Book Cover">
                <h2 class="book-title">Love Story</h2>
                <p class="book-author">Romance Author</p>
                <p class="book-price">$18.99</p>
                <a href="book.jsp?id=10" class="btn">View Details</a>
            </div>
            <!-- Repeat for more romance books -->
        </div>
        
        <!-- Add more genre sections -->
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>
