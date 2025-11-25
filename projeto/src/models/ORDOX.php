<?php
require_once __DIR__ . '/../../public/assets/vendor/autoload.php';

use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;


class ORDOX
{

    public $db;

    /* construct */
    function __construct()
    {

        $this->db = new DB();
    }


//     public function SelectLojas($id = Null)
//     {
//         $wh = "";

//         if ($id)
//             $wh = " AND custom_lojas.url_amg = '{$id}'";

//         $db = $this->db;
//         $db->executeSql("
// SELECT 
//         custom_lojas.id as id_loja, 
//         custom_lojas.nome as nome_loja,
//         custom_lojas.endereco,
//         custom_lojas.telefone as tel,
//         custom_lojas.num_mesas,
    
    
//         GROUP_CONCAT(DISTINCT 
//             CONCAT_WS('|', custom_menus.id, custom_menus.nome, custom_menus.descricao) 
//             ORDER BY custom_menus.id 
//             SEPARATOR '::') as menus,
        
    
//         GROUP_CONCAT(DISTINCT 
//             CONCAT_WS('|', custom_categorias.id, custom_categorias.nome) 
//             ORDER BY custom_categorias.id 
//             SEPARATOR '::') as categorias,
    
   
//         GROUP_CONCAT(
//             CONCAT_WS('|', 
//                 custom_itens_cardapio.id, 
//                 custom_itens_cardapio.fk_custom_menu, 
//                 custom_itens_cardapio.fk_custom_categoria, 
//                 custom_itens_cardapio.nome, 
//                 COALESCE(custom_itens_cardapio.descricao, ''), 
//                 custom_itens_cardapio.preco, 
//                 COALESCE(custom_itens_cardapio.imagem_url, '')
//             ) 
//             ORDER BY custom_itens_cardapio.fk_custom_menu, custom_itens_cardapio.fk_custom_categoria, custom_itens_cardapio.id 
//             SEPARATOR '::') as itens,

//         custom_lojas.url_amg
        
//         FROM custom_lojas
//         LEFT JOIN custom_menus ON custom_menus.fk_lojas = custom_lojas.id
//         LEFT JOIN custom_itens_cardapio ON custom_itens_cardapio.fk_custom_menu = custom_menus.id
//         LEFT JOIN custom_categorias ON custom_categorias.id = custom_itens_cardapio.fk_custom_categoria
// 		WHERE custom_lojas.id<>0
//         $wh

//         GROUP BY custom_lojas.id, custom_lojas.nome, custom_lojas.endereco, custom_lojas.telefone, custom_lojas.num_mesas
// 		ORDER BY custom_lojas.id;
//          ");

//         $lojas = $db->fetchAll();

//         return $lojas;

//     }


//     public function MesaID()
//     {
//         $db = $this->db;

//         $selectlojas = $this->SelectLojas();

//         $resultado = [];

//         foreach ($selectlojas as $loja) {
//             $n_mesas = intval($loja['num_mesas']);


//             $db->executeSql("
//                     SELECT id, nome 
//                     FROM custom_mesas
//                     ORDER BY id
//                     LIMIT {$n_mesas}
//                 ");
//             $mesas_loja = $db->fetchAll();

//             $resultado[] = [
//                 'loja_id' => $loja['id_loja'],
//                 'loja_nome' => $loja['nome_loja'],
//                 'mesas' => $mesas_loja,
//                 'url' => $loja['url_amg']
//             ];
//         }

//         return $resultado;
//     }


//     function gerarUrlAmigavel()
//     {
//         $db = $this->db;
//         $db->executeSql(
//             "  
//             SELECT 
//             GROUP_CONCAT( DISTINCT custom_lojas.id ORDER BY custom_lojas.id SEPARATOR ':') as ids,
//             GROUP_CONCAT( DISTINCT custom_lojas.nome ORDER BY custom_lojas.id SEPARATOR ':') as nomes            
//             FROM custom_lojas"
//         );
//         $result = $db->fetch();


//         $ArrIDs = explode(":", $result['ids']);
//         $ArrNomes = explode(":", $result['nomes']);
//         $url = [];


//         for ($i = 0; $i < count($ArrNomes); $i++) {
//             $id = $ArrIDs[$i];
//             $nome = $ArrNomes[$i];

//             $UrlAmg = strtolower(trim($nome));
//             $UrlAmg = preg_replace('/[áàãâä]/u', 'a', $UrlAmg);
//             $UrlAmg = preg_replace('/[éèêë]/u', 'e', $UrlAmg);
//             $UrlAmg = preg_replace('/[íìîï]/u', 'i', $UrlAmg);
//             $UrlAmg = preg_replace('/[óòõôö]/u', 'o', $UrlAmg);
//             $UrlAmg = preg_replace('/[úùûü]/u', 'u', $UrlAmg);
//             $UrlAmg = preg_replace('/[ñ]/u', 'n', $UrlAmg);
//             $UrlAmg = preg_replace('/[ç]/u', 'c', $UrlAmg);
//             $UrlAmg = preg_replace('/[^a-z0-9]+/u', '-', $UrlAmg);
//             $UrlAmg = preg_replace('/-+/', '-', $UrlAmg);
//             $UrlAmg = trim($UrlAmg, '-');

//             $urls[] = [
//                 "id" => intval($id),
//                 "nome" => $UrlAmg
//             ];
//         }

//         foreach ($urls as $url) {
//             $query = "UPDATE custom_lojas SET url_amg = '{$url['nome']}' WHERE id = {$url['id']}";
//             $db->executeSql($query);
//         }

//         return $urls;
//     }

//     public function MesaQRcode()
//     {
//         $lojas = $this->MesaID();

//         foreach ($lojas as $loja) {
//             echo "<h2>{$loja['loja_nome']} (ID: {$loja['loja_id']})</h2>";
//             $urls = $loja['url'];

//             foreach ($loja['mesas'] as $mesa) {
//                 $id = $mesa['id'];
//                 $nome = $mesa['nome'];

//                 // Gerar link absoluto completo
//                 $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' ? 'https' : 'http';
//                 $host = $_SERVER['HTTP_HOST'];
//                 $basePath = PATH;
//                 $link = BASE_URL . "cardapio/{$urls}/{$id}";

//                 $qrCode = new QrCode($link);
//                 $qrCode->setSize(400);
//                 $qrCode->setMargin(20);
//                 $dataUri = $qrCode->writeDataUri();

//                 // Alinha o QR Code com o texto da mesa
//                 echo "<p style='display:flex; align-items:center; gap:10px; margin-bottom:5px;'>";
//                 echo "<span>Mesa: {$nome} | ID: {$id}</span>";
//                 echo "<a href='{$link}'><img src='{$dataUri}' alt='QR da mesa {$id}' style='width:40px; height:40px;'></a>";
//                 echo "</p>";
//             }

//             echo "<hr>";
//         }
//     }


//     public function SetarMesasComoLivres()
//     {
//         $db = $this->db;

//         // Atualiza todas as mesas de uma vez só
//         $query = "UPDATE custom_mesas SET fk_status_mesa = 1";

//         $db->executeSql($query);

//         echo "Todas as mesas foram atualizadas para status = 1 (Livre).";
//     }

