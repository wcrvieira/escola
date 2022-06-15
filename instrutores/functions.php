<?php
require_once('../config.php');
require_once(DBAPI);

$instrutores = null;
$instrutor = null;

function index() {
	global $instrutores;
	$instrutores = find_all('instrutores');
}
?>

<?php
function add() {
  if (!empty($_POST['instrutor'])) {
        
    $instrutor = $_POST['instrutor'];
        
    save('instrutores', $instrutor);
    header('location: index.php');
  }
}
?>

<?php

function edit() {
  
  if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (isset($_POST['instrutor'])) {
      $instrutor = $_POST['instrutor'];
      
      update('instrutores', $id, $instrutor);
      header('location: index.php');
    } else {
      global $instrutor;
      $instrutor = find('instrutores', $id);
    } 
  } else {
    header('location: index.php');
  }
}
?>
<?php

function view($id = null) {
  global $instrutor;
  $instrutor = find('instrutores', $id);
}
?>
<?php

function delete($id = null) {
  global $instrutor;
  $instrutor = remove('instrutores', $id);
  header('location: index.php');
}
