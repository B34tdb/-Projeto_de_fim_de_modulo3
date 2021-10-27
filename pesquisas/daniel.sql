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