    // ========== CRUD USUÁRIOS ==========

    /**
     * Lista todos os usuários (não deletados)
     * @return array
     */
    public function getUsuarios()
    {
        $db = $this->db;
        $db->executeSql("
            SELECT id, nome, email, cargo, created, updated 
            FROM custom_usuarios 
            WHERE deleted IS NULL OR deleted = 0 
            ORDER BY id DESC
        ");
        return $db->fetchAll();
    }

    /**
     * Busca um usuário por ID
     * @param int $id
     * @return array|false
     */
    public function getUsuario($id)
    {
        $db = $this->db;
        $id = intval($id);
            $db->executeSql("
            SELECT id, nome, email, cargo, created, updated 
            FROM custom_usuarios 
            WHERE id = {$id} AND (deleted IS NULL OR deleted = 0)
        ");
        return $db->fetch();
    }

    /**
     * Salva ou atualiza um usuário
     * @param array $data ['id' => int|null, 'nome' => string, 'email' => string, 'senha' => string|null, 'cargo' => string]
     * @return array ['success' => bool, 'message' => string, 'id' => int|null]
     */
    public function saveUsuario($data)
    {
        $db = $this->db;

        // Validações básicas
        if (empty($data['nome']) || empty($data['email']) || empty($data['cargo'])) {
            return ['success' => false, 'message' => 'Preencha todos os campos obrigatórios.'];
        }

        // Verificar se email já existe (exceto no próprio registro se for edição)
        $email = $db->quote($data['email']);
        $db->executeSql("
            SELECT id FROM custom_usuarios 
            WHERE email = {$email} AND (deleted IS NULL OR deleted = 0)
        ");
        $existing = $db->fetch();

        if ($existing && (!isset($data['id']) || $existing['id'] != $data['id'])) {
            return ['success' => false, 'message' => 'Este email já está cadastrado.'];
        }

        $isUpdate = isset($data['id']) && !empty($data['id']);
        $now = date('Y-m-d H:i:s');

        // Sanitizar dados
        $nome = $db->quote($data['nome']);
        $email = $db->quote($data['email']);
        $cargo = $db->quote($data['cargo']);
        $nowQuoted = $db->quote($now);

        if ($isUpdate) {
            // UPDATE
            $id = intval($data['id']);
            if (!empty($data['senha'])) {
                $senhaHash = password_hash($data['senha'], PASSWORD_DEFAULT);
                $senhaQuoted = $db->quote($senhaHash);
                $db->executeSql("
                    UPDATE custom_usuarios 
                    SET nome = {$nome}, email = {$email}, senha = {$senhaQuoted}, cargo = {$cargo}, updated = {$nowQuoted} 
                    WHERE id = {$id}
                ");
            } else {
                // Não atualiza senha se estiver vazia
                $db->executeSql("
                    UPDATE custom_usuarios 
                    SET nome = {$nome}, email = {$email}, cargo = {$cargo}, updated = {$nowQuoted} 
                    WHERE id = {$id}
                ");
            }
            return ['success' => true, 'message' => 'Usuário atualizado com sucesso!', 'id' => $id];
        } else {
            // INSERT
            if (empty($data['senha'])) {
                return ['success' => false, 'message' => 'A senha é obrigatória para novos usuários.'];
            }

            $senhaHash = password_hash($data['senha'], PASSWORD_DEFAULT);
            $senhaQuoted = $db->quote($senhaHash);
            $db->executeSql("
                INSERT INTO custom_usuarios (nome, email, senha, cargo, created, updated) 
                VALUES ({$nome}, {$email}, {$senhaQuoted}, {$cargo}, {$nowQuoted}, {$nowQuoted})
            ");

            $newId = $db->lastId();
            return ['success' => true, 'message' => 'Usuário cadastrado com sucesso!', 'id' => $newId];
        }
    }

    /**
     * Exclui (soft delete) um usuário
     * @param int $id
     * @return array ['success' => bool, 'message' => string]
     */
    public function deleteUsuario($id)
    {
        $db = $this->db;

        // Verificar se existe
        $usuario = $this->getUsuario($id);
        if (!$usuario) {
            return ['success' => false, 'message' => 'Usuário não encontrado.'];
        }

        // Soft delete
        $id = intval($id);
        $now = date('Y-m-d H:i:s');
        $nowQuoted = $db->quote($now);
        $db->executeSql("
            UPDATE custom_usuarios 
            SET deleted = 1, updated = {$nowQuoted} 
            WHERE id = {$id}
        ");

        return ['success' => true, 'message' => 'Usuário excluído com sucesso!'];
    }
}
