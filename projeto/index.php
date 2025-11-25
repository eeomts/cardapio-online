<?php
#requires
require "config.php";
// require_once __DIR__ . '/src/assets/vendor/autoload.php';
// require_once __DIR__ . '/src/models/ORDOX.php';


$URL = new Url();
$ordox = new ORDOX();

// Roteamento Melhorado
$URL->getURLList(); // Força o processamento da URL
$url_segments = $URL->pag;

// Filtra elementos vazios e reindexa o array
$url_segments = array_values(array_filter($url_segments, function($value) {
    return $value !== '' && $value !== null;
}));

// Pega o primeiro segmento como página, ou 'home' se não houver
$pagina = $url_segments[0] ?? 'home';
$subpagina = $url_segments[1] ?? null;

switch ($pagina) {
    case 'admin':
        // Define qual view interna carregar
        $contentView = "";
        switch ($subpagina) {
            case 'usuarios':
                $contentView = "src/Views/Admin/usuarios.inc.php";
                break;
            case 'pedidos':
                $contentView = "src/Views/Admin/pedidos.inc.php";
                break;
            default:
                // Se acessar /admin sem subpagina, vai para pedidos (dashboard)
                $contentView = "src/Views/Admin/pedidos.inc.php";
                break;
        }
        
        // Carrega o layout mestre, que por sua vez inclui a $contentView
        include "src/Views/Admin/layout.php";
        break;

    case 'home':
    default:
        // Carrega o layout padrão da home (cliente)
        include "src/views/home_layout.php";
        break;
}
?>