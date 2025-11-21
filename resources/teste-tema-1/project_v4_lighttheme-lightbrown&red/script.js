// Scroll Animation Observer
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry, index) => {
        if (entry.isIntersecting) {
            // Add staggered delay for items
            setTimeout(() => {
                entry.target.classList.add('animate');
            }, index * 100);
            observer.unobserve(entry.target);
        }
    });
}, observerOptions);

// Observe all scroll-animate elements
const animateElements = document.querySelectorAll('.scroll-animate');
animateElements.forEach((el) => observer.observe(el));

// Add smooth scroll behavior to buttons
document.querySelectorAll('.scroll-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        window.scrollBy({
            top: 300,
            behavior: 'smooth'
        });
    });
});

// Back button functionality
document.querySelectorAll('.back-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
});

// Add to cart animation
document.querySelectorAll('.add-cart-btn').forEach(btn => {
    btn.addEventListener('click', function(e) {
        // Create ripple effect
        const ripple = document.createElement('span');
        const rect = this.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;
        
        ripple.style.cssText = `
            position: absolute;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.6);
            left: ${x}px;
            top: ${y}px;
            transform: translate(-50%, -50%) scale(0);
            animation: ripple 0.6s ease-out;
            pointer-events: none;
        `;
        
        this.style.position = 'relative';
        this.style.overflow = 'hidden';
        this.appendChild(ripple);
        
        setTimeout(() => ripple.remove(), 600);
        
        // Button feedback
        this.style.transform = 'scale(0.95)';
        setTimeout(() => {
            this.style.transform = 'scale(1)';
        }, 150);
    });
});

// Add ripple animation to CSS dynamically
const style = document.createElement('style');
style.textContent = `
    @keyframes ripple {
        to {
            transform: translate(-50%, -50%) scale(4);
            opacity: 0;
        }
    }
`;
document.head.appendChild(style);

// Search functionality with animation
const searchInput = document.querySelector('.search-input');
if (searchInput) {
    searchInput.addEventListener('focus', function() {
        this.style.transform = 'scale(1.02)';
    });
    
    searchInput.addEventListener('blur', function() {
        this.style.transform = 'scale(1)';
    });
    
    searchInput.addEventListener('input', function() {
        const value = this.value.toLowerCase();
        const listItems = document.querySelectorAll('.list-item');
        
        listItems.forEach(item => {
            const title = item.querySelector('.list-title').textContent.toLowerCase();
            if (title.includes(value)) {
                item.style.display = 'flex';
                item.style.animation = 'fadeInLeft 0.5s ease-out';
            } else {
                item.style.display = 'none';
            }
        });
    });
}

// Add fade in animation for search results
const fadeInStyle = document.createElement('style');
fadeInStyle.textContent = `
    @keyframes fadeInLeft {
        from {
            opacity: 0;
            transform: translateX(-20px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }
`;
document.head.appendChild(fadeInStyle);

// Parallax effect on hero image
let ticking = false;

window.addEventListener('scroll', () => {
    if (!ticking) {
        window.requestAnimationFrame(() => {
            const heroImage = document.querySelector('.hero-image');
            if (heroImage) {
                const scrolled = window.pageYOffset;
                heroImage.style.transform = `scaleY(-1) translateY(${scrolled * 0.5}px)`;
            }
            ticking = false;
        });
        ticking = true;
    }
});

// Icon hover effects with scale animation
document.querySelectorAll('.icon-btn').forEach(btn => {
    btn.addEventListener('mouseenter', function() {
        this.style.transition = 'transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1)';
        this.style.transform = 'scale(1.2) rotate(5deg)';
    });
    
    btn.addEventListener('mouseleave', function() {
        this.style.transform = 'scale(1) rotate(0deg)';
    });
});

// Food item hover effect with shadow
document.querySelectorAll('.food-item, .list-item').forEach(item => {
    item.addEventListener('mouseenter', function() {
        this.style.transition = 'all 0.3s ease';
        this.style.filter = 'brightness(1.1)';
    });
    
    item.addEventListener('mouseleave', function() {
        this.style.filter = 'brightness(1)';
    });
});

// Lazy loading for images
if ('IntersectionObserver' in window) {
    const imageObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.classList.add('loaded');
                imageObserver.unobserve(img);
            }
        });
    });
    
    document.querySelectorAll('img').forEach(img => {
        img.classList.add('loading');
        imageObserver.observe(img);
    });
}

// Stagger animation for food grid items
const foodGrids = document.querySelectorAll('.food-grid');
foodGrids.forEach(grid => {
    const items = grid.querySelectorAll('.food-item');
    items.forEach((item, index) => {
        item.style.transitionDelay = `${index * 0.1}s`;
    });
});

// Stagger animation for list items
const foodLists = document.querySelectorAll('.food-list');
foodLists.forEach(list => {
    const items = list.querySelectorAll('.list-item');
    items.forEach((item, index) => {
        item.style.transitionDelay = `${index * 0.05}s`;
    });
});

// Add scroll progress indicator
const scrollProgress = document.createElement('div');
scrollProgress.style.cssText = `
    position: fixed;
    top: 0;
    left: 0;
    height: 3px;
    background: linear-gradient(90deg, rgba(184, 92, 76, 0.75), rgba(139, 69, 58, 0.85));
    width: 0%;
    z-index: 9999;
    transition: width 0.1s ease;
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
`;
document.body.appendChild(scrollProgress);

window.addEventListener('scroll', () => {
    const windowHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
    const scrolled = (window.pageYOffset / windowHeight) * 100;
    scrollProgress.style.width = scrolled + '%';
});

// Filter button animation
const filterBtn = document.querySelector('.filter-btn');
if (filterBtn) {
    filterBtn.addEventListener('click', function() {
        this.style.animation = 'spin 0.5s ease';
        setTimeout(() => {
            this.style.animation = '';
        }, 500);
    });
}

const spinStyle = document.createElement('style');
spinStyle.textContent = `
    @keyframes spin {
        0% { transform: translateY(-50%) rotate(0deg); }
        100% { transform: translateY(-50%) rotate(360deg); }
    }
`;
document.head.appendChild(spinStyle);

// Log when page is fully loaded
window.addEventListener('load', () => {
    console.log('Menu loaded with scroll animations active');
});