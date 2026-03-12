-- Query 1
SELECT
	Nome,
	Ano
FROM Filmes;

-- Query 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY 'ano';

--Query 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--Query 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

--Query 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000;

--Query 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--Query 7
SELECT
	Ano,
	Count(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--Query 8
SELECT
	*
FROM Atores
WHERE Genero = 'M';

--Query 9 
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--Query 10
SELECT 
	Nome,
	Genero
FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
Join Generos ON Generos.Id = FilmesGenero.IdGenero;

--Query 11
SELECT 
	Nome,
	Genero
FROM Filmes JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
Join Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério';

--Query 12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes JOIN ElencoFilme 
ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores
ON Atores.Id = ElencoFilme.IdAtor;
