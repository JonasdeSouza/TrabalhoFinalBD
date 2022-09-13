INSERT INTO Pais (nome)
VALUES
  ("Brasil"),
  ("China"),
  ("Estados Unidos"),
  ("Argentina"),
  ("Colômbia");     

INSERT INTO UnidadeFederativa (nome, Pais_idPais)
VALUES
	("Acre", 1),
	("Alagoas", 1),
    ("Amapá", 1),
    ("Amazonas", 1),
    ("Bahia", 1),
    ("Ceará", 1),
    ("Distrito Federal", 1),
    ("Espírito Santo", 1),
    ("Goiás", 1),
    ("Maranhão", 1),
    ("Mato Grosso", 1),
    ("Mato Grosso do Sul", 1),
    ("Minas Gerais", 1),
    ("Pará", 1),
    ("Paraíba", 1),
    ("Paraná", 1),
    ("Pernambuco", 1),
    ("Piauí", 1),
    ("Rio de Janeiro", 1),
    ("Rio Grande do Norte", 1),
    ("Rio Grande do Sul", 1),
    ("Rondônia", 1),
    ("Roraima", 1),
    ("Santa Catarina", 1),
    ("São Paulo", 1),
    ("Sergipe", 1),
    ("Tocantins", 1);

INSERT INTO Cidade (DDD, nome, UnidadeFederativa_idUnidadeFederativa, UnidadeFederativa_Pais_idPais)
VALUES
	(71, "Salvador", 5, 1),
    (61, "Brasília", 7, 1),
    (67, "Campo Grande", 12, 1),
    (85, "Fortaleza", 6, 1),
    (21, "Rio de Janeiro", 19, 1);


INSERT INTO TipoTelefone (descricao)
VALUES
	("Celular"),
    ("Residencial"),
    ("Comercial");

INSERT INTO Telefone (numero, TipoTelefone_idTipoTelefone, Cidade_idCidade)
VALUES
	(937187468,1,3),
	(982827434,3,1),
	(906185282,2,5),
	(935874879,3,2),
	(946329639,2,3);
    
INSERT INTO Sexo (descricao)
VALUES
	("Homem Cis"),
    ("Homem Trans"),
    ("Mulher Cis"),
    ("Mulher Trans"),
    ("Não Binário");

INSERT INTO TipoPessoa (descricao)
VALUES
	("Aluno(a)"),
	("Servidor(a)"),
    ("Externo");

INSERT INTO Escolaridade (descricao)
VALUES
	("Ensino Fundamental Incompleto"),
    ("Ensino Fundamental Completo"),
    ("Ensino Médio Incompleto"),
    ("Ensino Médio Completo"),
    ("Ensino Superior Incompleto"),
    ("Ensino Superior Completo");

INSERT INTO Cargo (descricao)
VALUES
	("Professor(a)"),
    ("Coordenador(a) de Curso"),
    ("Coordenador(a) de Estágio"),
    ("Coordenador(a) de Extensão"),
    ("Coordenador(a) de Pesquisa"),
    ("Diretor(a)"),
    ("Vice-Diretor(a)"),
    ("Terceirizado(a)");
    
INSERT INTO Bairro (nome, Cidade_idCidade, Cidade_UnidadeFederativa_idUnidadeFederativa, Cidade_UnidadeFederativa_Pais_idPais)
VALUES
	("Cidade Baixa", 1, 5, 1),
    ("Plano Piloto", 2, 7, 1),
    ("Cidade Jardim", 3, 12, 1),
    ("Aldeota", 4, 6, 1),
    ("Ipanema", 5, 19, 1);
    
INSERT INTO TipoEndereco (descricao)
VALUES
	("Residencial"),
    ("Comercial");
        
INSERT INTO Endereco (logradouro, numero, CEP, complemento, Bairro_idBairro, Bairro_Cidade_idCidade, Bairro_Cidade_UnidadeFederativa_idUnidadeFederativa, Bairro_Cidade_UnidadeFederativa_Pais_idPais, TipoEndereco_idTipoEndereco)
VALUES
	("W1 Norte", 302, "14545-172", "Apartamento", 2, 2, 7, 1, 1),
    ("W2 Sul", 406, "56874-865", "Casa", 2, 2, 7, 1, 1),
    ("Lago Sul 01 QI", 11, "37753-725", "Apartamento", 2, 2, 7, 1, 1),
    ("Lago Norte", 62, "68550-421", "Casa", 2, 2, 7, 1, 1),
    ("Vila Planalto", 54, "26666-787", "Comercio", 2, 2, 7, 1, 2);

