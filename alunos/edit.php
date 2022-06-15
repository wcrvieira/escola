<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar aluno</h2>

<form action="edit.php?id=<?php echo $aluno['id']; ?>" method="post">
  <hr />
  <div class="row">
    <div class="form-group col-md-2">
      <label for="campo2">CPF</label>
      <input type="text" class="form-control" name="aluno['cpf']" value="<?php echo $aluno['cpf']; ?>">
    </div>
	
	<div class="form-group col-md-6">
      <label for="name">Nome</label>
      <input type="text" class="form-control" name="aluno['nome']" value="<?php echo $aluno['nome']; ?>">
    </div>    
	
	<div class="form-group col-md-2">
      <label for="name">Data de nascimento</label>
      <input type="text" class="form-control" name="aluno['data_nascimento']" value="<?php echo $aluno['data_nascimento']; ?>">
    </div>     
  </div>
  
  <div class="row">
	<div class="form-group col-md-6">
      <label for="campo3">Endereço</label>
      <input type="text" class="form-control" name="aluno['endereco']" value="<?php echo $aluno['endereco']; ?>">
    </div>
        <div class="form-group col-md-2">
      <label for="campo2">Telefone</label>
      <input type="text" class="form-control" name="aluno['telefone']" value="<?php echo $aluno['telefone']; ?>">
	</div>

	<div class="form-group col-md-2">
      <label for="campo1">Celular</label>
      <input type="text" class="form-control" name="aluno['celular']" value="<?php echo $aluno['celular']; ?>">
    </div>
	</div>
	
	<div class="row">
	<div class="form-group col-md-1">
      <label for="campo3">Altura</label>
      <input type="text" class="form-control" name="aluno['altura']" value="<?php echo $aluno['altura']; ?>">
    </div>
        <div class="form-group col-md-1">
      <label for="campo2">Peso</label>
      <input type="text" class="form-control" name="aluno['peso']" value="<?php echo $aluno['peso']; ?>">
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