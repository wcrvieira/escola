<?php 
  require_once('functions.php'); 
  add();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Novo aluno</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  <hr />
  <div class="row">
  <div class="form-group col-md-2">
      <label for="campo2">CPF</label>
      <input type="text" class="form-control" name="aluno['cpf']">
    </div>
	
    <div class="form-group col-md-6">
      <label for="name">Nome</label>
      <input type="text" class="form-control" name="aluno['nome']">
    </div>    

	<div class="form-group col-md-2">
      <label for="campo3">Data de nascimento</label>
      <input type="text" class="form-control" name="aluno['data_nascimento']">
    </div>    
  </div>
  
  <div class="row">
	<div class="form-group col-md-6">
      <label for="campo3">Endereço</label>
      <input type="text" class="form-control" name="aluno['endereco']">
    </div>
	
  <div class="form-group col-md-2">
      <label for="campo2">Telefone</label>
      <input type="text" class="form-control" name="aluno['telefone']">
    </div>
	
    <div class="form-group col-md-2">
      <label for="campo1">Celular</label>
      <input type="text" class="form-control" name="aluno['celular']">
    </div>
    </div>
	
	<div class="row">
	<div class="form-group col-md-1">
      <label for="campo3">Altura</label>
      <input type="text" class="form-control" name="aluno['altura']">
    </div>
	
	<div class="form-group col-md-1">
      <label for="campo2">Peso</label>
      <input type="text" class="form-control" name="aluno['peso']">
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