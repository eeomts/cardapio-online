<?php
echo "cardapios";
//
//$nome_loja = $URL->getURL(1);
//$id_mesa = $URL->getURL(2);
//$lojas = $ordox->SelectLojas($url_amg);
//
//if (empty($lojas)) {
//    echo '<p>Nenhum restaurante encontrado.</p>';
//    return;
//}
//
//foreach ($lojas as $loja) {
//    echo '<section class="restaurante">';
//    echo '<h2>' . htmlspecialchars($loja['nome_loja']) . '</h2>';
//    echo '<p>';
//    echo 'Endereço: ' . htmlspecialchars($loja['endereco'] ?? '') . '<br>';
//    echo 'Telefone: ' . htmlspecialchars($loja['tel'] ?? '') . '<br>';
//    echo 'Mesas: ' . intval($loja['num_mesas']);
//    echo '</p>';
//
//
//    $menus = [];
//    if (!empty($loja['menus'])) {
//        foreach (explode('::', $loja['menus']) as $m) {
//            $parts = explode('|', $m);
//            $id = $parts[0] ?? '';
//            $menus[$id] = [
//                'id' => $id,
//                'nome' => $parts[1] ?? '',
//                'descricao' => $parts[2] ?? ''
//            ];
//        }
//    }
//
//
//    $categorias = [];
//    if (!empty($loja['categorias'])) {
//        foreach (explode('::', $loja['categorias']) as $c) {
//            $parts = explode('|', $c);
//            $id = $parts[0] ?? '';
//            $categorias[$id] = [
//                'id' => $id,
//                'nome' => $parts[1] ?? ''
//            ];
//        }
//    }
//
//
//    $itens = [];
//    if (!empty($loja['itens'])) {
//        foreach (explode('::', $loja['itens']) as $it) {
//            $parts = explode('|', $it);
//            $itens[] = [
//                'id' => $parts[0] ?? '',
//                'fk_menu' => $parts[1] ?? '',
//                'fk_categoria' => $parts[2] ?? '',
//                'nome' => $parts[3] ?? '',
//                'descricao' => $parts[4] ?? '',
//                'preco' => $parts[5] ?? '',
//                'imagem' => $parts[6] ?? ''
//            ];
//        }
//    }
//
//    // Mostrar por menu -> categoria -> itens
//    if (!empty($menus)) {
//        foreach ($menus as $menu) {
//            echo '<div class="menu">';
//            echo '<h3>' . htmlspecialchars($menu['nome']) . '</h3>';
//            if (!empty($menu['descricao'])) {
//                echo '<p class="menu-desc">' . htmlspecialchars($menu['descricao']) . '</p>';
//            }
//
//
//            $itensPorCategoria = [];
//            foreach ($itens as $item) {
//                if ($item['fk_menu'] == $menu['id']) {
//                    $catId = $item['fk_categoria'] ?: 'sem_categoria';
//                    $itensPorCategoria[$catId][] = $item;
//                }
//            }
//
//            if (empty($itensPorCategoria)) {
//                echo '<p>Nenhum item neste menu.</p>';
//            } else {
//                foreach ($itensPorCategoria as $catId => $listaItens) {
//                    $catNome = isset($categorias[$catId]) ? $categorias[$catId]['nome'] : 'Sem categoria';
//                    echo '<h4>' . htmlspecialchars($catNome) . '</h4>';
//                    echo '<ul class="itens">';
//                    foreach ($listaItens as $it) {
//                        echo '<li>';
//                        echo '<strong>' . htmlspecialchars($it['nome']) . '</strong>';
//                        if ($it['descricao'] !== '') {
//                            echo ' - <span class="desc">' . htmlspecialchars($it['descricao']) . '</span>';
//                        }
//                        if ($it['preco'] !== '') {
//                            echo ' <em class="preco">R$ ' . htmlspecialchars($it['preco']) . '</em>';
//                        }
//                        if ($it['imagem'] !== '') {
//                            $img = htmlspecialchars($it['imagem']);
//                            echo '<div><img src="' . $img . '" alt="' . htmlspecialchars($it['nome']) . '" style="max-width:120px;"></div>';
//                        }
//                        echo '</li>';
//                    }
//                    echo '</ul>';
//                }
//            }
//
//            echo '</div>';
//        }
//    } else {
//        echo '<p>Sem menus cadastrados.</p>';
//    }
//
//    echo '</section><hr>';
//}

