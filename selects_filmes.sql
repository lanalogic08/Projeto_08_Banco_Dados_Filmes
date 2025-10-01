-- Mostrando a Tabela toda 
SELECT * FROM filmes


-- 1. Filmes com melhor avaliação
SELECT titulo, diretor, nota_imdb 
FROM filmes 
ORDER BY nota_imdb DESC 
LIMIT 10;

-- 2. Filmes por década
SELECT 
    (ano_lancamento / 10) * 10 as decada,
    COUNT(*) as total_filmes,
    AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY decada 
ORDER BY decada;

-- 3. Diretores com mais filmes na lista
SELECT diretor, COUNT(*) as total_filmes, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY diretor 
HAVING COUNT(*) > 1
ORDER BY total_filmes DESC;

-- 4. Gêneros mais populares
SELECT genero, COUNT(*) as total, AVG(nota_imdb) as media_nota
FROM filmes 
GROUP BY genero 
ORDER BY total DESC;

-- 5. Filmes mais longos
SELECT titulo, duracao_minutos, genero
FROM filmes 
ORDER BY duracao_minutos DESC 
LIMIT 10;

-- 6. Eu quero saber quais são os filmes do Diretor Christopher Nola
SELECT * FROM filmes where diretor = "Christopher Nolan"

-- 7. Eu quero saber quais são os filmes do James Gunn
SELECT * FROM filmes where diretor = "James Gunn"

-- 8. Eu quero saber quais os filmes de ação lançados em 2016
SELECT ano_lancamento, genero, titulo FROM filmes where ano_lancamento = 2016 and genero = "Ação"

-- 9. Eu quero saber quais os filmes do batman e quais os diretores
SELECT titulo, diretor FROM filmes where titulo like "%batman%"

-- 10. Eu quero saber quais os filmes de terror e drama lançado entre 1980 e 2002
SELECT titulo, genero, ano_lancamento
from filmes 
where (genero = "Drama" or genero = "Terror")  
and ano_lancamento >= 1980
and ano_lancamento <= 2002
order by ano_lancamento ASC

-- 11. Eu quero Saber quantos filmes foram lançados em 1999
SELECT titulo, ano_lancamento FROM filmes where ano_lancamento = 1999
SELECT count (*) as total_filmes FROM filmes where ano_lancamento = 1999

-- 12. Eu quero saber quantos filmes tem o diretor Quentin Tarantino
SELECT * FROM filmes where diretor = "Quentin Tarantino"
SELECT count(*)as total_filmes from filmes where diretor = "Quentin Tarantino"
-- 13. Eu quero saber quais os filmes do James Cameron e quais os generos deles
SELECT titulo, diretor, genero FROM filmes where diretor = "James Cameron"

-- 14. Por fim vamos adiconar as informações do seu filme favorito na tabela.
INSERT INTO filmes (titulo, genero, ano_lancamento, duracao_minutos, diretor, nota_imdb) VALUES
('Esposa de mentirinha', 'Comédia', 2011, 117. 'Dennis dugan', 6.4)

-- 15. Vamos adiconar as informações do filme que o professor odeia.
INSERT INTO filmes (titulo, genero, ano_lancamento, duracao_minutos, diretor, nota_imdb) VALUES
('Homem-aranha: Longe de casa', 'Ação', 2019, 130, 'Jon Watts', 7.4)

-- 16. Vamos deletar esse filme que o professor detesta.
DELETE from filmes where id = 103 
SELECT * from filmes order by id desc 



