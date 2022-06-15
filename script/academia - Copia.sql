CREATE TABLE IF NOT EXISTS alunos (
  id int(11) NOT NULL AUTO_INCREMENT,
  cpf varchar(14) COLLATE latin1_general_ci NOT NULL,
  nome varchar(60) COLLATE latin1_general_ci NOT NULL,
  data_nascimento date NOT NULL,
  endereco varchar(80) COLLATE latin1_general_ci NOT NULL,
  telefone varchar(20) COLLATE latin1_general_ci NOT NULL,
  celular varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  altura float DEFAULT NULL,
  peso float DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE IF NOT EXISTS atividade (
  idAtividade int(10) NOT NULL AUTO_INCREMENT,
  idturma int(10) UNSIGNED NOT NULL,
  descricao varchar(30) COLLATE latin1_general_ci NOT NULL,
  datahora datetime NOT NULL,
  observacao varchar(50) COLLATE latin1_general_ci NOT NULL,
  presenca tinyint(1) NOT NULL,
  PRIMARY KEY (idAtividade),
  KEY idturma (idturma)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE IF NOT EXISTS instrutores (
  id int(10) NOT NULL AUTO_INCREMENT,
  cpf varchar(14) COLLATE latin1_general_ci NOT NULL,
  nome varchar(60) COLLATE latin1_general_ci NOT NULL,
  data_nascimento date NOT NULL,
  endereco varchar(50) COLLATE latin1_general_ci NOT NULL,
  telefone varchar(20) COLLATE latin1_general_ci NOT NULL,
  celular varchar(20) COLLATE latin1_general_ci NOT NULL,
  rg varchar(20) COLLATE latin1_general_ci NOT NULL,
  titulacao varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE IF NOT EXISTS matricula (
  idmatricula int(10) NOT NULL AUTO_INCREMENT,
  idturma int(10) UNSIGNED NOT NULL,
  cpf varchar(14) COLLATE latin1_general_ci NOT NULL,
  dataMatricula date NOT NULL,
  aluno_cpf decimal(11,0) NOT NULL,
  turma_idturma int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (idmatricula),
  KEY cpf (cpf),
  KEY idturma (idturma)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE IF NOT EXISTS telefone_instrutor (
  idTelefone int(10) NOT NULL AUTO_INCREMENT,
  idInstrutor int(10) UNSIGNED NOT NULL,
  instrutor_idInstrutor int(10) UNSIGNED NOT NULL,
  tipo char(1) COLLATE latin1_general_ci NOT NULL,
  numero int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (idTelefone),
  KEY idInstrutor (idInstrutor)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

CREATE TABLE IF NOT EXISTS turmas (
  id int(10) NOT NULL AUTO_INCREMENT,
  descricao varchar(20) COLLATE latin1_general_ci NOT NULL,
  dataInicio date NOT NULL,
  dataFim date NOT NULL,
  horario time NOT NULL,
  Instrutor int(11) NOT NULL,
  observacao varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
COMMIT;
