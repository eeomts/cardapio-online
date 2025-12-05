<?php
#esse projeto ate dia 31 de janeiro vai me render uns 5k
#eu so preciso focar e parar de procrastinar
#se eu acabar esse projeto vou estar satisfeito comigo mesmo
#eu aamo a isabela e vou casar
#nao sei pq na parte de usuarios eu coloquei status de usuario deletado ou ativo o deleted devia fazer isso
#mas a ia errou feio nas minhas tabelas pqp fico puto com esse trem pprt    
#vou ter que arrumar isso, uma gambiarra dessa nao vai ser daora nao pprt
#la no botao ao inves de mostrar ativo ou inativo eu vo colocar sei la, um neogcio pro admin marcar como ativo ou inativo
#pq se eu for fazer o deleted funcionar eu vou ter que mudar muita coisa
#vai toma no cu dessas IA burra plmds nao faz os trem direito com tanta bagagem que tem caceta
require_once __DIR__ . '/config.php';

$main = new Main();
$SelectUsers = $main->getAllUsers();
var_dump( $SelectUsers);
?>



<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Mar 2025 20:22:19 GMT -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Kofejob - Bootstrap Admin HTML Template</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?= BASE_URL; ?>assets/img/favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/plugins/fontawesome/css/all.min.css">

    <!-- Feather CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/css/feather.css">

    <!-- Select2 CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/plugins/select2/css/select2.min.css">

    <!-- Datepicker CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/css/bootstrap-datetimepicker.min.css">

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/plugins/datatables/datatables.min.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="<?= BASE_URL; ?>assets/css/style.css">

</head>

<body>



    <?php
    // Básico: roteamento mínimo para /admin/usuarios
    // `config.php` já instancia $url e define $pagina via $url->getURL(0)

    // Se a primeira parte da URL for 'admin', checa o próximo segmento
    if (isset($pagina) && $pagina === 'admin') {
        $sub = $url->getURL(1);

        // rota direta para a página de usuários (arquivo disponível no projeto)
        if ($sub === 'usuarios') {
            include __DIR__ . '/views/admin/usuarios.inc.php';
            exit;
        }

        // Se quiser adicionar mais rotas admin, expanda aqui
    }

    // Resto do roteamento público pode ser adicionado abaixo conforme necessário
    ?>


    <script src="<?= BASE_URL; ?>assets/js/jquery-3.7.1.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Bootstrap Core JS -->
    <script src="<?= BASE_URL; ?>assets/js/bootstrap.bundle.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Feather Icon JS -->
    <script src="<?= BASE_URL; ?>assets/js/feather.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Slimscroll JS -->
    <script src="<?= BASE_URL; ?>assets/plugins/slimscroll/jquery.slimscroll.min.js"
        type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Select2 JS -->
    <script src="<?= BASE_URL; ?>assets/plugins/select2/js/select2.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Datepicker Core JS -->
    <script src="<?= BASE_URL; ?>assets/plugins/moment/moment.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>
    <script src="<?= BASE_URL; ?>assets/js/bootstrap-datetimepicker.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Datatables JS -->
    <script src="<?= BASE_URL; ?>assets/plugins/datatables/jquery.dataTables.min.js"
        type="d6104258bafc933228575ac9-text/javascript"></script>
    <script src="<?= BASE_URL; ?>assets/plugins/datatables/datatables.min.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <!-- Custom JS -->
    <script src="<?= BASE_URL; ?>assets/js/script.js" type="d6104258bafc933228575ac9-text/javascript"></script>

    <script src="<?= BASE_URL; ?>cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="d6104258bafc933228575ac9-|49" defer></script>
    <script defer
        src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015"
        integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ=="
        data-cf-beacon='{"rayId":"9279d479e8065221","version":"2025.3.0","serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"token":"3ca157e612a14eccbb30cf6db6691c29","b":1}'
        crossorigin="anonymous"></script>
</body>

<!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Mar 2025 20:22:19 GMT -->

</html>


<?php


// $pagina = $url->getURL(0);

// // Roteamento Admin
// if ($pagina === 'admin') {

//     $sub = $url->getURL(1);

//     // Sessão inválida → direciona para login
//     if (!$ses->check() || !$ses->getSession('admin_id')) {
//         if ($sub !== 'login') {
//             header("Location: ".BASE_URL."admin/login");
//             exit;
//         }

//         // view de login simples sem layout
//         include "views/admin/login.inc.php";
//         exit;
//     }

//     // Logado → escolhe qual página embutir no layout
//     switch ($sub) {
//         case '':
//         case null:
//         case 'home':
//             $view = "views/admin/home.php";
//             break;

//         case 'usuarios':
//             $view = "views/admin/usuarios.php";
//             break;

//         case 'pedidos':
//             $view = "views/admin/pedidos.php";
//             break;

//         default:
//             $view = "views/admin/404.php";
//             break;
//     }

//     // Carrega layout com conteúdo dentro
//     include "views/admin/layout.php";
//     exit;
// }


// // ------- ROTAS PÚBLICAS -------
// if ($pagina === '' || $pagina === null) {
//     include "views/public/home.inc.php";
//     exit;
// }

// switch ($pagina) {
//     case 'cardapio':
//         include "views/public/cardapio.php";
//         break;

//     case 'contato':
//         include "views/public/contato.php";
//         break;

//     default:
//         include "views/public/404.php";
//         break;
// }
?>



</body>

</html>