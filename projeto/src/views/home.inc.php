<?php


echo "home<br><br><br><br>";

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
?>