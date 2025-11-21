<?php
echo "cardapios";

$nome_loja = $URL->getURL(1);
$id_mesa = $URL->getURL(2);
$lojas = $ordox->SelectLojas($url_amg);

if (empty($lojas)) {
    echo '<p>Nenhum restaurante encontrado.</p>';
    return;
}

foreach ($lojas as $loja) {
    echo '<section class="restaurante">';
    echo '<h2>' . htmlspecialchars($loja['nome_loja']) . '</h2>';
    echo '<p>';
    echo 'Endereço: ' . htmlspecialchars($loja['endereco'] ?? '') . '<br>';
    echo 'Telefone: ' . htmlspecialchars($loja['tel'] ?? '') . '<br>';
    echo 'Mesas: ' . intval($loja['num_mesas']);
    echo '</p>';

    // Parse menus
    $menus = [];
    if (!empty($loja['menus'])) {
        foreach (explode('::', $loja['menus']) as $m) {
            $parts = explode('|', $m);
            $id = $parts[0] ?? '';
            $menus[$id] = [
                'id' => $id,
                'nome' => $parts[1] ?? '',
                'descricao' => $parts[2] ?? ''
            ];
        }
    }

    // Parse categorias
    $categorias = [];
    if (!empty($loja['categorias'])) {
        foreach (explode('::', $loja['categorias']) as $c) {
            $parts = explode('|', $c);
            $id = $parts[0] ?? '';
            $categorias[$id] = [
                'id' => $id,
                'nome' => $parts[1] ?? ''
            ];
        }
    }

    // Parse itens
    $itens = [];
    if (!empty($loja['itens'])) {
        foreach (explode('::', $loja['itens']) as $it) {
            $parts = explode('|', $it);
            $itens[] = [
                'id' => $parts[0] ?? '',
                'fk_menu' => $parts[1] ?? '',
                'fk_categoria' => $parts[2] ?? '',
                'nome' => $parts[3] ?? '',
                'descricao' => $parts[4] ?? '',
                'preco' => $parts[5] ?? '',
                'imagem' => $parts[6] ?? ''
            ];
        }
    }

    // Mostrar por menu -> categoria -> itens
    if (!empty($menus)) {
        foreach ($menus as $menu) {
            echo '<div class="menu">';
            echo '<h3>' . htmlspecialchars($menu['nome']) . '</h3>';
            if (!empty($menu['descricao'])) {
                echo '<p class="menu-desc">' . htmlspecialchars($menu['descricao']) . '</p>';
            }

            // Agrupar itens por categoria dentro deste menu
            $itensPorCategoria = [];
            foreach ($itens as $item) {
                if ($item['fk_menu'] == $menu['id']) {
                    $catId = $item['fk_categoria'] ?: 'sem_categoria';
                    $itensPorCategoria[$catId][] = $item;
                }
            }

            if (empty($itensPorCategoria)) {
                echo '<p>Nenhum item neste menu.</p>';
            } else {
                foreach ($itensPorCategoria as $catId => $listaItens) {
                    $catNome = isset($categorias[$catId]) ? $categorias[$catId]['nome'] : 'Sem categoria';
                    echo '<h4>' . htmlspecialchars($catNome) . '</h4>';
                    echo '<ul class="itens">';
                    foreach ($listaItens as $it) {
                        echo '<li>';
                        echo '<strong>' . htmlspecialchars($it['nome']) . '</strong>';
                        if ($it['descricao'] !== '') {
                            echo ' - <span class="desc">' . htmlspecialchars($it['descricao']) . '</span>';
                        }
                        if ($it['preco'] !== '') {
                            echo ' <em class="preco">R$ ' . htmlspecialchars($it['preco']) . '</em>';
                        }
                        if ($it['imagem'] !== '') {
                            $img = htmlspecialchars($it['imagem']);
                            echo '<div><img src="' . $img . '" alt="' . htmlspecialchars($it['nome']) . '" style="max-width:120px;"></div>';
                        }
                        echo '</li>';
                    }
                    echo '</ul>';
                }
            }

            echo '</div>'; // menu
        }
    } else {
        echo '<p>Sem menus cadastrados.</p>';
    }

    echo '</section><hr>';
}
?>