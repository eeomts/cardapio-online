<?php
// layout.php - Layout Mestre do Admin
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food - Admin</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="<?= $URL->getBase(); ?>public/assets/admin/css/styles.css">
</head>
<body>
    <!-- Background -->
    <div class="background">
        <div class="gradient-blob gradient-1"></div>
        <div class="gradient-blob gradient-2"></div>
        <div class="gradient-blob gradient-3"></div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="logo">
                <span class="f">f</span>oo<span class="d">d</span>
                <div class="logo-face">
                    <div class="logo-eye"></div>
                    <div class="logo-eye"></div>
                </div>
                <div class="logo-smile"></div>
            </div>

            <nav class="nav-menu">
                <div class="nav-item <?= (strpos($_SERVER['REQUEST_URI'], 'pedidos') !== false || $_SERVER['REQUEST_URI'] == '/admin') ? 'active' : '' ?>" onclick="window.location.href='<?= $URL->getBase(); ?>admin/pedidos'">
                    <div class="icon">
                        <svg viewBox="0 0 24 24" fill="none">
                            <path d="M3 9L12 2L21 9V20C21 20.5304 20.7893 21.0391 20.4142 21.4142C20.0391 21.7893 19.5304 22 19 22H5C4.46957 22 3.96086 21.7893 3.58579 21.4142C3.21071 21.0391 3 20.5304 3 20V9Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M9 22V12H15V22" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <span>HOME</span>
                </div>

                <div class="nav-item">
                    <div class="icon">
                        <svg viewBox="0 0 24 24" fill="none">
                            <circle cx="12" cy="12" r="10" stroke="currentColor" stroke-width="2"/>
                            <path d="M12 6v6l4 2" stroke="currentColor" stroke-width="2" stroke-linecap="round"/>
                        </svg>
                    </div>
                    <span>HISTÓRICO</span>
                </div>

                <div class="nav-item <?= (strpos($_SERVER['REQUEST_URI'], 'usuarios') !== false) ? 'active' : '' ?>" onclick="window.location.href='<?= $URL->getBase(); ?>admin/usuarios'">
                    <div class="icon">
                        <svg viewBox="0 0 24 24" fill="none">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <circle cx="9" cy="7" r="4" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <span>USUÁRIOS</span>
                </div>
            </nav>

            <div class="logout">
                <div class="nav-item">
                    <div class="icon">
                        <svg viewBox="0 0 24 24" fill="none">
                            <path d="M9 21H5C4.46957 21 3.96086 20.7893 3.58579 20.4142C3.21071 20.0391 3 19.5304 3 19V5C3 4.46957 3.21071 3.96086 3.58579 3.58579C3.96086 3.21071 4.46957 3 5 3H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M16 17L21 12L16 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M21 12H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <span>SAIR</span>
                </div>
            </div>
        </aside>

        <!-- Main Content Area -->
        <?php 
        if (isset($contentView) && file_exists($contentView)) {
            include $contentView;
        } else {
            echo "<main class='main-content'><h1>Erro: View não encontrada.</h1></main>";
        }
        ?>
        
    </div>

    <script src="<?= $URL->getBase(); ?>public/assets/admin/js/script.js"></script>
    <!-- Scripts específicos da view podem ser injetados aqui se necessário, ou incluídos na própria view -->
</body>
</html>
