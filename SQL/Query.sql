-- Los veterinarios y cuidadores que comparten el apellido.


-- Los animales herbivoros que pertenezcan al bioma bosque templado.


-- Alimentos de tipo semilla, que son distribuidos en el aviario.


-- Los cuidadores y proveedores que vivan en el mismo estado.


-- Biomas que posean al menos 10 animales.
SELECT *
FROM Bioma
WHERE IDBioma IN (
    SELECT IDBioma
    FROM Animal
    GROUP BY IDBioma
    HAVING COUNT(*) >= 10
); 


SELECT *
FROM animal
WHERE alimentacion = 'Herbivoro'
AND idbioma = (SELECT idbioma FROM bioma WHERE tipobioma = 'bosque templado');