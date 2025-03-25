USE `marketing`;
CREATE OR REPLACE VIEW v_BillyClient AS /*  */
SELECT c.nom_client, adresse_client, v.ville, c.code_postal_client
FROM client AS c
         INNER JOIN ville AS v ON c.id_ville = v.id_ville
ORDER BY c.nom_client;

CREATE VIEW v_Duchesneau AS
SELECT v.ville, count(c.id_client)
FROM client AS c
         INNER JOIN ville AS v ON c.id_ville = v.id_ville
GROUP BY v.ville;
SELECT *
FROM v_Duchesneau;

SELECT *
FROM v_Duchesneau;

SELECT *
FROM v_BillyClient
LIMIT 5;

SELECT *
FROM v_BillyClient
LIMIT 1, 3;

SELECT *
FROM v_BillyClient
LIMIT 6, 5;

SELECT *
FROM ville
ORDER BY id_ville DESC
LIMIT 1;

create temporary table tmp_ville
(
    id_ville int primary key,
    mcode    char(8),
    ville    char(45),
    date_maj timestamp default current_timestamp
);
insert into tmp_ville
select id_ville, mcode, ville, date_maj
from ville
limit 10;


