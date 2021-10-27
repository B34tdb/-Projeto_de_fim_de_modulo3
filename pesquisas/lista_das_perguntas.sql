 --  Qual diretor com mais episódios dirigidos?
SELECT
    diretor,
    COUNT(episodio) AS total_aparicoes
FROM
    episodios 
GROUP BY
    diretor ORDER BY total_aparicoes DESC
LIMIT 3;

-- # Episódio com maior duração;

SELECT
    id,
    episodio,
    titulo,
    duracao
FROM
    episodios
ORDER BY
    duracao DESC;

-- # Região com mais casas;

SELECT
    regiao, COUNT(regiao) AS total
FROM
    casas
GROUP BY
    regiao
ORDER BY total DESC LIMIT 1;
 
 -- # Top 5 temporadas com maior desaprovação;

SELECT
    episodio,
    titulo,
    review_critica,
    review_usuarios,
    votos
FROM
    episodios
ORDER BY review_usuarios ASC, review_critica ASC 
LIMIT 3;

-- # Top 5 episódios com maior duração de tempo;

SELECT
    episodio,
    titulo,
    duracao
FROM
    episodios
ORDER BY duracao DESC
LIMIT 5;
 
 -- # 5 - Episódio com melhor avaliação;

SELECT
    episodio,
    titulo AS nome_episodio,
    temporada,
    pontuacao AS avaliacao
FROM
    episodios
ORDER BY pontuacao DESC
LIMIT 1;

-- # 6 - Episódio com maior audiência;

SELECT
    titulo AS nome_episodio,
    episodio,
    us_viewers AS espectadores
FROM
    episodios
ORDER BY us_viewers DESC
LIMIT 1;
 
 
 --# Qual temporada teve a melhor/pior avalição

SELECT 
	temporada
	, count(pontuacao) AS media
FROM
	episodios AS A
GROUP BY
	temporada
ORDER BY 
	media Desc limit 5;


 -- # Média de rating de cada ator Star_1
  
select 
estrela1,
    titulo
from 
episodios
order by estrela1 desc limit 16