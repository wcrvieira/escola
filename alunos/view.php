<?php 
	require_once('functions.php'); 
	view($_GET['id']);
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Aluno de Id: <?php echo $aluno['id']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">
	<dt>CPF:</dt>
	<dd><?php echo $aluno['cpf']; ?></dd>
	
	<dt>Nome:</dt>
	<dd><?php echo $aluno['nome']; ?></dd>
 
	<dt>Endereço:</dt>
	<dd><?php echo $aluno['endereco']; ?></dd>

	<dt>Telefone:</dt>
	<dd><?php echo $aluno['telefone']; ?></dd>
	
	<dt>Celular</dt>
	<dd><?php echo $aluno['celular']; ?></dd>
</dl>

<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $aluno['id']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>