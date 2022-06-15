<?php 
  require_once('functions.php'); 
  add();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Nova turma</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  <hr />
  <div class="row"> 	
    <div class="form-group col-md-6">
      <label for="name">Descrição</label>
      <input type="text" class="form-control" name="turmas['descricao']">
    </div>    
	
	<div class="form-group col-md-2">
		<label for="campo3">Data de início</label>
		<input type="text" class="form-control" id="datepicker" name="turmas['dataInicio']">
	</div>
	
	<div class="form-group col-md-2">
		<label for="campo3">Data final</label>
		<input type="text" class="form-control" id="datepicker" name="turmas['dataFim']">
	</div>
	</div>
		
	<div class="row">
	<div class="form-group col-md-2">
      <label for="campo2">Horário</label>
      <input type="text" class="form-control" name="turmas['horario']">
    </div>
	
    <div class="form-group col-md-4">
      <label for="campo1">Instrutor</label>
      <select class="form-control" name="instrutor">
		<option>
		<?php
			while($row = mysqli_fetch_assoc($result)) {
				echo '<option value="'.$row['nome'].'"> '.$row['nome'].' </option>';
			}
		?>
		</option>
		</select>
    </div>
		
	<div class="form-group col-md-4">
      <label for="campo2">Observação</label>
      <input type="text" class="form-control" name="turmas['observacao']">
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