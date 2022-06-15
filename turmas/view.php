<?php 
	require_once('functions.php'); 
	view($_GET['id']);
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Turma de Id: <?php echo $turma['id']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">
	<dt>Descrição:</dt>
	<dd><?php echo $turma['descricao']; ?></dd>
	
	<dt>Data de início:</dt>
	<dd><?php echo $turma['dataInicio']; ?></dd>
 
	<dt>Data final:</dt>
	<dd><?php echo $turma['dataFim']; ?></dd>

	<dt>Horário:</dt>
	<dd><?php echo $turma['horario']; ?></dd>
	
	<dt>Instrutor</dt>
	<dd><?php echo $turma['instrutor']; ?></dd>
</dl>

<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $turma['id']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>