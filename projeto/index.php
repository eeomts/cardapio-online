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
$acao = $url_segments[2] ?? null;

switch ($pagina) {
    case 'admin':
        // Processa ações AJAX primeiro (POST/GET com ação específica)
        if ($subpagina === 'usuarios' && $acao) {
            // Limpa qualquer output anterior
            if (ob_get_level()) {
                ob_clean();
            }
            
            // Define header JSON antes de qualquer output
            header('Content-Type: application/json; charset=utf-8');
            header('Cache-Control: no-cache, must-revalidate');
            
            $response = ['success' => false, 'message' => 'Ação não encontrada.', 'type' => 'error'];
            
            if ($acao === 'salvar' && $_SERVER['REQUEST_METHOD'] === 'POST') {
                // Salvar/Criar usuário
                $data = [
                    'id' => !empty($_POST['id']) ? intval($_POST['id']) : null,
                    'nome' => $_POST['nome'] ?? '',
                    'email' => $_POST['email'] ?? '',
                    'senha' => $_POST['senha'] ?? '',
                    'cargo' => $_POST['cargo'] ?? ''
                ];
                
                $result = $ordox->saveUsuario($data);
                $response = [
                    'success' => $result['success'],
                    'message' => $result['message'],
                    'type' => $result['success'] ? 'success' : 'error',
                    'reload' => $result['success'] ? 'reload' : null
                ];
            } elseif ($acao === 'excluir' && $_SERVER['REQUEST_METHOD'] === 'POST') {
                // Excluir usuário
                $id = isset($_POST['id']) ? intval($_POST['id']) : 0;
                if ($id > 0) {
                    $result = $ordox->deleteUsuario($id);
                    $response = [
                        'success' => $result['success'],
                        'message' => $result['message'],
                        'type' => $result['success'] ? 'success' : 'error',
                        'reload' => $result['success'] ? 'reload' : null
                    ];
                } else {
                    $response = [
                        'success' => false,
                        'message' => 'ID inválido.',
                        'type' => 'error'
                    ];
                }
            } elseif ($acao === 'listar' && $_SERVER['REQUEST_METHOD'] === 'GET') {
                // Listar todos os usuários
                $usuarios = $ordox->getUsuarios();
                $response = [
                    'success' => true,
                    'data' => $usuarios,
                    'type' => 'success'
                ];
            } elseif ($acao === 'buscar' && $_SERVER['REQUEST_METHOD'] === 'GET') {
                // Buscar usuário por ID
                $userId = isset($_GET['id']) ? intval($_GET['id']) : null;
                if ($userId) {
                    $usuario = $ordox->getUsuario($userId);
                    if ($usuario) {
                        $response = [
                            'success' => true,
                            'data' => $usuario,
                            'type' => 'success'
                        ];
                    } else {
                        $response = [
                            'success' => false,
                            'message' => 'Usuário não encontrado.',
                            'type' => 'error'
                        ];
                    }
                } else {
                    $response = [
                        'success' => false,
                        'message' => 'ID não informado.',
                        'type' => 'error'
                    ];
                }
            }
            
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
            exit;
        }
        
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