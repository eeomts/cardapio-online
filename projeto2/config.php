<?php
#Mostrar erros do php
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('memory_limit', '256M');
set_time_limit(8000);

error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('America/Sao_Paulo');
setlocale(LC_ALL, 'pt_BR.UTF8');
mb_internal_encoding('UTF8');
mb_regex_encoding('UTF8');

function enableCORS()
{
    // Allow from any origin
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

        exit(0);
    }
    return true;
}
enableCORS();

#Configurações do Host
if (strstr($_SERVER['SERVER_NAME'], "contratafashion.com")) {
    define("PDO_HOST", "netflex.ce2yhux0kpsq.sa-east-1.rds.amazonaws.com");
    define("PDO_USER", "netflex_v8_347");
    define("PDO_DB", "netflex_v8_347");
    define("PDO_PASS", "n_l4M1_Qu0o_MXsD");
    define("PDO_DRIVER", "mysql");
    define("PDO_PORT", "3306");
    define("PATH_UPLOAD", "http://www.netflexweb.com.br/app/Netflex/clientes/netflexv8_347/upload/");
    define("PATH", "app/");
    define("URL_EMAIL", "https://contratafashion.com/template_email/index.html");
} else {

    define("PDO_HOST", "localhost");
    define("PDO_USER", "root");
    define("PDO_DB", "ordox2");
    define("PDO_PASS", "");

    define("PDO_DRIVER", "mysql");
    define("PDO_PORT", "3306");
    define("PATH", "PHP-PESSOAL/PROJETOS/OrdoX/cardapio-online/projeto2/");
    define("PATH_UPLOAD", "");
    define("BASE_URL", "http://localhost/PHP-PESSOAL/PROJETOS/OrdoX/cardapio-online/projeto2/");

    define("URL_EMAIL", "https://contratafashion.com/template_email/index.html");
}

define("APP_ID", "FDAF151FDS");
define("APP_SECRET", "fd4f5a5-fd45a4f-fdsa4f54-f5dsafe");


#Diretorios
define('DS', DIRECTORY_SEPARATOR);
define('BASE_DIR', dirname(__FILE__) . DS);



#Auto load class
spl_autoload_register(function ($class) {
    $path = BASE_DIR . "models/{$class}.php";
    include $path;
});


#Instaciando as classes
$db = new Db();
$url = new Url();
$ses = new Session();
$ses->start();
$pagina = $url->getURL(0);

#$Netflex = new Netflex();


#Adicona classe active no menu atual
function isOnPage($page)
{
    $url = new Url();
    $pagina = $url->getURL(0);
    return ($pagina == $page) ? " class=\"active\"" : null;
}

#Limita string
function limitaStr($text, $limitar = 80, $limpar = true)
{
    if ($limpar == true) $text = strip_tags($text);
    if (strlen($text) <= $limitar) return $text;
    return substr($text, 0, strrpos(substr($text, 0, $limitar), ' ')) . '...';
}
#Formatação de Data
function parseDate($date, $outputFormat = 'd/m/Y')
{
    $formats = array(
        'd/m/Y',
        'd/m/Y H',
        'd/m/Y H:i',
        'd/m/Y H:i:s',
        'Y-m-d',
        'Y-m-d H',
        'Y-m-d H:i',
        'Y-m-d H:i:s',
        '%d de %B de %Y',
        'H:i:s',
        'H:i',
    );
    foreach ($formats as $format) {
        $dateObj = DateTime::createFromFormat($format, $date);
        if ($dateObj !== false) {
            break;
        }
    }
    if ($dateObj === false) {
        throw new Exception('Invalid date:' . $date);
    }
    return $dateObj->format($outputFormat);
}





function getCidadeEstado($id, $tipo)
{
    $db = new db();

    $tabela = ($tipo == 'cidade') ? 'cidade' : 'uf';
    $campo = ($tipo == 'cidade') ? 'nome' : 'uf';

    try {
        $db->executeSql("SELECT $campo FROM contas_$tabela WHERE id='{$id}'");
        $result = $db->fetch();
        return mb_strtoupper($result[$campo], "UTF-8");
    } catch (Exception $e) {
        return $e->getMessage();
    }
}