INSERT INTO EstadoCivil (descricao)
VALUES
    ("Solteiro(a)"),
    ("Casado(a)"),
    ("Separado(a)"),
    ("Divorciado(a)"),
    ("Viuvo(a)");

INSERT INTO Departamento (nome, sigla)
VALUES
    ("Departamento de Ciência da Computação", "CIC"),
    ("Departamento de Engenharia Elétrica", "ENE"),
    ("Departamento de Matemática", "MAT"),
    ("Departamento de Engenharia Civil", "ENC"),
    ("Departamento de Física", "FIS");

INSERT INTO Curso (nome, Departamento_idDepartamento)
VALUES
    ("Engenharia de Computação", 1),
    ("Ciência da Computação", 1),
    ("Engenharia Elétrica", 2),
    ("Matemática", 3),
    ("Engenharia Civil", 4),
    ("Física", 5);

INSERT INTO Disciplina (nome, quantidadeCreditos, ementa, Departamento_idDepartamento)
VALUES
    ("Bancos de Dados", 4, "Exemplo de Ementa", 1),
    ("Sistemas Microprocessados", 4, "Exemplo de Ementa", 2),
    ("Calculo numérico", 4, "Exemplo de Ementa", 3),
    ("Introdução à engenharia civil", 4, "Exemplo de Ementa", 4),
    ("Fisica 2", 4, "Exemplo de Ementa", 5);

INSERT INTO MateriasObrigatoriasCurso (Disciplina_idDisciplina, Curso_idCurso)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);

INSERT INTO TipoFluxo (descricao)
VALUES
    ("Real"),
    ("Planejado");

INSERT INTO Status (descricao)
VALUES 
    ("Planejado"),
    ("Cursado"),
    ("Cursando");

INSERT INTO TipoSemestre (descricao)
VALUES
    ("Normal"),
    ("Verão");

INSERT INTO Mencao (descricao)
VALUES 
    ("SS"),
    ("MS"),
    ("MM"),
    ("MI"),
    ("II"),
    ("SR");

INSERT INTO Pessoa (matricula, dataIngresso, email, nome, CPF, identidade, passaporte, TipoPessoa_idTipoPessoa, Sexo_idSexo, Cargo_idCargo, idPessoa_Filiacao, Escolaridade_idEscolaridade, EstadoCivil_idEstadoCivil, nacionalidade, Cidade_idCidade_Naturalidade, Endereco_idEndereco)
VALUES
    (NULL, "2018-03-10", "mariasouza@gmail.com", "Maria Souza", "016.103.864-31", "0.321.182", NULL, 3, 3, NULL, NULL, 4, 2, "Brasil", 3, 3),
    (180076271, "2018-03-10", "pedrosouza@gmail.com", "Pedro Souza", "046.235.012-56", "3.548.248", NULL, 1, 1, NULL, NULL, 4, 1, "Brasil", 2, 3),
    (096023749, "1996-06-15", "victorhugo@ieee.com", "Victor Hugo", "619.174.690-39", "0.185.519", "CS265436", 2, 1, 1, NULL, 6, 3, "Brasil", 1, 4),
    (170015462, "2017-02-08", "mariaeduarda@gmail.com", "Maria Eduarda", "967.177.420-20", "2.155.368", NULL, 1, 4, NULL, NULL, 4, 1, "Brasil", 1, 4),
    (010817912, "2008-09-28", "joaogomes@gmail.com", "Joao Gomes", "804.854.740-69", "0.985.716", NULL, 2, 2, 5, NULL, 3, 4, "Brasil", 1, 1);

UPDATE Pessoa
SET idPessoa_Filiacao = 1
WHERE idPessoa = 2;

UPDATE Pessoa
SET idPessoa_Filiacao = 3
WHERE idPessoa = 4;

INSERT INTO Fluxo (TipoFluxo_idTipoFluxo, Pessoa_idPessoa, Curso_idCurso)
VALUES
    (1, 2, 1),
    (2, 4, 2),
    (2, NULL, 1),
    (2, NULL, 4),
    (2, NULL, 5);

INSERT INTO Semestre (data, totalCreditos, Mencao_idMencao, Disciplina_idDisciplina, TipoSemestre_idTipoSemestre, Status_idStatus, Fluxo_idFluxo)
VALUES 
    ("2022-01-17", 8, 2, 1, 1, 2, 1),
    ("2022-01-17", 8, 3, 2, 1, 2, 1),
    ("2022-06-06", 4, NULL, 4, 1, 3, 1),
    (NULL, 8, NULL, 1, 1, 1, 3),
    (NULL, 8, NULL, 2, 1, 1, 3);