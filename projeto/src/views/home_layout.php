<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Food - Order Management</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--fontes-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">


    <!--styles-->
    <link rel="stylesheet" href="<?= $URL->getBase(); ?>src/assets/css/style_client.css">
    <link rel="stylesheet" href="<?= $URL->getBase(); ?>src/assets/vendor/owl-carousel/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?= $URL->getBase(); ?>src/assets/vendor/owl-carousel/css/owl.theme.default.min.css" />

</head>
<body>

<?php include_once "src/views/cardapio_inicio.inc.php" ?>


<!--scripts-->
<script src="<?= $URL->getBase(); ?>src/assets/vendor/jquery/jquery-3.7.0.min.js"></script>
<script src="<?= $URL->getBase(); ?>src/assets/js/pages/script_client.js"></script>
<script src="<?= $URL->getBase(); ?>src/assets/js/main.js" type="text/javascript"></script>

<!--owl carrossel-->
<script src="<?= $URL->getBase(); ?>src/assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>
<script src="<?= $URL->getBase(); ?>src/assets/vendor/owl-carousel/js/owlcarousel2-filter.min.js"></script>


</body>
</html>
