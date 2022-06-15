<?php

define('DB_NAME', 'nome_do_banco');

define('DB_USER', 'nome_do_usuário');

define('DB_PASSWORD', 'senha_do_banco');

define('DB_HOST', 'caminho_do_host');

if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	

if ( !defined('BASEURL') )
	define('BASEURL', '/crud/');
	

if ( !defined('DBAPI') )
	define('DBAPI', ABSPATH . 'inc/database.php');

define('HEADER_TEMPLATE', ABSPATH . 'inc/header.php');
define('FOOTER_TEMPLATE', ABSPATH . 'inc/footer.php');
  ?>