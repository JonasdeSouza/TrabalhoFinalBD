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

INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nome`, `sigla`) VALUES (1, 'Departamento de Ciência da Computação', 'CIC');
INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nome`, `sigla`) VALUES (2, 'Faculdade do Gama', 'FGA');
INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nome`, `sigla`) VALUES (3, 'Departamento de Matemática', 'MAT');
INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nome`, `sigla`) VALUES (4, 'Instituto de Física', 'IFD');
INSERT INTO `mydb`.`Departamento` (`idDepartamento`, `nome`, `sigla`) VALUES (5, "Departamento de Engenharia Civil", "ENC");

INSERT INTO Curso (nome, Departamento_idDepartamento)
VALUES
    ("Engenharia de Software", 2),
    ("Engenharia Aeroespacial", 2),
    ("Engenharia Automotiva", 2),
    ("Engenharia de Energia", 2),
    ("Engenharia de Redes e Comunicação", 2),
    ("Engenharia Eletrônica", 2);

INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (1, 'Cálculo 1', 6, 'Funções de uma variável real, limite e continuidade, derivada, integral, aplicações da integral.', 3);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (2, 'Cálculo 2', 6, 'Sequências e séries numéricas séries de potências fórmula de Taylor equações diferenciais ordinárias de 1ª ordem equações diferenciais ordinárias lineares o método da série de potências a transformada de Laplace sistemas lineares de equações diferenciais ordinárias de 1ª ordem.', 3);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (3, 'Introdução à Engenharia', 2, 'A estrutura da Universidade de Brasília. A estrutura do Curso de Engenharia. Técnicas de administração de tempo. Técnicas de estudo. Noções de Engenharia Automotiva. Noções de Engenharia Eletrônica. Noções de Engenharia de Energia. Noções de Engenharia de Software. Noções de Engenharia Aeroespacial', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (4, 'Algoritmos e Programação de Computadores', 6, 'Princípios fundamentais de construção de programas. Construção de algoritmos e sua representação em pseudocódigo e linguagens de alto nível. Noções de abstração. Especificação de variáveis e funções. Testes e depuração. ', 1);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (5, 'Fisica 1', 4, 'Módulos 1: Unidades e grandezas físicas 2: Vetores 3: Movimento retilineo 4: Movimento em duas e três dimensoes 5: Leis de Newton do movimento 6: Aplicação das Leis de Newton 7', 4);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (6, 'Probabilidade e Estatística', 4, 'Conceitos e noções fundamentais. Variáveis aleatórias. Distribuições das Variáveis aleatórias. Intervalo de confiança. Teste de hipóteses. Erros do Tipo I/II. ', 3);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (7, 'Estruturas de Dados', 4, ' Recursividade- Ponteiros e alocação dinâmica de memória- Estruturas lineares. Arrays. Listas. Filas. Pilhas- Introdução à Complexidade computacional e notação Big-O', 1);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (8, 'Mecânica de Vôo', 4, 'Equacionamento do movimento de uma aeronave considerada como corpo rígido: análise dinâmica e cinemática Conceitos fundamentais da dinâmica e controle de atitude de aeronaves', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (9, 'Eletrônica Veicular', 4, '1. Introdução sistemas elétricos automotivos 2. Componentes automotivos básicos 3. Baterias automotivas 4. Sistema de carregamento 5. Sistemas de partida do motor', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (10, 'Gerência de Redes e Sistemas', 2, 'Princípios, Organização, Processos, Atividades, Áreas e Métodos de Administração de Rede. Tecnologias de Suporte à Gerência de Rede', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (11, 'Fundamentos de Sistemas', 4, 'Definições e aplicações.Metodologias de desenvolvimento de sistemas embarcados.Interfaceamento analógico e digital ', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (12, 'Sistemas Hidroelétricos', 5, 'Energia Hidráulica: Conceitos BásicosCentrais HidroelétricasEstudos HidrológicosSistemas de Baixa e Alta PressãoTurbinas HidráulicasEstudos Sociais, Econômicos e Ambientais', 2);
INSERT INTO `mydb`.`Disciplina` (`idDisciplina`, `nome`, `quantidadeCreditos`, `ementa`, `Departamento_idDepartamento`) VALUES (13, 'Processamento de Sinais', 4, 'Sinais e sistemas no domínio do tempoSinais e sistemas no domínio da frequência', 2);

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

INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (1, 'SR');
INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (2, 'II');
INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (3, 'MI');
INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (4, 'MM');
INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (5, 'MS');
INSERT INTO `mydb`.`Mencao` (`idMencao`, `descricao`) VALUES (6, 'SS');

INSERT INTO Pessoa (matricula, dataIngresso, email, nome, CPF, identidade, passaporte, TipoPessoa_idTipoPessoa, Sexo_idSexo, Cargo_idCargo, idPessoa_Filiacao, Escolaridade_idEscolaridade, EstadoCivil_idEstadoCivil, nacionalidade, Cidade_idCidade_Naturalidade, Endereco_idEndereco, Departamento_idDepartamento)
VALUES
    (NULL, "2018-03-10", "mariasouza@gmail.com", "Maria Souza", "016.103.864-31", "0.321.182", NULL, 3, 3, NULL, NULL, 4, 2, "Brasil", 3, 3, NULL),
    (180076271, "2018-03-10", "pedrosouza@gmail.com", "Pedro Souza", "046.235.012-56", "3.548.248", NULL, 1, 1, NULL, NULL, 4, 1, "Brasil", 2, 3, NULL),
    (096023749, "1996-06-15", "victorhugo@ieee.com", "Victor Hugo", NULL, NULL, "CS265436", 2, 1, 1, NULL, 6, 3, "China", 1, 4, 1),
    (170015462, "2017-02-08", "mariaeduarda@gmail.com", "Maria Eduarda", "967.177.420-20", "2.155.368", NULL, 1, 4, NULL, NULL, 4, 1, "Brasil", 1, 4, NULL),
    (010817912, "2008-09-28", "joaogomes@gmail.com", "Joao Gomes", "804.854.740-69", "0.985.716", NULL, 2, 2, 5, NULL, 3, 4, "Brasil", 1, 1, NULL),
	(565243453, "1980-12-08", "lucas123@gmail.com", "Lucas Santos", "765.443.736-82", "2.938.560", NULL, 2, 1, 1, NULL, 6, 2, "Brasil", 2, 1, 2),
    (096076549, "2005-03-30", "mariavania@ieee.com", "Maria Vania", "020.413.470-66", "4.574.123", NULL, 2, 3, 6, NULL, 6, 3, "Brasil", 1, 2, 1),
    (098763749, "2014-08-11", "mateuspires@unb.br", "Mateus Pires","071.975.170-52", "1.103.972", NULL, 2, 1, 7, NULL, 6, 3, "Brasil", 1, 5, 1);

INSERT INTO Telefone (numero, TipoTelefone_idTipoTelefone, Cidade_idCidade, Pessoa_idPessoa)
VALUES
	(937187468,1,3, 1),
	(982827434,3,1, 2),
	(906185282,2,5, 3),
	(935874879,3,2, 4),
	(946329639,2,3, 5);

UPDATE Pessoa
SET idPessoa_Filiacao = 1
WHERE idPessoa = 2;

UPDATE Pessoa
SET idPessoa_Filiacao = 3
WHERE idPessoa = 4;

UPDATE Pessoa
SET idPessoa_Filiacao = 3
WHERE idPessoa = 6;

INSERT INTO Fluxo (TipoFluxo_idTipoFluxo, Pessoa_idPessoa, Curso_idCurso)
VALUES
    (1, 2, 1),
    (1, 4, 2),
    (2, NULL, 1),
    (2, NULL, 4),
    (2, NULL, 5),
    -- Professor de Engenharia de Software
    (1, 6, 1),
    -- Victor Hugo de Engenharia Aeroespacial
    (1, 3, 2),
    -- Joao Gomes de Engenharia Eletronica
    (1, 5, 6);

INSERT INTO Semestre (data, TipoSemestre_idTipoSemestre, Status_idStatus, Fluxo_idFluxo)
VALUES 
	-- Semestre do Aluno de ID 2
    ("2022-06-06", 1, 3, 1),
    -- Semestres do Aluno de ID 4
    ("2022-01-17", 1, 2, 2),
    ("2022-06-06", 1, 3, 2),
    -- Semestres do Curso de ID 1 (Software)
    (NULL, 1, 1, 3),
    (NULL, 1, 1, 3),
    -- Semestres do Curso de ID 2 (Aeroespacial)
    (NULL, 1, 1, 4),
    (NULL, 1, 1, 4),
    -- Semestre do Curso de ID 3 (Elétrica)
    (NULL, 1, 1, 5),
    (NULL, 1, 1, 5),
    -- Semestre da Pessoa de ID 6 (Lucas Santos: Software)
    ("2022-01-17", 1, 3, 6),
    -- Semestre da Pessoa de ID 3 (Victor Hugo: Aeroespacial)
    ("2022-01-17", 1, 3, 3),
    -- Semestre da Pessoa de ID 5 (João Gomes: Eletronica)
	("2022-01-17", 1, 3, 5);

INSERT INTO Semestre_has_Disciplina (Semestre_idSemestre, Disciplina_idDisciplina, Mencao_idMencao)
VALUES 
	(1, 1, 3),
    (1, 3, 5),
    (1, 4, 4),
    (2, 1, 5),
    (2, 4, 3),
    (3, 2, 5),
    (3, 3, 5),
    (4, 1, NULL),
    (4, 3, NULL),
    (4, 4, NULL),
    (5, 11, NULL),
    (5, 7, NULL),
    (6, 1, NULL),
    (6, 3, NULL),
    (6, 2, NULL),
    (7, 8, NULL),
    (7, 7, NULL),
    (8, 1, NULL),
    (8, 3, NULL),
    (8, 4, NULL),
    (9, 13, NULL),
    (9, 5, NULL),
    (10, 4, NULL),
    (11, 8, NULL),
    (12, 10, NULL);