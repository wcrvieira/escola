<?php
require_once('../config.php');
require_once(DBAPI);

$alunos = null;
$aluno = null;

function index() {
	global $alunos;
	$alunos = find_all('alunos');
}
?>

<?php
function add() {
  if (!empty($_POST['aluno'])) {
        
    $aluno = $_POST['aluno'];
        
    save('alunos', $aluno);
    header('location: index.php');
  }
}
?>

<?php

function edit() {
  
  if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (isset($_POST['aluno'])) {
      $aluno = $_POST['aluno'];
      
      update('alunos', $id, $aluno);
      header('location: index.php');
    } else {
      global $aluno;
      $aluno = find('alunos', $id);
    } 
  } else {
    header('location: index.php');
  }
}
?>
<?php

function view($id = null) {
  global $aluno;
  $aluno = find('alunos', $id);
}
?>
<?php

function delete($id = null) {
  global $aluno;
  $aluno = remove('alunos', $id);
  header('location: index.php');
}
