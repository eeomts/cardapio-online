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

// ============================================
// USERS PAGE SCRIPT - Adicione ao final do script.js
// ============================================

// User data
let users = [
    {
        id: 1,
        name: 'João Silva',
        email: 'joao.silva@food.com',
        phone: '+55 (34) 99999-0001',
        role: 'admin',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=12'
    },
    {
        id: 2,
        name: 'Maria Santos',
        email: 'maria.santos@food.com',
        phone: '+55 (34) 99999-0002',
        role: 'manager',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=45'
    },
    {
        id: 3,
        name: 'Pedro Costa',
        email: 'pedro.costa@food.com',
        phone: '+55 (34) 99999-0003',
        role: 'staff',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=33'
    },
    {
        id: 4,
        name: 'Ana Oliveira',
        email: 'ana.oliveira@food.com',
        phone: '+55 (34) 99999-0004',
        role: 'customer',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=48'
    },
    {
        id: 5,
        name: 'Carlos Ferreira',
        email: 'carlos.ferreira@food.com',
        phone: '+55 (34) 99999-0005',
        role: 'staff',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=68'
    },
    {
        id: 6,
        name: 'Juliana Souza',
        email: 'juliana.souza@food.com',
        phone: '+55 (34) 99999-0006',
        role: 'manager',
        status: 'inactive',
        avatar: 'https://i.pravatar.cc/150?img=26'
    },
    {
        id: 7,
        name: 'Roberto Lima',
        email: 'roberto.lima@food.com',
        phone: '+55 (34) 99999-0007',
        role: 'customer',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=52'
    },
    {
        id: 8,
        name: 'Fernanda Alves',
        email: 'fernanda.alves@food.com',
        phone: '+55 (34) 99999-0008',
        role: 'staff',
        status: 'active',
        avatar: 'https://i.pravatar.cc/150?img=38'
    }
];

let currentEditingId = null;

// Render users
function renderUsers(usersToRender = users) {
    const usersGrid = document.getElementById('usersGrid');
    if (!usersGrid) return; // Se não estiver na página de usuários, não executa

    usersGrid.innerHTML = '';

    // Add User Card (always first)
    const addCard = document.createElement('div');
    addCard.className = 'user-card add-user';
    addCard.onclick = () => openModal();
    addCard.innerHTML = `
        <div class="add-user-icon">
            <svg viewBox="0 0 24 24" fill="none">
                <path d="M12 5v14M5 12h14" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
            </svg>
        </div>
        <div class="add-user-text">Add New User</div>
    `;
    usersGrid.appendChild(addCard);

    // Render existing users
    usersToRender.forEach(user => {
        const userCard = document.createElement('div');
        userCard.className = 'user-card';
        userCard.innerHTML = `
            <div class="user-avatar">
                <img src="${user.avatar}" alt="${user.name}" onerror="this.src='https://i.pravatar.cc/150?img=1'">
            </div>
            <div class="user-info">
                <div class="user-name">${user.name}</div>
                <div class="user-email">${user.email}</div>
                <div class="user-phone">${user.phone}</div>
                <div class="user-role ${user.role}">${user.role.toUpperCase()}</div>
                <div class="user-status ${user.status}">
                    <span class="status-dot"></span>
                    ${user.status.toUpperCase()}
                </div>
            </div>
            <div class="user-actions">
                <button class="btn-edit" onclick="editUser(${user.id})">
                    <svg viewBox="0 0 24 24" fill="none">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                    Edit
                </button>
                <button class="btn-delete" onclick="deleteUser(${user.id})">
                    <svg viewBox="0 0 24 24" fill="none">
                        <path d="M3 6h18M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2M10 11v6M14 11v6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>
            </div>
        `;
        usersGrid.appendChild(userCard);
    });
}

// Open modal
function openModal(user = null) {
    const modal = document.getElementById('modalOverlay');
    const modalTitle = document.getElementById('modalTitle');

    if (user) {
        modalTitle.textContent = 'Edit User';
        document.getElementById('userName').value = user.name;
        document.getElementById('userEmail').value = user.email;
        document.getElementById('userPhone').value = user.phone;
        document.getElementById('userRole').value = user.role;
        document.getElementById('userStatus').value = user.status;
        currentEditingId = user.id;
    } else {
        modalTitle.textContent = 'Add New User';
        document.getElementById('userName').value = '';
        document.getElementById('userEmail').value = '';
        document.getElementById('userPhone').value = '';
        document.getElementById('userRole').value = 'admin';
        document.getElementById('userStatus').value = 'active';
        currentEditingId = null;
    }

    modal.classList.add('active');
}

// Close modal
function closeModal() {
    const modal = document.getElementById('modalOverlay');
    modal.classList.remove('active');
    currentEditingId = null;
}

// Save user
function saveUser() {
    const name = document.getElementById('userName').value.trim();
    const email = document.getElementById('userEmail').value.trim();
    const phone = document.getElementById('userPhone').value.trim();
    const role = document.getElementById('userRole').value;
    const status = document.getElementById('userStatus').value;

    if (!name || !email || !phone) {
        showNotification('Please fill all required fields', 'error');
        return;
    }

    if (currentEditingId) {
        // Edit existing user
        const userIndex = users.findIndex(u => u.id === currentEditingId);
        if (userIndex !== -1) {
            users[userIndex] = {
                ...users[userIndex],
                name,
                email,
                phone,
                role,
                status
            };
            showNotification('User updated successfully!', 'success');
        }
    } else {
        // Add new user
        const newUser = {
            id: users.length > 0 ? Math.max(...users.map(u => u.id)) + 1 : 1,
            name,
            email,
            phone,
            role,
            status,
            avatar: `https://i.pravatar.cc/150?img=${Math.floor(Math.random() * 70) + 1}`
        };
        users.push(newUser);
        showNotification('User added successfully!', 'success');
    }

    renderUsers();
    closeModal();
}

// Edit user
function editUser(userId) {
    const user = users.find(u => u.id === userId);
    if (user) {
        openModal(user);
    }
}

// Delete user
function deleteUser(userId) {
    if (confirm('Are you sure you want to delete this user?')) {
        users = users.filter(u => u.id !== userId);
        renderUsers();
        showNotification('User deleted successfully!', 'error');
    }
}

// Search functionality for users page
const searchInputUsers = document.getElementById('searchInputUsers');
if (searchInputUsers) {
    searchInputUsers.addEventListener('input', (e) => {
        const searchTerm = e.target.value.toLowerCase();
        const filteredUsers = users.filter(user => {
            return user.name.toLowerCase().includes(searchTerm) ||
                user.email.toLowerCase().includes(searchTerm) ||
                user.phone.toLowerCase().includes(searchTerm) ||
                user.role.toLowerCase().includes(searchTerm);
        });
        renderUsers(filteredUsers);
    });
}

// Close modal on overlay click
const modalOverlay = document.getElementById('modalOverlay');
if (modalOverlay) {
    modalOverlay.addEventListener('click', (e) => {
        if (e.target.id === 'modalOverlay') {
            closeModal();
        }
    });
}

// Close modal on ESC key
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape' && modalOverlay) {
        closeModal();
    }
});

// Initialize users page if on users page
if (document.getElementById('usersGrid')) {
    renderUsers();
}