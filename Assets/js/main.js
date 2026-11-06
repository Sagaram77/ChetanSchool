/**
 * Chetan Public School, Hubballi - Main Client-side Script
 */

document.addEventListener('DOMContentLoaded', function () {
    // 1. Highlight Single Exact Active Nav Link based on Current Page URL (Fixes Multiple Active Items)
    try {
        const rawPath = window.location.pathname.toLowerCase();
        // Extract filename, e.g. "viceprincipalsdesk.aspx"
        const currentFileName = rawPath.substring(rawPath.lastIndexOf('/') + 1) || 'default.aspx';
        const isHomePage = (currentFileName === 'default.aspx' || currentFileName === '' || rawPath === '/');

        const navLinks = document.querySelectorAll('.main-navbar .nav-link, .main-navbar .dropdown-item');

        navLinks.forEach(link => {
            link.classList.remove('active');
            const href = link.getAttribute('href');
            if (href && href !== '#' && !href.startsWith('javascript:')) {
                const cleanHref = href.split('?')[0].split('#')[0].toLowerCase().replace('~/', '/');
                const linkFileName = cleanHref.substring(cleanHref.lastIndexOf('/') + 1) || 'default.aspx';

                let isMatch = false;
                if (isHomePage) {
                    if (linkFileName === 'default.aspx' && !link.classList.contains('dropdown-item')) {
                        isMatch = true;
                    }
                } else {
                    // Exact filename match: "viceprincipalsdesk.aspx" strictly matches only "viceprincipalsdesk.aspx"
                    if (linkFileName === currentFileName && linkFileName !== 'default.aspx') {
                        isMatch = true;
                    }
                }

                if (isMatch) {
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

    // 2. Two School Header Versions: Auto-switch between Default and Compact Header on Scroll
    try {
        const fixedHeader = document.getElementById('fixedHeader');
        const mainHeader = document.getElementById('mainSchoolHeader');

        if (fixedHeader && mainHeader) {
            function updateHeaderScrollState() {
                const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                const mainHeaderRect = mainHeader.getBoundingClientRect();

                // When default main header scrolls past top or scrollTop exceeds 100px
                if (mainHeaderRect.bottom <= 10 || scrollTop > 100) {
                    fixedHeader.classList.add('header-visible');
                } else {
                    fixedHeader.classList.remove('header-visible');
                }
            }

            window.addEventListener('scroll', updateHeaderScrollState, { passive: true });
            // Initial check on load
            setTimeout(updateHeaderScrollState, 100);
        }
    } catch (e) {
        console.warn('Fixed header scroll handler error:', e);
    }

    // 3. Auto-dismiss Alert messages after 5 seconds
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

    // 4. Back to Top Smooth Button
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
