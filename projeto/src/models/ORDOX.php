<?php
require_once __DIR__ . '/../../vendor/autoload.php';
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;


class ORDOX
{

    public $db;

    /* construct */
    function __construct()
    {

        $this->db  = new DB();
    }


    public function SelectLojas($id = Null)
    {
        $wh = "";

        if ($id)
            $wh = " AND custom_lojas.url_amg = '{$id}'";

        $db = $this->db;
        $db->executeSql("
SELECT 
        custom_lojas.id as id_loja, 
        custom_lojas.nome as nome_loja,
        custom_lojas.endereco,
        custom_lojas.telefone as tel,
        custom_lojas.num_mesas,
    
    
        GROUP_CONCAT(DISTINCT 
            CONCAT_WS('|', custom_menus.id, custom_menus.nome, custom_menus.descricao) 
            ORDER BY custom_menus.id 
            SEPARATOR '::') as menus,
        
    
        GROUP_CONCAT(DISTINCT 
            CONCAT_WS('|', custom_categorias.id, custom_categorias.nome) 
            ORDER BY custom_categorias.id 
            SEPARATOR '::') as categorias,
    
   
        GROUP_CONCAT(
            CONCAT_WS('|', 
                custom_itens_cardapio.id, 
                custom_itens_cardapio.fk_custom_menu, 
                custom_itens_cardapio.fk_custom_categoria, 
                custom_itens_cardapio.nome, 
                COALESCE(custom_itens_cardapio.descricao, ''), 
                custom_itens_cardapio.preco, 
                COALESCE(custom_itens_cardapio.imagem_url, '')
            ) 
            ORDER BY custom_itens_cardapio.fk_custom_menu, custom_itens_cardapio.fk_custom_categoria, custom_itens_cardapio.id 
            SEPARATOR '::') as itens,

        custom_lojas.url_amg
        
        FROM custom_lojas
        LEFT JOIN custom_menus ON custom_menus.fk_lojas = custom_lojas.id
        LEFT JOIN custom_itens_cardapio ON custom_itens_cardapio.fk_custom_menu = custom_menus.id
        LEFT JOIN custom_categorias ON custom_categorias.id = custom_itens_cardapio.fk_custom_categoria
		WHERE custom_lojas.id<>0
        $wh

        GROUP BY custom_lojas.id, custom_lojas.nome, custom_lojas.endereco, custom_lojas.telefone, custom_lojas.num_mesas
		ORDER BY custom_lojas.id;
         ");

        $lojas = $db->fetchAll();

        return $lojas;

    }

    

    public function MesaID()
    {
        $db = $this->db;

        $selectlojas = $this->SelectLojas();

        $resultado = [];

        foreach ($selectlojas as $loja) {
            $n_mesas = intval($loja['num_mesas']);


            $db->executeSql("
                    SELECT id, nome 
                    FROM custom_mesas
                    ORDER BY id
                    LIMIT {$n_mesas}
                ");
            $mesas_loja = $db->fetchAll();

            $resultado[] = [
                'loja_id' => $loja['id_loja'],
                'loja_nome' => $loja['nome_loja'],
                'mesas' => $mesas_loja,
                'url' => $loja['url_amg']
            ];
        }

        return $resultado;
    }



    function gerarUrlAmigavel()
    {
        $db = $this->db;
        $db->executeSql(
            "  
            SELECT 
            GROUP_CONCAT( DISTINCT custom_lojas.id ORDER BY custom_lojas.id SEPARATOR ':') as ids,
            GROUP_CONCAT( DISTINCT custom_lojas.nome ORDER BY custom_lojas.id SEPARATOR ':') as nomes            
            FROM custom_lojas"
        );
        $result = $db->fetch();


        $ArrIDs = explode(":", $result['ids']);
        $ArrNomes = explode(":", $result['nomes']);
        $url = [];


        for ($i = 0; $i < count($ArrNomes); $i++) {
            $id = $ArrIDs[$i];
            $nome = $ArrNomes[$i];

            $UrlAmg = strtolower(trim($nome));
            $UrlAmg = preg_replace('/[áàãâä]/u', 'a', $UrlAmg);
            $UrlAmg = preg_replace('/[éèêë]/u', 'e', $UrlAmg);
            $UrlAmg = preg_replace('/[íìîï]/u', 'i', $UrlAmg);
            $UrlAmg = preg_replace('/[óòõôö]/u', 'o', $UrlAmg);
            $UrlAmg = preg_replace('/[úùûü]/u', 'u', $UrlAmg);
            $UrlAmg = preg_replace('/[ñ]/u', 'n', $UrlAmg);
            $UrlAmg = preg_replace('/[ç]/u', 'c', $UrlAmg);
            $UrlAmg = preg_replace('/[^a-z0-9]+/u', '-', $UrlAmg);
            $UrlAmg = preg_replace('/-+/', '-', $UrlAmg);
            $UrlAmg = trim($UrlAmg, '-');

            $urls[] = [
                "id" => intval($id),
                "nome" => $UrlAmg
            ];
        }

        foreach ($urls as $url) {
            $query = "UPDATE custom_lojas SET url_amg = '{$url['nome']}' WHERE id = {$url['id']}";
            $db->executeSql($query);
        }

        return $urls;
    }

    public function MesaQRcode()
    {
        $lojas = $this->MesaID();
    
        foreach ($lojas as $loja) {
            echo "<h2>{$loja['loja_nome']} (ID: {$loja['loja_id']})</h2>";
            $urls = $loja['url'];

            foreach ($loja['mesas'] as $mesa) {
                $id = $mesa['id'];
                $nome = $mesa['nome'];

                // Gerar link absoluto completo
                $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' ? 'https' : 'http';
                $host = $_SERVER['HTTP_HOST'];
                $basePath = PATH;
                $link = BASE_URL . "cardapio/{$urls}/{$id}";

                $qrCode = new QrCode($link);
                $qrCode->setSize(400); 
                $qrCode->setMargin(20); 
                $dataUri = $qrCode->writeDataUri();
                
                // Alinha o QR Code com o texto da mesa
                echo "<p style='display:flex; align-items:center; gap:10px; margin-bottom:5px;'>";
                echo "<span>Mesa: {$nome} | ID: {$id}</span>";
                echo "<a href='{$link}'><img src='{$dataUri}' alt='QR da mesa {$id}' style='width:40px; height:40px;'></a>";
                echo "</p>";
            }

            echo "<hr>";
        }
    }
    

    //     public function InsertMesas()
    // {
    //     $array_mesas = range(1, 10000);
    //     $db = $this->db;

    //     foreach ($array_mesas as $id) {
    //         $nomeMesa = "mesa " . $id;
    //         $query = "INSERT INTO custom_mesas (nome) VALUES ('$nomeMesa')";
    //         $db->executeSql($query);
    //     }

    //     echo "mesas inseridas com sucesso!";
    // }
}
