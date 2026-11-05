/**
 * Chetan Public School, Hubballi - Main Client-side Script
 */

document.addEventListener('DOMContentLoaded', function () {
    // 1. Highlight Active Nav Link based on Current Page URL
    try {
        const currentPath = window.location.pathname.toLowerCase();
        const navLinks = document.querySelectorAll('.main-navbar .nav-link, .main-navbar .dropdown-item');

        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            if (href) {
                const cleanHref = href.toLowerCase().replace('~/', '/');
                if (currentPath.endsWith(cleanHref) && cleanHref !== '/' && cleanHref !== '/default.aspx') {
                    link.classList.add('active');
                    const parentDropdown = link.closest('.dropdown');
                    if (parentDropdown) {
                        const toggle = parentDropdown.querySelector('.dropdown-toggle');
                        if (toggle) toggle.classList.add('active');
                    }
                }
            }
        });
    } catch (e) {
        console.warn('Nav highlight error:', e);
    }

    // 2. Auto-dismiss Alert messages after 5 seconds
    setTimeout(function () {
        const alertElements = document.querySelectorAll('.alert-dismissible');
        alertElements.forEach(alert => {
            if (window.bootstrap && bootstrap.Alert) {
                const bsAlert = new bootstrap.Alert(alert);
                bsAlert.close();
            } else {
                alert.style.display = 'none';
            }
        });
    }, 5000);

    // 3. Back to Top Smooth Button
    const backToTopBtn = document.getElementById('backToTopBtn');
    if (backToTopBtn) {
        window.addEventListener('scroll', function () {
            if (window.scrollY > 300) {
                backToTopBtn.style.display = 'block';
            } else {
                backToTopBtn.style.display = 'none';
            }
        });

        backToTopBtn.addEventListener('click', function () {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    }
});
