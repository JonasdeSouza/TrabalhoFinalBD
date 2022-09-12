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
	("Aluno"),
	("Servidor"),
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
	("Professor"),
    ("Coordenador de Curso"),
    ("Coordenador de Estágio"),
    ("Coordenador de Extensão"),
    ("Coordenador de Pesquisa"),
    ("Diretor"),
    ("Vice-Diretor");
    
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

INSERT INTO 