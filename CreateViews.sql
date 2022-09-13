CREATE VIEW FluxoDoCurso AS
SELECT Curso.nome as 'Nome do curso' , Semestre.totalCreditos as 'Total de Creditos', Disciplina.nome as 'Nome da disciplina', Disciplina.ementa as 'Ementa da Disciplina'
FROM Semestre_has_Disciplina
INNER JOIN Semestre on Semestre_idSemestre = idSemestre
INNER JOIN Disciplina on Disciplina_idDisciplina = idDisciplina
INNER JOIN Fluxo on Fluxo_idFluxo = idFluxo
INNER JOIN TipoFluxo on TipoFluxo_idTipoFluxo = idTipoFluxo
INNER JOIN Curso on Fluxo.Curso_idCurso = idCurso WHERE Curso.nome LIKE 'Engenharia de Software' AND TipoFluxo.descricao LIKE 'Planejado';