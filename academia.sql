CREATE DATABASE IF NOT EXISTS escola;

USE escola;

CREATE TABLE IF NOT EXISTS aluno (
  idAluno int(11) NOT NULL AUTO_INCREMENT,
  cpf VARCHAR(14) NOT NULL,
  nome VARCHAR(60) NOT NULL,
  data_nascimento DATE NOT NULL,
  endereco VARCHAR(80) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  celular varchar(12),
  altura FLOAT,
  peso FLOAT,
  PRIMARY KEY(idAluno)
);

CREATE TABLE IF NOT EXISTS instrutor (
  idInstrutor INTEGER(10) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  datanascimento DATE NOT NULL,
  rg VARCHAR(20) NOT NULL,
  titulacao VARCHAR(40) NOT NULL,
  PRIMARY KEY(idInstrutor)
);

CREATE TABLE IF NOT EXISTS telefone_instrutor (
  idTelefone INTEGER(10) NOT NULL AUTO_INCREMENT,
  idInstrutor INTEGER(10) NOT NULL,
  instrutor_idInstrutor INTEGER(10) NOT NULL,
  tipo CHAR(1) NOT NULL,
  numero INTEGER(10) NOT NULL,
  PRIMARY KEY(idTelefone),
  FOREIGN KEY(idInstrutor)
    REFERENCES instrutor(idInstrutor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS turma (
  idturma INTEGER(10) NOT NULL AUTO_INCREMENT,
  idInstrutor INTEGER(10) NOT NULL,
  instrutor_idInstrutor INTEGER(10) NOT NULL,
  horario DATE NOT NULL,
  duracao INTEGER(10) NOT NULL,
  dataInicio DATE NOT NULL,
  dataFim DATE NOT NULL,
  PRIMARY KEY(idturma),
  FOREIGN KEY(idInstrutor)
    REFERENCES instrutor(idInstrutor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS atividade (
  idAtividade INTEGER(10) NOT NULL AUTO_INCREMENT,
  idturma INTEGER(10) NOT NULL,
  descricao VARCHAR(30) NOT NULL,
  datahora DATETIME NOT NULL,
  observacao VARCHAR(50) NOT NULL,
  presenca TINYINT(1) NOT NULL,
  PRIMARY KEY(idAtividade),
  FOREIGN KEY(idturma)
    REFERENCES turma(idturma)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS matricula (
  idmatricula INTEGER(10) NOT NULL AUTO_INCREMENT,  
  dataMatricula DATE NOT NULL,
  aluno_id int(11) NOT NULL,
  turma_idturma INTEGER(10) NOT NULL,
  PRIMARY KEY(idmatricula),
  FOREIGN KEY(aluno_id)
    REFERENCES aluno(idAluno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(turma_idturma)
    REFERENCES turma(idturma)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);