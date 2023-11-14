-- Los veterinarios y cuidadores que comparten el apellido.
-- Si solo debe concordar con al menos uno: 
SELECT *
FROM Veterinario
WHERE ApellidoPaterno IN (SELECT ApellidoPaterno FROM Cuidador)
   OR ApellidoMaterno IN (SELECT ApellidoMaterno FROM Cuidador);
  
 -- Si debe concordar con los dos: (Se debera cambiar el DML para que devuelva al menos 5 registros)
SELECT *
FROM Veterinario
WHERE ApellidoPaterno IN (SELECT ApellidoPaterno FROM Cuidador)
   AND ApellidoMaterno IN (SELECT ApellidoMaterno FROM Cuidador);



-- Los animales herbivoros que pertenezcan al bioma bosque templado.
SELECT *
FROM animal
WHERE alimentacion = 'Herbivoro'
AND idbioma IN (SELECT idbioma FROM bioma WHERE tipobioma = 'bosque templado');




-- Alimentos de tipo semilla, que son distribuidos en el aviario.


-- Los cuidadores y proveedores que vivan en el mismo estado.

SELECT *
FROM Cuidador
WHERE estado IN (SELECT estado FROM Proveedor);


-- Biomas que posean al menos 10 animales.
SELECT *
FROM Bioma
WHERE IDBioma IN (
    SELECT IDBioma
    FROM Animal
    GROUP BY IDBioma
    HAVING COUNT(*) >= 10
); 


