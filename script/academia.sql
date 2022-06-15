SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

USE academia;

DROP TABLE IF EXISTS alunos;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) COLLATE latin1_general_ci NOT NULL,
  `nome` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `telefone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `celular` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `cpf`, `nome`, `data_nascimento`, `endereco`, `telefone`, `celular`, `altura`, `peso`) VALUES
(1, '11111111111', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(2, '22222222222', 'Beltrano Faria de Lima', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(3, '33333333333', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(4, '44444444444', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(5, '55555555555', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(6, '66666666666', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(7, '77777777777', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(8, '88888888888', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(9, '99999999999', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100),
(10, '10101010101', 'Fulano de Tal Almeida e Silva', '1998-02-25', 'Avenida dos IgarapÃ©s, 55', '1733333333', '17988888888', 1.99, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

DROP TABLE IF EXISTS `atividade`;
CREATE TABLE IF NOT EXISTS `atividade` (
  `idAtividade` int(10) NOT NULL AUTO_INCREMENT,
  `idturma` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `datahora` datetime NOT NULL,
  `observacao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `presenca` tinyint(1) NOT NULL,
  PRIMARY KEY (`idAtividade`),
  KEY `idturma` (`idturma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrutores`
--

DROP TABLE IF EXISTS `instrutores`;
CREATE TABLE IF NOT EXISTS `instrutores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) COLLATE latin1_general_ci NOT NULL,
  `nome` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `telefone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `celular` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rg` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `titulacao` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `instrutores`
--

INSERT INTO `instrutores` (`id`, `cpf`, `nome`, `data_nascimento`, `endereco`, `telefone`, `celular`, `rg`, `titulacao`) VALUES
(1, '12121212121', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '23232323232', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '34343434343', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '45454545454', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '56565656565', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '67676767676', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '78787878787', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '89898989898', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '90909090909', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica'),
(1, '01010101010', 'Sicrano de SÃ¡ Vasconcelos', '2000-05-18', 'Rua VoluntÃ¡rios da PÃ¡tria, 11', '1742424242', '17975484585', '20045258x', 'Bacharel em EducaÃ§Ã£o FÃ­sica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE IF NOT EXISTS `matricula` (
  `idmatricula` int(10) NOT NULL AUTO_INCREMENT,
  `idturma` int(10) UNSIGNED NOT NULL,
  `cpf` varchar(14) COLLATE latin1_general_ci NOT NULL,
  `dataMatricula` date NOT NULL,
  `aluno_cpf` decimal(11,0) NOT NULL,
  `turma_idturma` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idmatricula`),
  KEY `cpf` (`cpf`),
  KEY `idturma` (`idturma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_instrutor`
--

DROP TABLE IF EXISTS `telefone_instrutor`;
CREATE TABLE IF NOT EXISTS `telefone_instrutor` (
  `idTelefone` int(10) NOT NULL AUTO_INCREMENT,
  `idInstrutor` int(10) UNSIGNED NOT NULL,
  `instrutor_idInstrutor` int(10) UNSIGNED NOT NULL,
  `tipo` char(1) COLLATE latin1_general_ci NOT NULL,
  `numero` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idTelefone`),
  KEY `idInstrutor` (`idInstrutor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE IF NOT EXISTS `turmas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date NOT NULL,
  `horario` time NOT NULL,
  `Instrutor` int(11) NOT NULL,
  `observacao` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
