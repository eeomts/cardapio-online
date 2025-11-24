// Order data
const orders = [
    {
        id: '#351',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=33',
        items: [
            {
                name: 'Vegetable Mixups',
                description: 'Vegetable Fritters with Egg',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'pending'
    },
    {
        id: '#350',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=12',
        items: [
            {
                name: 'Baked Pasted Dishes',
                description: 'Vegetable Fritters with Egg',
                price: '$2.48',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'rejected'
    },
    {
        id: '#349',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=68',
        items: [
            {
                name: 'Vegetable Mixups',
                description: 'Vegetable Fritters with Egg',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'completed'
    },
    {
        id: '#348',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=33',
        items: [
            {
                name: 'Vegetable Mixups',
                description: 'Vegetable Fritters with Egg',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'pending'
    },
    {
        id: '#347',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=12',
        items: [
            {
                name: 'Baked Pasted Dishes',
                description: 'Vegetable Fritters with Egg',
                price: '$2.48',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'rejected'
    },
    {
        id: '#346',
        date: '05 Feb 2023, 08:28 PM',
        avatar: 'https://i.pravatar.cc/150?img=68',
        items: [
            {
                name: 'Vegetable Mixups',
                description: 'Vegetable Fritters with Egg',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=200&h=200&fit=crop'
            },
            {
                name: 'Chinese Takeout Disj',
                description: 'Fresh Prawn mix salad',
                price: '$5.30',
                qty: 1,
                image: 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=200&h=200&fit=crop'
            }
        ],
        status: 'completed'
    }
];

// Render orders
function renderOrders(ordersToRender = orders) {
    const ordersGrid = document.getElementById('ordersGrid');
    ordersGrid.innerHTML = '';

    ordersToRender.forEach(order => {
        const orderCard = document.createElement('div');
        orderCard.className = 'order-card';
        orderCard.dataset.orderId = order.id;

        const itemsHTML = order.items.map(item => `
            <div class="order-item">
                <div class="item-image">
                    <img src="${item.image}" alt="${item.name}" onerror="this.src='https://via.placeholder.com/80?text=Food'">
                </div>
                <div class="item-details">
                    <div class="item-name">${item.name}</div>
                    <div class="item-description">${item.description}</div>
                    <div class="item-footer">
                        <span class="item-price">${item.price}</span>
                        <span class="item-qty">Qty: ${item.qty}</span>
                    </div>
                </div>
            </div>
        `).join('');

        let footerHTML = '';
        if (order.status === 'pending') {
            footerHTML = `
                <span class="order-count">X${order.items.length} Items</span>
                <div class="order-actions">
                    <button class="action-btn reject" onclick="handleReject('${order.id}')">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none">
                            <path d="M1 1L15 15M15 1L1 15" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                    </button>
                    <button class="action-btn accept" onclick="handleAccept('${order.id}')">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none">
                            <path d="M2 8L6 12L14 4" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                    </button>
                </div>
            `;
        } else if (order.status === 'completed') {
            footerHTML = `
                <span class="order-count">X${order.items.length} Items</span>
                <div class="status-badge completed">
                    <svg width="16" height="10" viewBox="0 0 16 10" fill="none">
                        <path d="M2 5L6 9L14 1" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                    </svg>
                    COMPLETED
                </div>
            `;
        } else if (order.status === 'rejected') {
            footerHTML = `
                <span class="order-count">X${order.items.length} Items</span>
                <div class="status-badge rejected">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M1 1L15 15M15 1L1 15" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                    </svg>
                    REJECTED
                </div>
            `;
        }

        orderCard.innerHTML = `
            <div class="order-header">
                <div class="order-info">
                    <h3>Order ${order.id}</h3>
                    <p>${order.date}</p>
                </div>
                <div class="order-avatar">
                    <img src="${order.avatar}" alt="Customer" onerror="this.src='https://i.pravatar.cc/150?img=1'">
                </div>
            </div>
            <div class="order-items">
                ${itemsHTML}
            </div>
            <div class="order-footer">
                ${footerHTML}
            </div>
        `;

        ordersGrid.appendChild(orderCard);
    });
}

// Handle accept
function handleAccept(orderId) {
    const order = orders.find(o => o.id === orderId);
    if (order) {
        order.status = 'completed';
        renderOrders();
        updateTabs();
        showNotification(`Order ${orderId} accepted!`, 'success');
    }
}

// Handle reject
function handleReject(orderId) {
    const order = orders.find(o => o.id === orderId);
    if (order) {
        order.status = 'rejected';
        renderOrders();
        updateTabs();
        showNotification(`Order ${orderId} rejected!`, 'error');
    }
}

// Update tabs
function updateTabs() {
    const tabs = document.querySelectorAll('.order-tab');
    tabs.forEach(tab => {
        const orderId = tab.textContent;
        const order = orders.find(o => o.id === orderId);
        if (order) {
            tab.className = `order-tab ${order.status}`;
        }
    });
}

// Show notification
function showNotification(message, type) {
    const notification = document.createElement('div');
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 16px 24px;
        background: ${type === 'success' ? '#87b6a1' : '#db79a9'};
        color: white;
        border-radius: 8px;
        font-size: 14px;
        z-index: 1000;
        animation: slideIn 0.3s ease;
    `;
    notification.textContent = message;
    document.body.appendChild(notification);

    setTimeout(() => {
        notification.style.animation = 'slideOut 0.3s ease';
        setTimeout(() => notification.remove(), 300);
    }, 2000);
}

// Search functionality
document.getElementById('searchInput').addEventListener('input', (e) => {
    const searchTerm = e.target.value.toLowerCase();
    const filteredOrders = orders.filter(order => {
        return order.id.toLowerCase().includes(searchTerm) ||
               order.items.some(item => 
                   item.name.toLowerCase().includes(searchTerm) ||
                   item.description.toLowerCase().includes(searchTerm)
               );
    });
    renderOrders(filteredOrders);
});

// Tab filtering
document.querySelectorAll('.order-tab').forEach(tab => {
    tab.addEventListener('click', () => {
        const orderId = tab.textContent;
        const order = orders.find(o => o.id === orderId);
        if (order) {
            renderOrders([order]);
        }
    });
});

// Initialize
renderOrders();
