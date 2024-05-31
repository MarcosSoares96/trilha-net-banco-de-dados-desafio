-- 1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
From Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 	
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Filmes.Ano ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT 	
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Filmes.Nome LIKE 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
SELECT 	
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Filmes.Ano LIKE 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT 	
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Filmes.Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente
SELECT 	
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150
ORDER BY Filmes.Duracao ASC

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--ordenando pela duracao em ordem decrescente
SELECT
	Ano, COUNT (Nome) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
--e ordenando pelo PrimeiroNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
SELECT 
	Nome, Genero
FROM Filmes as f
Inner Join FilmesGenero as fg on f.Id = fg.IdFilme
Inner Join Generos as g on fg.IdGenero = g.Id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	Nome, Genero
FROM Filmes as f
Inner Join FilmesGenero as fg on f.Id = fg.IdFilme
Inner Join Generos as g on fg.IdGenero = g.Id
WHERE Genero Like 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes as f
Inner Join ElencoFilme as ef on f.Id = ef.IdFilme
Inner Join Atores as a on ef.IdAtor = a.Id