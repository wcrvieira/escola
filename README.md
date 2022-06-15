A maior parte dos sistemas em PHP é feito com um banco de dados no back end, e normalmente, esse banco de dados Ã© o MySQL. Por isso, Ã© importante criar essa camada de acesso a dados de uma forma bem genérica e independente, para que depois ela possa ser reaproveitada em todo o sistema.

Neste tutorial, você vai ver como deve ser esse banco de dados para o nosso sistema de CRUD e como criá-lo, executando o SQL pelo phpMyAdmin. Depois disso, vamos criar um arquivo de configurações para usar em todo o sistema. E, por fim, vamos criar o script de conexão com esse banco de dados, usando PHP.

Passo 1: Crie as seguintes tabelas no banco de dados
Para este tutorial, vamos criar um banco de dados bem simples, com algumas tabelas, conforme o modelo:



Passo 2: Crie o Arquivo de Configurações do Sistema
Agora, vamos criar um arquivo de configurações, que vai guardar todos os dados que vão ser usados em todos os outros scripts PHP do sistema.

Crie um arquivo chamado config.php, na pasta principal, e coloque o código a seguir:

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
	('FOOTER_TEMPLATE', ABSPATH . 'inc/footer.php');
  ?>
