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