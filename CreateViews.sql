CREATE VIEW FluxoDoCurso AS
SELECT Curso.nome as 'Nome do curso' , Semestre.totalCreditos as 'Total de Creditos', Disciplina.nome as 'Nome da disciplina', Disciplina.ementa as 'Ementa da Disciplina'
FROM Semestre_has_Disciplina
INNER JOIN Semestre on Semestre_idSemestre = idSemestre
INNER JOIN Disciplina on Disciplina_idDisciplina = idDisciplina
INNER JOIN Fluxo on Fluxo_idFluxo = idFluxo
INNER JOIN TipoFluxo on TipoFluxo_idTipoFluxo = idTipoFluxo
INNER JOIN Curso on Fluxo.Curso_idCurso = idCurso WHERE Curso.nome LIKE 'Engenharia de Software' AND TipoFluxo.descricao LIKE 'Planejado';

CREATE VIEW TotalCreditosDoSemestre AS
SELECT Semestre_idSemestre AS Semestre, SUM(D.quantidadeCreditos) AS Creditos_Totais
FROM Semestre_has_Disciplina AS ShD
INNER JOIN Disciplina AS D
ON D.idDisciplina = ShD.Disciplina_idDisciplina
GROUP BY Semestre_idSemestre;

CREATE VIEW TotalCreditosDoFluxo AS
SELECT Fluxo_idFluxo AS ID_Fluxo, SUM(Creditos_Totais) AS Total 
FROM Semestre AS S
INNER JOIN 
	(SELECT Semestre_idSemestre AS idSemestre, SUM(D.quantidadeCreditos) AS Creditos_Totais
	FROM Semestre_has_Disciplina AS ShD
	INNER JOIN Disciplina AS D
	ON D.idDisciplina = ShD.Disciplina_idDisciplina
	GROUP BY Semestre_idSemestre) AS S_T
ON S_T.idSemestre = S.idSemestre
GROUP BY Fluxo_idFluxo;
