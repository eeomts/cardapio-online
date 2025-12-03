<?php require_once __DIR__ . '/config.php'; ?>
<?php var_dump(BASE_URL); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<?= BASE_URL ?>assets/css/style_admin.css">
</head>
<body>


    

<?php


$pagina = $url->getURL(0);

// Roteamento Admin
if ($pagina === 'admin') {

    $sub = $url->getURL(1);

    // Sessão inválida → direciona para login
    if (!$ses->check() || !$ses->getSession('admin_id')) {
        if ($sub !== 'login') {
            header("Location: ".BASE_URL."admin/login");
            exit;
        }

        // view de login simples sem layout
        include "views/admin/login.inc.php";
        exit;
    }

    // Logado → escolhe qual página embutir no layout
    switch ($sub) {
        case '':
        case null:
        case 'home':
            $view = "views/admin/home.php";
            break;

        case 'usuarios':
            $view = "views/admin/usuarios.php";
            break;

        case 'pedidos':
            $view = "views/admin/pedidos.php";
            break;

        default:
            $view = "views/admin/404.php";
            break;
    }

    // Carrega layout com conteúdo dentro
    include "views/admin/layout.php";
    exit;
}


// ------- ROTAS PÚBLICAS -------
if ($pagina === '' || $pagina === null) {
    include "views/public/home.inc.php";
    exit;
}

switch ($pagina) {
    case 'cardapio':
        include "views/public/cardapio.php";
        break;

    case 'contato':
        include "views/public/contato.php";
        break;

    default:
        include "views/public/404.php";
        break;
}
?>



</body>
</html>


