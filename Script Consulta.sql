-- 1) Buscar o nome e ano dos filmes:

SELECT 
    Nome,
    Ano
FROM Filmes

-- 2) Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:

SELECT 
    Nome,
    Ano
FROM Filmes
ORDER BY Ano 

-- 3) Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração:

SELECT * FROM Filmes
WHERE Nome = 'de volta para o futuro'

-- 4) Buscar os filmes lançados em 1997:

SELECT * FROM Filmes 
WHERE Ano = 1997

-- 5) Buscar os filmes lançados APÓS o ano 2000:

SELECT * FROM Filmes 
WHERE Ano > 2000

-- 6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente:

SELECT * FROM Filmes 
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao

-- 7) Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente:

SELECT 
    Ano,
    COUNT(Ano) Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8) Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:

SELECT 
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'M'

-- 9) Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:

SELECT 
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10) Buscar o nome do filme e o gênero:

SELECT 
    Filmes.Nome,
    Generos.Genero
FROM FilmesGenero
LEFT JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme 
LEFT JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11) Buscar o nome do filme e o gênero do tipo "Mistério":

SELECT 
    Filmes.Nome,
    Generos.Genero
FROM FilmesGenero
LEFT JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme 
LEFT JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12) Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:

SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM ElencoFilme
LEFT JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme 
LEFT JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
