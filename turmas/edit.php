<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar turma</h2>

<form action="edit.php?id=<?php echo $turma['id']; ?>" method="post">
  <hr />
  <div class="row">
    <div class="form-group col-md-6">
      <label for="name">Descrição</label>
      <input type="text" class="form-control" name="turma['descricao']" value="<?php echo $turma['descricao']; ?>">
    </div>    
	
	<div class="form-group col-md-2">
      <label for="name">Data de início</label>
      <input type="text" class="form-control" name="turma['dataInicio']" value="<?php echo $turma['dataInicio']; ?>">
    </div>     
    
    <div class="form-group col-md-2">
      <label for="campo3">Data final</label>
      <input type="text" class="form-control" name="turma['dataFim']" value="<?php echo $turma['dataFim']; ?>">
    </div>
	</div>
	
	<div class="row">
    <div class="form-group col-md-3">
      <label for="campo2">Horário</label>
      <input type="text" class="form-control" name="turma['horario']" value="<?php echo $turma['horario']; ?>">
	</div>

	<div class="form-group col-md-4">
      <label for="campo1">Instrutor</label>
      <input type="text" class="form-control" name="turma['instrutor']" value="<?php echo $turma['instrutor']; ?>">
    </div>
	
	<div class="form-group col-md-3">
      <label for="campo3">Observação</label>
      <input type="text" class="form-control" name="turma['observacao']" value="<?php echo $turma['observacao']; ?>">
    </div>
	</div>       

  <div id="actions" class="row">
    <div class="col-md-12">
      <button type="submit" class="btn btn-primary">Salvar</button>
      <a href="index.php" class="btn btn-default">Cancelar</a>
    </div>
  </div>
</form>

<?php include(FOOTER_TEMPLATE); ?>