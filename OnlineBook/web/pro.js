document.addEventListener('DOMContentLoaded', function () {
    const menuItems = document.querySelectorAll('.menu li');
    const contentDiv = document.querySelector('.content');

    const menuContent = {
        'Profile': '<h3>Profile Content</h3><p>This is the profile content.</p>',
        'Order History': '<h3>Order History Content</h3><p>This is the order history content.</p>',
        'Canceled Orders': '<h3>Canceled Orders Content</h3><p>This is the canceled orders content.</p>',
        'Track Orders': '<h3>Track Orders Content</h3><p>This is the track orders content.</p>',
        'Account Settings': '<h3>Account Settings Content</h3><p>This is the account settings content.</p>',
    };

    menuItems.forEach(menuItem => {
        menuItem.addEventListener('click', () => {
            menuItems.forEach(item => item.classList.remove('active'));
            menuItem.classList.add('active');
            const menuItemText = menuItem.textContent.trim();
            contentDiv.innerHTML = menuContent[menuItemText];
        });
    });
});
