<?php
/**
 * Session class
 *
 * @author Rafael Clares <rafadinix@gmail.com>
 * @version 1.0  <10/2010>
 * web: www.clares.wordpress.com
 * 
 */
class Session{

    /**
     * $session = new Session;
     * $session->init(TimeLife);
     * $session->setMsg("Hello, ".$session->getId()."." );
     * $session->check();
     * $session->status();
     * $session->destroy();
     */
    public  $session_message = "A sessão requerida não está ativa";

    public function start(){
        @session_start();
    }
    
    public function init($timeLife = null)
    {
        $this->start();
        
	$_SESSION['ACTIVITY_ID'] = md5(uniqid(time()));
	$_SESSION['LAST_ACTIVITY'] = time();
	if($timeLife != null)
	{
	    $_SESSION['LIFE_TIME'] = $timeLife;
	}
	else
	{
	   $_SESSION['LIFE_TIME'] = 3600;
	}
    }

    public function getLeftTime()
    {
	$minutos = floor(($_SESSION['LIFE_TIME'] - (time() - $_SESSION['LAST_ACTIVITY']) ) / 60 );
	$segundos = (($_SESSION['LIFE_TIME'] - (time() - $_SESSION['LAST_ACTIVITY']) ) % 60 );
	if($segundos <=9)
	{
	    $segundos = "0".$segundos;
	}
	return "$minutos:$segundos";

    }

    public function addSession($key, $value)
    {
	$_SESSION[$key] = $value;
	return $this;
    }

    public function getSession($key)
    {
	if(isset($_SESSION[$key]))
	{
	    return $_SESSION[$key];
	}
    }

    public function remSession($key)
    {
	if(isset($_SESSION[$key]))
	{
	    unset( $_SESSION[$key] );
	}
	return $this;
    }

    public function check($showMessage = null){
	if(!isset($_SESSION['LAST_ACTIVITY']) || (time() - $_SESSION['LAST_ACTIVITY'] >= $_SESSION['LIFE_TIME'])){
	    $this->destroy();
            return false;
        }else{
            return true;
        }
    }

    public function setMsg($msg)
    {
	$this->session_message = $msg;
    }

    public function getId()
    {
	if( isset( $_SESSION['ACTIVITY_ID'] ) )
	{
	    return $_SESSION['ACTIVITY_ID'];
	}
	else
	{
	    $this->setMsg("sessão nula");
	    return $this->session_message;
	}
    }

    public function status()
    {
	return $this->session_message;
    }

    public function destroy(){
	
        @session_destroy();
        
        if(isset($_SESSION['LAST_ACTIVITY']))	{
           unset($_SESSION['LAST_ACTIVITY'] );
        }
        if(isset($_SESSION['LIFE_TIME'])){
            unset($_SESSION['LIFE_TIME']);
        }
        if(isset($_SESSION['ACTIVITY_ID'])){
            unset($_SESSION['ACTIVITY_ID']);
        }
        return false;
    }
}
?>