<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="content">
        <!-- Display shopping cart contents here -->
        <div class="cart-item" id="cart-item-1">
            <img src="books/th.jpeg" alt="Book Cover">
            <div class="cart-item-details">
                <h2 class="book-title">Book Title</h2>
                <p class="book-author">Author Name</p>
                <p class="book-price">$19.99</p>
                
                <!-- Quantity Controls -->
                <div class="quantity-controls">
                    <button class="quantity-button" onclick="decreaseQuantity('cart-item-1')">-</button>
                    <span class="quantity">1</span>
                    <button class="quantity-button" onclick="increaseQuantity('cart-item-1')">+</button>
                </div>
                
                <!-- Total Amount -->
                <p class="total-amount">$19.99</p>
                
                <a href="#" class="btn" onclick="removeCartItem('cart-item-1')">Remove</a>
            </div>
        </div>
        <!-- Repeat for other cart items -->

        <!-- Payment Button -->
        <div id="payment-container" class="payment-container" style="display: none;">
            <a href="payment.jsp" class="payment-btn">Proceed to Payment</a>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

    <script>
        function decreaseQuantity(cartItemId) {
            var quantitySpan = document.querySelector("#" + cartItemId + " .quantity");
            var quantity = parseInt(quantitySpan.textContent);
            if (quantity > 1) {
                quantity--;
                quantitySpan.textContent = quantity;
                updateTotalAmount(cartItemId, quantity);
            }
            togglePaymentButton();
        }

        function increaseQuantity(cartItemId) {
            var quantitySpan = document.querySelector("#" + cartItemId + " .quantity");
            var quantity = parseInt(quantitySpan.textContent);
            quantity++;
            quantitySpan.textContent = quantity;
            updateTotalAmount(cartItemId, quantity);
            togglePaymentButton();
        }

        function updateTotalAmount(cartItemId, quantity) {
            var price = 19.99; // Replace with actual price
            var totalAmount = price * quantity;
            var totalAmountSpan = document.querySelector("#" + cartItemId + " .total-amount");
            totalAmountSpan.textContent = "$" + totalAmount.toFixed(2);
        }

        function removeCartItem(cartItemId) {
            var cartItem = document.getElementById(cartItemId);
            if (cartItem) {
                cartItem.parentNode.removeChild(cartItem);
                togglePaymentButton();
            }
        }

        function togglePaymentButton() {
            var paymentContainer = document.getElementById("payment-container");
            var cartItems = document.querySelectorAll(".cart-item");
            var shouldShowPayment = cartItems.length > 0;
            paymentContainer.style.display = shouldShowPayment ? "block" : "none";
        }
    </script>
</body>
</html>
