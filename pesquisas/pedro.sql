-- # 5 - Episódio com maior duração;

SELECT
    id,
    episodio,
    titulo,
    duracao
FROM
    episodios
ORDER BY
    duracao DESC;

-- # 6 - Região com mais casas;

SELECT
    regiao, COUNT(regiao) AS total
FROM
    casas
GROUP BY
    regiao
ORDER BY total DESC LIMIT 1;