<?php
#requires
require "config.php";
require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/src/models/ORDOX.php';


$URL = new Url();
$ordox = new ORDOX();


$pagina_principal = $URL->getURL(0); // ordox
$nome_loja = $URL->getURL(1);        // nome da loja
$id_mesa = $URL->getURL(2);          // id da mesa


if (empty($pagina_principal)) {
    include("src/views/home.inc.php");
    exit;
}
if ($pagina_principal === 'cardapio') {
    if (!empty($nome_loja)) {
        $todas_lojas = $ordox->SelectLojas();
        $urls_amigaveis = [];
        foreach ($todas_lojas as $loja) {
            $urls_amigaveis[] = $loja['url_amg'];
        }
        if (in_array($nome_loja, $urls_amigaveis)) {
            $loja_dados = $ordox->SelectLojas($nome_loja);
            if (!empty($loja_dados)) {
                $loja_info = $loja_dados[0];
                $loja_id = $loja_info['id_loja'];
                $loja_nome = $loja_info['nome_loja'];
                $mesa_id = !empty($id_mesa) ? $id_mesa : null;
                include("src/views/cardapio.inc.php");
                exit;
            }
        }
        include("src/views/404.inc.php");
        exit;
    }
    echo "<pre>";
    echo "<h1>Sistema OrdoX - QR Codes das Mesas</h1>";

    $lojas = $ordox->MesaID();
    $insert_urls = $ordox->gerarUrlAmigavel();
    echo "<h2>Mesas cadastradas:</h2>";
    foreach ($lojas as $loja) {
        $n_mesas = $loja['mesas'];
        $total_mesas = count($n_mesas);
        echo "O número de mesas para {$loja['loja_nome']} é {$total_mesas} <br><br>";
    }

    echo "<hr>";
    echo "<h2>QR Codes das mesas:</h2>";
    $ordox->MesaQRcode();
    echo "</pre>";
    exit;
}


include("src/views/404.inc.php");


