<?php
// pedidos.inc.php - Conteúdo da view
?>
</main>
<script>
    $(document).ready(function() {
        // Tab switching logic
        $('.order-tab').click(function() {
            $('.order-tab').removeClass('active'); // Remove active de todas, mas mantem as cores de status
            // Nota: O CSS original pode usar active para styling, então talvez precisemos de uma classe especifica para seleção
            // ou apenas adicionar uma borda/indicador.
            $(this).addClass('active-tab'); // Classe ficticia para indicar seleção se 'active' conflitar
            
            const status = $(this).data('status');
            console.log('Filtrando por:', status);
            // AJAX para carregar pedidos por status
        });
    });
</script>
<main class="main-content">
    <div class="search-bar">
        <svg class="search-icon" viewBox="0 0 24 24" fill="none">
            <circle cx="11" cy="11" r="8" stroke="currentColor" stroke-width="2"/>
            <path d="M21 21l-4.35-4.35" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
        </svg>
        <input type="text" placeholder="Buscar pedido" id="searchInput">
    </div>
    <h2 class="order-list-title">Lista de Pedidos</h2>
    <div class="order-tabs">
        <button class="order-tab active" data-status="todos">Todos</button>
        <button class="order-tab pending" data-status="recebido">Recebidos</button>
        <button class="order-tab preparing" data-status="preparando">Preparando</button>
        <button class="order-tab completed" data-status="pronto">Prontos</button>
        <button class="order-tab rejected" data-status="cancelado">Cancelados</button>
    </div>
    <div class="orders-grid" id="ordersGrid">
        <div class="order-card">
            <div class="order-header">
                <span class="order-id">#1234</span>
                <span class="order-time">10:30</span>
            </div>
            <div class="order-items">
                <div class="order-item">
                    <span>1x X-Bacon</span>
                    <span>R$ 25,00</span>
                </div>
                <div class="order-item">
                    <span>2x Coca-Cola</span>
                    <span>R$ 12,00</span>
                </div>
            </div>
            <div class="order-footer">
                <div class="order-total">
                    <span>Total</span>
                    <span>R$ 37,00</span>
                </div>
                <div class="order-actions">
                    <button class="btn-action accept">Aceitar</button>
                    <button class="btn-action reject">Recusar</button>
                </div>
            </div>
        </div>
    </div>
</main>
