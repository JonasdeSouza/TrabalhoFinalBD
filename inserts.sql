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
    (85, "Fortaleza", 6
, 1),
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