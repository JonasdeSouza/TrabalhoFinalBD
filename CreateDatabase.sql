-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`TipoPessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoPessoa` (
  `idTipoPessoa` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador unico de tipo de pessoa',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição de pessoa \nAluno, servidor e externo',
  PRIMARY KEY (`idTipoPessoa`),
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Sexo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sexo` (
  `idSexo` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de sexo',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição do sexo\n',
  PRIMARY KEY (`idSexo`),
  UNIQUE INDEX `idSexo_UNIQUE` (`idSexo` ASC) VISIBLE,
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cargo` (
  `idCargo` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de cargo',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição do cargo',
  PRIMARY KEY (`idCargo`),
  UNIQUE INDEX `idCargo_UNIQUE` (`idCargo` ASC) VISIBLE,
  UNIQUE INDEX `Cargocol_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Escolaridade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Escolaridade` (
  `idEscolaridade` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de escolaridade\n',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição da escolaridade',
  UNIQUE INDEX `idEscolaridade_UNIQUE` (`idEscolaridade` ASC) VISIBLE,
  PRIMARY KEY (`idEscolaridade`),
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`EstadoCivil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EstadoCivil` (
  `idEstadoCivil` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de estado civil',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição de estado civil\n',
  PRIMARY KEY (`idEstadoCivil`),
  UNIQUE INDEX `idEstadoCivil_UNIQUE` (`idEstadoCivil` ASC) VISIBLE,
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pais` (
  `idPais` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de país',
  `nome` VARCHAR(45) NOT NULL COMMENT 'Nome do país',
  PRIMARY KEY (`idPais`, `nome`),
  UNIQUE INDEX `idPais_UNIQUE` (`idPais` ASC) VISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`UnidadeFederativa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UnidadeFederativa` (
  `idUnidadeFederativa` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de Unidade Federativa',
  `nome` VARCHAR(45) NOT NULL COMMENT 'Nome da Unidade Federativa',
  `Pais_idPais` INT NOT NULL,
  PRIMARY KEY (`idUnidadeFederativa`, `Pais_idPais`),
  UNIQUE INDEX `idUnidadeFederativa_UNIQUE` (`idUnidadeFederativa` ASC) VISIBLE,
  UNIQUE INDEX `descricao_UNIQUE` (`nome` ASC) VISIBLE,
  INDEX `fk_UnidadeFederativa_Pais_idx` (`Pais_idPais` ASC) VISIBLE,
  CONSTRAINT `fk_UnidadeFederativa_Pais`
    FOREIGN KEY (`Pais_idPais`)
    REFERENCES `mydb`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cidade` (
  `idCidade` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de cidade',
  `DDD` INT(2) NOT NULL COMMENT 'DDD da cidade',
  `nome` VARCHAR(45) NOT NULL COMMENT 'Nome da cidade',
  `UnidadeFederativa_idUnidadeFederativa` INT NOT NULL,
  `UnidadeFederativa_Pais_idPais` INT NOT NULL,
  PRIMARY KEY (`idCidade`, `DDD`, `UnidadeFederativa_idUnidadeFederativa`, `UnidadeFederativa_Pais_idPais`, `nome`),
  UNIQUE INDEX `DDD_UNIQUE` (`DDD` ASC) INVISIBLE,
  INDEX `fk_Cidade_UnidadeFederativa1_idx` (`UnidadeFederativa_idUnidadeFederativa` ASC, `UnidadeFederativa_Pais_idPais` ASC) VISIBLE,
  UNIQUE INDEX `idCidade_UNIQUE` (`idCidade` ASC) INVISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  CONSTRAINT `fk_Cidade_UnidadeFederativa1`
    FOREIGN KEY (`UnidadeFederativa_idUnidadeFederativa` , `UnidadeFederativa_Pais_idPais`)
    REFERENCES `mydb`.`UnidadeFederativa` (`idUnidadeFederativa` , `Pais_idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pessoa` (
  `idPessoa` INT NOT NULL AUTO_INCREMENT COMMENT 'Número de identificador único de pessoa',
  `dataIngresso` DATE NOT NULL COMMENT 'Ano de ingresso da pessoa na instituição',
  `email` VARCHAR(30) NOT NULL COMMENT 'Endereço de email da pessoa',
  `matricula` INT(9) NOT NULL COMMENT 'Matricula da pessoa na instituição',
  `nome` VARCHAR(255) NOT NULL COMMENT 'Nome da pessoa',
  `CPF` VARCHAR(14) NULL COMMENT 'CPF de pessoa',
  `identidade` VARCHAR(10) NULL COMMENT 'Número de identidade (RG) da pessoa\n',
  `passaporte` VARCHAR(45) NULL COMMENT 'Número de passaporte da pessoa',
  `TipoPessoa_idTipoPessoa` INT NOT NULL,
  `Sexo_idSexo` INT NOT NULL,
  `Cargo_idCargo` INT NOT NULL,
  `idPessoa_Filiacao` INT NULL,
  `Pessoa_matricula` INT(9) NOT NULL,
  `Escolaridade_idEscolaridade` INT NOT NULL,
  `EstadoCivil_idEstadoCivil` INT NOT NULL,
  `nacionalidade` VARCHAR(45) NOT NULL,
  `Cidade_idCidade` INT NOT NULL,
  `Cidade_nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPessoa`, `matricula`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `matricula_UNIQUE` (`matricula` ASC) VISIBLE,
  UNIQUE INDEX `idPessoa_UNIQUE` (`idPessoa` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `identidade_UNIQUE` (`identidade` ASC) VISIBLE,
  UNIQUE INDEX `passaporte_UNIQUE` (`passaporte` ASC) VISIBLE,
  INDEX `fk_Pessoa_TipoPessoa1_idx` (`TipoPessoa_idTipoPessoa` ASC) VISIBLE,
  INDEX `fk_Pessoa_Sexo1_idx` (`Sexo_idSexo` ASC) VISIBLE,
  INDEX `fk_Pessoa_Cargo1_idx` (`Cargo_idCargo` ASC) VISIBLE,
  INDEX `fk_Pessoa_Pessoa1_idx` (`idPessoa_Filiacao` ASC, `Pessoa_matricula` ASC) VISIBLE,
  INDEX `fk_Pessoa_Escolaridade1_idx` (`Escolaridade_idEscolaridade` ASC) VISIBLE,
  INDEX `fk_Pessoa_EstadoCivil1_idx` (`EstadoCivil_idEstadoCivil` ASC) VISIBLE,
  INDEX `fk_Pessoa_Pais1_idx` (`nacionalidade` ASC) VISIBLE,
  INDEX `fk_Pessoa_Cidade1_idx` (`Cidade_idCidade` ASC, `Cidade_nome` ASC) VISIBLE,
  CONSTRAINT `fk_Pessoa_TipoPessoa1`
    FOREIGN KEY (`TipoPessoa_idTipoPessoa`)
    REFERENCES `mydb`.`TipoPessoa` (`idTipoPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Sexo1`
    FOREIGN KEY (`Sexo_idSexo`)
    REFERENCES `mydb`.`Sexo` (`idSexo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Cargo1`
    FOREIGN KEY (`Cargo_idCargo`)
    REFERENCES `mydb`.`Cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Pessoa1`
    FOREIGN KEY (`idPessoa_Filiacao` , `Pessoa_matricula`)
    REFERENCES `mydb`.`Pessoa` (`idPessoa` , `matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Escolaridade1`
    FOREIGN KEY (`Escolaridade_idEscolaridade`)
    REFERENCES `mydb`.`Escolaridade` (`idEscolaridade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_EstadoCivil1`
    FOREIGN KEY (`EstadoCivil_idEstadoCivil`)
    REFERENCES `mydb`.`EstadoCivil` (`idEstadoCivil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Pais1`
    FOREIGN KEY (`nacionalidade`)
    REFERENCES `mydb`.`Pais` (`nome`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_Cidade1`
    FOREIGN KEY (`Cidade_idCidade` , `Cidade_nome`)
    REFERENCES `mydb`.`Cidade` (`idCidade` , `nome`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Bairro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Bairro` (
  `idBairro` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `Cidade_idCidade` INT NOT NULL,
  `Cidade_DDD` INT(2) NOT NULL,
  `Cidade_UnidadeFederativa_idUnidadeFederativa` INT NOT NULL,
  `Cidade_UnidadeFederativa_Pais_idPais` INT NOT NULL,
  PRIMARY KEY (`idBairro`, `Cidade_idCidade`, `Cidade_DDD`, `Cidade_UnidadeFederativa_idUnidadeFederativa`, `Cidade_UnidadeFederativa_Pais_idPais`),
  INDEX `fk_Bairro_Cidade1_idx` (`Cidade_idCidade` ASC, `Cidade_DDD` ASC, `Cidade_UnidadeFederativa_idUnidadeFederativa` ASC, `Cidade_UnidadeFederativa_Pais_idPais` ASC) VISIBLE,
  CONSTRAINT `fk_Bairro_Cidade1`
    FOREIGN KEY (`Cidade_idCidade` , `Cidade_DDD` , `Cidade_UnidadeFederativa_idUnidadeFederativa` , `Cidade_UnidadeFederativa_Pais_idPais`)
    REFERENCES `mydb`.`Cidade` (`idCidade` , `DDD` , `UnidadeFederativa_idUnidadeFederativa` , `UnidadeFederativa_Pais_idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`TipoEndereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoEndereco` (
  `idTipoEndereco` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de tipo de endereço',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição do tipo de endereço\n\nResidencial e comercial',
  PRIMARY KEY (`idTipoEndereco`),
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Endereco` (
  `idEndereco` INT NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `CEP` VARCHAR(45) NULL,
  `complemento` VARCHAR(45) NULL,
  `Bairro_idBairro` INT NOT NULL,
  `Bairro_Cidade_idCidade` INT NOT NULL,
  `Bairro_Cidade_DDD` INT(2) NOT NULL,
  `Bairro_Cidade_UnidadeFederativa_idUnidadeFederativa` INT NOT NULL,
  `Bairro_Cidade_UnidadeFederativa_Pais_idPais` INT NOT NULL,
  `TipoEndereco_idTipoEndereco` INT NOT NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_Endereco_Bairro1_idx` (`Bairro_idBairro` ASC, `Bairro_Cidade_idCidade` ASC, `Bairro_Cidade_DDD` ASC, `Bairro_Cidade_UnidadeFederativa_idUnidadeFederativa` ASC, `Bairro_Cidade_UnidadeFederativa_Pais_idPais` ASC) VISIBLE,
  INDEX `fk_Endereco_TipoEndereco1_idx` (`TipoEndereco_idTipoEndereco` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Bairro1`
    FOREIGN KEY (`Bairro_idBairro` , `Bairro_Cidade_idCidade` , `Bairro_Cidade_DDD` , `Bairro_Cidade_UnidadeFederativa_idUnidadeFederativa` , `Bairro_Cidade_UnidadeFederativa_Pais_idPais`)
    REFERENCES `mydb`.`Bairro` (`idBairro` , `Cidade_idCidade` , `Cidade_DDD` , `Cidade_UnidadeFederativa_idUnidadeFederativa` , `Cidade_UnidadeFederativa_Pais_idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Endereco_TipoEndereco1`
    FOREIGN KEY (`TipoEndereco_idTipoEndereco`)
    REFERENCES `mydb`.`TipoEndereco` (`idTipoEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Mencao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mencao` (
  `idMencao` INT NOT NULL AUTO_INCREMENT COMMENT 'identificador único de menção',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'descrição da menção\nSR, II, MI, MM, MS, SS',
  PRIMARY KEY (`idMencao`, `descricao`),
  UNIQUE INDEX `idMencao_UNIQUE` (`idMencao` ASC) VISIBLE,
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Disciplina` (
  `idDisciplina` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `quantidadeCreditos` INT NOT NULL,
  `ementa` LONGTEXT NULL,
  PRIMARY KEY (`idDisciplina`),
  UNIQUE INDEX `idDisciplina_UNIQUE` (`idDisciplina` ASC) VISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`TipoSemestre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoSemestre` (
  `idTipoSemestre` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de tipo de semestre',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição do tipo de semestre \nNormal e verão',
  PRIMARY KEY (`idTipoSemestre`),
  UNIQUE INDEX `idTipoSemestre_UNIQUE` (`idTipoSemestre` ASC) VISIBLE,
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Status` (
  `idStatus` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único do status da disciplina no semestre',
  `descricao` VARCHAR(45) NOT NULL COMMENT 'Descrição do status da disciplina\nPlanejado, cursado e cursando',
  PRIMARY KEY (`idStatus`),
  UNIQUE INDEX `descricao_UNIQUE` (`descricao` ASC) VISIBLE,
  UNIQUE INDEX `idTipoDisciplina_UNIQUE` (`idStatus` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`TipoFluxo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoFluxo` (
  `idTipoFluxo` INT NOT NULL COMMENT 'Identificador único de tipo de fluxo',
  `descricao` VARCHAR(45) NULL COMMENT 'Descrição do tipo de fluxo\nReal e Planejado',
  PRIMARY KEY (`idTipoFluxo`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `idDepartamento` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de departamento',
  `nome` VARCHAR(45) NOT NULL COMMENT 'Nome do departamento',
  `sigla` VARCHAR(45) NOT NULL COMMENT 'Sigla que representa o departamento',
  PRIMARY KEY (`idDepartamento`),
  UNIQUE INDEX `sigla_UNIQUE` (`sigla` ASC) VISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  UNIQUE INDEX `idDepartamento_UNIQUE` (`idDepartamento` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Curso` (
  `idCurso` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Departamento_idDepartamento` INT NOT NULL,
  PRIMARY KEY (`idCurso`),
  UNIQUE INDEX `idCurso_UNIQUE` (`idCurso` ASC) VISIBLE,
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  INDEX `fk_Curso_Departamento1_idx` (`Departamento_idDepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_Curso_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `mydb`.`Departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Fluxo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fluxo` (
  `idFluxo` INT NOT NULL AUTO_INCREMENT,
  `TipoFluxo_idTipoFluxo` INT NOT NULL,
  `Pessoa_idPessoa` INT NULL,
  `Pessoa_matricula` INT(9) NULL,
  `Curso_idCurso` INT NOT NULL,
  PRIMARY KEY (`idFluxo`),
  UNIQUE INDEX `idFluxo_UNIQUE` (`idFluxo` ASC) VISIBLE,
  INDEX `fk_Fluxo_TipoFluxo1_idx` (`TipoFluxo_idTipoFluxo` ASC) VISIBLE,
  INDEX `fk_Fluxo_Pessoa1_idx` (`Pessoa_idPessoa` ASC, `Pessoa_matricula` ASC) VISIBLE,
  INDEX `fk_Fluxo_Curso1_idx` (`Curso_idCurso` ASC) VISIBLE,
  CONSTRAINT `fk_Fluxo_TipoFluxo1`
    FOREIGN KEY (`TipoFluxo_idTipoFluxo`)
    REFERENCES `mydb`.`TipoFluxo` (`idTipoFluxo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fluxo_Pessoa1`
    FOREIGN KEY (`Pessoa_idPessoa` , `Pessoa_matricula`)
    REFERENCES `mydb`.`Pessoa` (`idPessoa` , `matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fluxo_Curso1`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `mydb`.`Curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Semestre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Semestre` (
  `idSemestre` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NULL,
  `totalCreditos` VARCHAR(45) NOT NULL,
  `Mencao_idMencao` INT NULL,
  `Mencao_descricao` VARCHAR(45) NULL,
  `Disciplina_idDisciplina` INT NOT NULL,
  `TipoSemestre_idTipoSemestre` INT NOT NULL,
  `Status_idStatus` INT NOT NULL,
  `Fluxo_idFluxo` INT NOT NULL,
  PRIMARY KEY (`idSemestre`, `Disciplina_idDisciplina`, `TipoSemestre_idTipoSemestre`, `Status_idStatus`),
  UNIQUE INDEX `idSemestre_UNIQUE` (`idSemestre` ASC) VISIBLE,
  INDEX `fk_Semestre_Mencao1_idx` (`Mencao_idMencao` ASC, `Mencao_descricao` ASC) VISIBLE,
  INDEX `fk_Semestre_Disciplina1_idx` (`Disciplina_idDisciplina` ASC) VISIBLE,
  INDEX `fk_Semestre_TipoSemestre1_idx` (`TipoSemestre_idTipoSemestre` ASC) VISIBLE,
  INDEX `fk_Semestre_Status1_idx` (`Status_idStatus` ASC) VISIBLE,
  INDEX `fk_Semestre_Fluxo1_idx` (`Fluxo_idFluxo` ASC) VISIBLE,
  CONSTRAINT `fk_Semestre_Mencao1`
    FOREIGN KEY (`Mencao_idMencao` , `Mencao_descricao`)
    REFERENCES `mydb`.`Mencao` (`idMencao` , `descricao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Semestre_Disciplina1`
    FOREIGN KEY (`Disciplina_idDisciplina`)
    REFERENCES `mydb`.`Disciplina` (`idDisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Semestre_TipoSemestre1`
    FOREIGN KEY (`TipoSemestre_idTipoSemestre`)
    REFERENCES `mydb`.`TipoSemestre` (`idTipoSemestre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Semestre_Status1`
    FOREIGN KEY (`Status_idStatus`)
    REFERENCES `mydb`.`Status` (`idStatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Semestre_Fluxo1`
    FOREIGN KEY (`Fluxo_idFluxo`)
    REFERENCES `mydb`.`Fluxo` (`idFluxo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`TipoTelefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoTelefone` (
  `idTipoTelefone` INT NOT NULL COMMENT ' Identificador unico de tipo de telefone',
  `descrição` VARCHAR(45) NULL COMMENT 'Descrição do tipo de telefone\n\nCelular, Residencial e Comercial',
  PRIMARY KEY (`idTipoTelefone`),
  UNIQUE INDEX `idTipoTelefone_UNIQUE` (`idTipoTelefone` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Telefone` (
  `idTelefone` INT NOT NULL AUTO_INCREMENT COMMENT 'identificador unico de telefone',
  `numero` INT(9) NOT NULL COMMENT 'número do telefone',
  `TipoTelefone_idTipoTelefone` INT NOT NULL,
  `Cidade_idCidade` INT NOT NULL,
  `Cidade_DDD` INT(2) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC) VISIBLE,
  INDEX `fk_Telefone_TipoTelefone1_idx` (`TipoTelefone_idTipoTelefone` ASC) VISIBLE,
  INDEX `fk_Telefone_Cidade1_idx` (`Cidade_idCidade` ASC, `Cidade_DDD` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_TipoTelefone1`
    FOREIGN KEY (`TipoTelefone_idTipoTelefone`)
    REFERENCES `mydb`.`TipoTelefone` (`idTipoTelefone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefone_Cidade1`
    FOREIGN KEY (`Cidade_idCidade` , `Cidade_DDD`)
    REFERENCES `mydb`.`Cidade` (`idCidade` , `DDD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mydb`.`MateriasObrigatoriasCurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MateriasObrigatoriasCurso` (
  `Disciplina_idDisciplina` INT NOT NULL,
  `Curso_idCurso` INT NOT NULL,
  PRIMARY KEY (`Disciplina_idDisciplina`, `Curso_idCurso`),
  INDEX `fk_Disciplina_has_Curso_Curso1_idx` (`Curso_idCurso` ASC) VISIBLE,
  INDEX `fk_Disciplina_has_Curso_Disciplina1_idx` (`Disciplina_idDisciplina` ASC) VISIBLE,
  CONSTRAINT `fk_Disciplina_has_Curso_Disciplina1`
    FOREIGN KEY (`Disciplina_idDisciplina`)
    REFERENCES `mydb`.`Disciplina` (`idDisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_has_Curso_Curso1`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `mydb`.`Curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