?>
<!--HTMLLLLLLLLLLLLLLLLLLLL a ajustar-->
<!-- Menu 1 -->
<div class="menu-container" id="menu1">
    <!-- Background Image with Overlay -->
    <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800" alt="Different food"
             class="hero-image">

    </div>

    <!-- Header -->
    <header class="header">
        <button class="icon-btn back-btn">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                <path d="M15 18L9 12L15 6" stroke="#ffffff" stroke-width="2" stroke-linecap="round"
                      stroke-linejoin="round"/>
            </svg>
        </button>
        <div class="header-icons">
            <button class="icon-btn">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                    <rect x="4" y="4" width="6" height="6" fill="#ffffff"/>
                    <rect x="14" y="4" width="6" height="6" fill="#ffffff"/>
                    <rect x="4" y="14" width="6" height="6" fill="#ffffff"/>
                    <rect x="14" y="14" width="6" height="6" fill="#ffffff"/>
                </svg>
            </button>
            <button class="icon-btn">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none">
                    <path d="M9 2L7.17 4H4C2.9 4 2 4.9 2 6V19C2 20.1 2.9 21 4 21H20C21.1 21 22 20.1 22 19V6C22 4.9 21.1 4 20 4H16.83L15 2H9ZM7 11V9H9V11H11V13H9V15H7V13H5V11H7ZM18 16H14V14H18V16Z"
                          fill="#ffffff"/>
                </svg>
            </button>
        </div>
    </header>

    <!-- Food Category Section -->
    <section class="category-section">
        <div class="category-header">
            <h2 class="category-title">Food Category</h2>
            <button class="scroll-btn">›</button>
        </div>

        <!-- Each food-item should be a direct child of owl-carousel -->
        <div class="food-carousel owl-carousel"
             data-owl-options='{
            "items": 3,
            "margin": 13,
            "smartSpeed": 600,
            "loop": false,
            "autoplay": true,
            "nav": false,
            "dots": true,
            "responsive": {
                "0": { "items": 1 },
                "400": { "items": 2 },
                "600": { "items": 3 }
            }
        }'>

            <div class="food-item scroll-animate">
                <img src="https://images.unsplash.com/photo-1585032226651-759b368d7246?w=400" alt="Noodles"
                     class="food-image">
                <h3 class="food-name">Noodles</h3>
                <p class="food-price">₹ 140.00</p>
                <button class="add-cart-btn">Add Cart</button>
            </div>

            <div class="food-item scroll-animate">
                <img src="https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=400" alt="Pasta Brunch"
                     class="food-image">
                <h3 class="food-name">Pasta Brunch</h3>
                <p class="food-price">₹ 178.00</p>
                <button class="add-cart-btn">Add Cart</button>
            </div>

            <div class="food-item scroll-animate">
                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400" alt="Pizza"
                     class="food-image">
                <h3 class="food-name">Pizza</h3>
                <p class="food-price">₹ 250.00</p>
                <button class="add-cart-btn">Add Cart</button>
            </div>

            <div class="food-item scroll-animate">
                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400" alt="Pizza"
                     class="food-image">
                <h3 class="food-name">Pizza</h3>
                <p class="food-price">₹ 250.00</p>
                <button class="add-cart-btn">Add Cart</button>
            </div>

            <div class="food-item scroll-animate">
                <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400" alt="Pizza"
                     class="food-image">
                <h3 class="food-name">Pizza</h3>
                <p class="food-price">₹ 250.00</p>
                <button class="add-cart-btn">Add Cart</button>
            </div>
        </div>
    </section>

    </section>
</div>



