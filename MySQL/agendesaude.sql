-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jun-2020 às 20:26
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendesaude`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentoconsulta`
--

CREATE TABLE `agendamentoconsulta` (
  `CD_AgendamentoConsulta` int(11) NOT NULL,
  `DT_AgendamentoConsulta` varchar(10) NOT NULL,
  `NM_Situacao` varchar(9) NOT NULL,
  `ID_Funcionario` varchar(14) DEFAULT NULL,
  `ID_Paciente` varchar(14) NOT NULL,
  `ID_Consulta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamentoconsulta`
--

INSERT INTO `agendamentoconsulta` (`CD_AgendamentoConsulta`, `DT_AgendamentoConsulta`, `NM_Situacao`, `ID_Funcionario`, `ID_Paciente`, `ID_Consulta`) VALUES
(10, '02/06/2020', 'Em Aberto', '340.323.148-88', '333.733.988-35', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `CD_Consulta` int(11) NOT NULL,
  `NM_Consulta` varchar(30) NOT NULL,
  `HR_ConsultaInicio` varchar(5) NOT NULL,
  `HR_ConsultaFinal` varchar(5) NOT NULL,
  `NM_DiasSemana` varchar(7) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Funcionario` varchar(14) NOT NULL,
  `ID_Medico` varchar(14) DEFAULT NULL,
  `ID_Enfermeiro` varchar(14) DEFAULT NULL,
  `ID_Ubs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`CD_Consulta`, `NM_Consulta`, `HR_ConsultaInicio`, `HR_ConsultaFinal`, `NM_DiasSemana`, `ID_Status`, `ID_Funcionario`, `ID_Medico`, `ID_Enfermeiro`, `ID_Ubs`) VALUES
(1, 'Pediatria', '09:00', '12:00', '0001000', 1, '467.738.338-33', '491.240.738-06', NULL, 1),
(2, 'Clinico Geral', '08:30', '11:00', '0010100', 1, '467.738.338-33', '491.240.738-06', NULL, 1),
(3, 'Psiquiatra', '08:00', '11:00', '0101010', 1, '340.323.148-88', '333.733.988-35', '379.827.678-18', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enfermeiro`
--

CREATE TABLE `enfermeiro` (
  `NR_Cpf` varchar(14) NOT NULL,
  `NR_Coren` varchar(15) NOT NULL,
  `NM_Enfermeiro` varchar(50) NOT NULL,
  `NM_Sexo` varchar(9) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Ubs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enfermeiro`
--

INSERT INTO `enfermeiro` (`NR_Cpf`, `NR_Coren`, `NM_Enfermeiro`, `NM_Sexo`, `ID_Status`, `ID_Ubs`) VALUES
('379.827.678-18', '128.718', 'Rafael Luiz Femina', 'Masculino', 1, 3),
('497.724.438-99', '193.899', 'Nicolas Pimentel de Almeida', 'Masculino', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `NR_Cpf` varchar(14) NOT NULL,
  `CD_Nivel` char(1) NOT NULL,
  `NM_Funcionario` varchar(50) NOT NULL,
  `NM_Senha` varchar(15) NOT NULL,
  `NM_TipoFuncionario` varchar(30) NOT NULL,
  `NM_Sexo` varchar(9) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Ubs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`NR_Cpf`, `CD_Nivel`, `NM_Funcionario`, `NM_Senha`, `NM_TipoFuncionario`, `NM_Sexo`, `ID_Status`, `ID_Ubs`) VALUES
('340.323.148-88', '1', 'Leandro Aparecido de Souza', 'senha123', 'Chefe', 'Masculino', 1, 3),
('351.561.588-11', '0', 'Paula Thamyres da SIlva', 'senha123', 'Recepcionista', 'Feminino', 1, 3),
('449.907.448-70', '0', 'Samara Felizardo Dias de Araujo', 'senha123', 'Recepcionista', 'Feminino', 1, 1),
('467.738.338-33', '2', 'Júlia Mara e Silva', 'senha123', 'Diretora', 'Feminino', 1, 1),
('489.118.778-67', '1', 'Karina Campi da Silva', 'senha123', 'Chefe', 'Feminino', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `medico` (
  `NR_Cpf` varchar(14) NOT NULL,
  `NR_Crm` varchar(15) NOT NULL,
  `NM_Medico` varchar(50) NOT NULL,
  `DS_Especialidade` varchar(50) DEFAULT NULL,
  `NM_Sexo` varchar(9) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Ubs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`NR_Cpf`, `NR_Crm`, `NM_Medico`, `DS_Especialidade`, `NM_Sexo`, `ID_Status`, `ID_Ubs`) VALUES
('333.733.988-35', '37273927-3', 'Jose Erinaldo de Jesus Martins', 'Psiquiatra', 'Masculino', 1, 3),
('491.240.738-06', '9874563', 'Ingrid Silva das Neves', 'Cardiologista', 'Feminino', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `NR_Cpf` varchar(14) NOT NULL,
  `NR_Sus` varchar(18) DEFAULT NULL,
  `NM_Paciente` varchar(50) NOT NULL,
  `NM_Sexo` varchar(9) NOT NULL,
  `ID_Chefe` tinyint(1) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Prontuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`NR_Cpf`, `NR_Sus`, `NM_Paciente`, `NM_Sexo`, `ID_Chefe`, `ID_Status`, `ID_Prontuario`) VALUES
('175.383.548-61', '777 7777 7777 7777', 'Jussimar Nascimento Leal', 'Masculino', 0, 1, 2),
('254.545.528-54', '555 5555 5555 5555', 'Maria de Fatima Oliveira de Soiuza', 'Feminino', 1, 1, 2),
('318.659.858-30', '202 0200 2020 2002', 'Liliane de Souza', 'Feminino', 0, 1, 4),
('333.733.988-35', '111 1111 111 1111', 'Jose Erinaldo de Jesus Martins ', 'Masculino', 1, 2, 1),
('335.806.728-71', '666 6666 6666 6666', 'Graciete Henriques dos Santos', 'Feminino', 0, 1, 2),
('340.323.148-88', '010 1010 101 0011', 'Leandro Souza  ', 'Masculino', 1, 1, 4),
('449.907.448-70', '567 8912 345 6789', 'Samara Felizardo Dias de Araujo ', 'Feminino', 0, 1, 3),
('467.738.338-33', '456 7891 234 5678', 'Júlia Mara e Silva ', 'Feminino', 0, 1, 3),
('475.046.408-24', '444 4444 444 4444', 'Jose Inacio Martins ', 'Masculino', 0, 2, 1),
('475.382.758-51', '333 3333 333 3333', 'Maria Santa de Jesus Martins  ', 'Feminino', 0, 2, 1),
('475.806.728-71', '222 2222 222 2222', 'Matheus Inacio Martins ', 'Masculino', 0, 2, 1),
('488.772.668-11', '888 8888 8888 8888', 'Felipe Lourenço', 'Masculino', 0, 1, 2),
('489.118.778-67', '345 6789 123 4567', 'Karina Campi da Silva ', 'Feminino', 0, 1, 3),
('491.240.738-06', '234 5678 912 3456', 'Ingrid Silva das Neves ', 'Feminino', 1, 1, 3),
('565.748.888-22', '123 4567 8912 3456', 'Alessandro Wingerter da Silva', 'Masculino', 0, 1, 2),
('888.121.658-86', '999 9999 9999 9999', 'Diogenes Leandro Leite Pereira', 'Masculino', 0, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prontuario`
--

CREATE TABLE `prontuario` (
  `CD_Prontuario` int(11) NOT NULL,
  `NM_Endereco` varchar(50) NOT NULL,
  `NM_Bairro` varchar(30) NOT NULL,
  `NM_Complemento` varchar(20) DEFAULT NULL,
  `NR_Residencia` int(11) NOT NULL,
  `NR_Fixo` varchar(14) DEFAULT NULL,
  `NR_Celular` varchar(15) DEFAULT NULL,
  `NM_Email` varchar(30) DEFAULT NULL,
  `NM_Senha` varchar(100) NOT NULL,
  `ID_Status` tinyint(1) NOT NULL,
  `ID_Ubs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prontuario`
--

INSERT INTO `prontuario` (`CD_Prontuario`, `NM_Endereco`, `NM_Bairro`, `NM_Complemento`, `NR_Residencia`, `NR_Fixo`, `NR_Celular`, `NM_Email`, `NM_Senha`, `ID_Status`, `ID_Ubs`) VALUES
(1, 'Rua Antonio Alves', 'Parque Tiradentes', '', 239, '', '(19) 99940-5505', 'jejmartins@hotmail.com', 'senha123', 1, 1),
(2, 'Rua Santa Catarina ', 'Parque Industrial', '', 698, '(19) 3541-7624', '(19) 99715-1196', 'fatima.souza@gmail.com', 'senha123', 1, 1),
(3, 'Rua Pedro Batista Teixeira', 'Jardim Piratiniga', '', 1866, '', '(19) 98215-9887', 'ingridneves2@gmail.com', 'senha123', 0, 1),
(4, 'Rua Alcindo de Campos ', 'Jardim Santa Catarina', 'Casa', 165, '(19) 9971-5119', '', 'las.souza01@gmail.com', 'hKdEtsoi', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ubs`
--

CREATE TABLE `ubs` (
  `CD_Ubs` int(11) NOT NULL,
  `NM_Ubs` varchar(30) NOT NULL,
  `NM_Endereco` varchar(50) NOT NULL,
  `NM_Bairro` varchar(30) NOT NULL,
  `NR_Residencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ubs`
--

INSERT INTO `ubs` (`CD_Ubs`, `NM_Ubs`, `NM_Endereco`, `NM_Bairro`, `NR_Residencia`) VALUES
(1, 'UBS Enio Vitalli', 'Rua Franca', 'Jardim Piratininga', 99),
(2, 'UBS Antonio Carlos Frabricio', 'Rua Carpinteiro SN', 'Jardim Jose Ometto', 0),
(3, 'UBS Oswaldo Salvador Devitte', 'Av. Presidente Castelo Branco SN', 'Narciso Gomes', 0),
(4, 'UBS Jose Fiori', 'Rua Ana Silva SN', 'Vila Madalena de Canossa', 0),
(5, 'UBS Emerson Mercatelli', 'Rua Anibal Lopes da Silva SN', 'Bosque do Versalles ', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agendamentoconsulta`
--
ALTER TABLE `agendamentoconsulta`
  ADD PRIMARY KEY (`CD_AgendamentoConsulta`),
  ADD KEY `ID_Funcionario` (`ID_Funcionario`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Consulta` (`ID_Consulta`);

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`CD_Consulta`),
  ADD KEY `ID_Funcionario` (`ID_Funcionario`),
  ADD KEY `ID_Medico` (`ID_Medico`),
  ADD KEY `ID_Enfermeiro` (`ID_Enfermeiro`),
  ADD KEY `ID_Ubs` (`ID_Ubs`);

--
-- Índices para tabela `enfermeiro`
--
ALTER TABLE `enfermeiro`
  ADD PRIMARY KEY (`NR_Cpf`),
  ADD UNIQUE KEY `NR_Cpf` (`NR_Cpf`),
  ADD KEY `ID_Ubs` (`ID_Ubs`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`NR_Cpf`),
  ADD UNIQUE KEY `NR_Cpf` (`NR_Cpf`),
  ADD KEY `ID_Ubs` (`ID_Ubs`);

--
-- Índices para tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`NR_Cpf`),
  ADD UNIQUE KEY `NR_Cpf` (`NR_Cpf`),
  ADD KEY `ID_Ubs` (`ID_Ubs`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`NR_Cpf`),
  ADD UNIQUE KEY `NR_Cpf` (`NR_Cpf`),
  ADD KEY `ID_Prontuario` (`ID_Prontuario`);

--
-- Índices para tabela `prontuario`
--
ALTER TABLE `prontuario`
  ADD PRIMARY KEY (`CD_Prontuario`),
  ADD KEY `ID_Ubs` (`ID_Ubs`);

--
-- Índices para tabela `ubs`
--
ALTER TABLE `ubs`
  ADD PRIMARY KEY (`CD_Ubs`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentoconsulta`
--
ALTER TABLE `agendamentoconsulta`
  MODIFY `CD_AgendamentoConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `CD_Consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `prontuario`
--
ALTER TABLE `prontuario`
  MODIFY `CD_Prontuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ubs`
--
ALTER TABLE `ubs`
  MODIFY `CD_Ubs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agendamentoconsulta`
--
ALTER TABLE `agendamentoconsulta`
  ADD CONSTRAINT `agendamentoconsulta_ibfk_1` FOREIGN KEY (`ID_Funcionario`) REFERENCES `funcionario` (`NR_Cpf`),
  ADD CONSTRAINT `agendamentoconsulta_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `paciente` (`NR_Cpf`),
  ADD CONSTRAINT `agendamentoconsulta_ibfk_3` FOREIGN KEY (`ID_Consulta`) REFERENCES `consulta` (`CD_Consulta`);

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`ID_Funcionario`) REFERENCES `funcionario` (`NR_Cpf`),
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`ID_Medico`) REFERENCES `medico` (`NR_Cpf`),
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`ID_Enfermeiro`) REFERENCES `enfermeiro` (`NR_Cpf`),
  ADD CONSTRAINT `consulta_ibfk_4` FOREIGN KEY (`ID_Ubs`) REFERENCES `ubs` (`CD_Ubs`);

--
-- Limitadores para a tabela `enfermeiro`
--
ALTER TABLE `enfermeiro`
  ADD CONSTRAINT `enfermeiro_ibfk_1` FOREIGN KEY (`ID_Ubs`) REFERENCES `ubs` (`CD_Ubs`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`ID_Ubs`) REFERENCES `ubs` (`CD_Ubs`);

--
-- Limitadores para a tabela `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`ID_Ubs`) REFERENCES `ubs` (`CD_Ubs`);

--
-- Limitadores para a tabela `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`ID_Prontuario`) REFERENCES `prontuario` (`CD_Prontuario`);

--
-- Limitadores para a tabela `prontuario`
--
ALTER TABLE `prontuario`
  ADD CONSTRAINT `prontuario_ibfk_1` FOREIGN KEY (`ID_Ubs`) REFERENCES `ubs` (`CD_Ubs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
