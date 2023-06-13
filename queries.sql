BEGIN;

UPDATE animals
SET species = 'unspecified';

ROLLBACK;


BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species is null;


BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals
WHERE date_of_birth > '2022-01-01';

SAVEPOINT DEL_YEAR_2022;

UPDATE animals
SET weight_kg = (weight_kg * -1);

ROLLBACK TO DEL_YEAR_2022;

UPDATE animals
SET weight_kg = (weight_kg * -1)
WHERE weight_kg < 0;


SELECT COUNT(name) AS total
FROM animals;


SELECT COUNT(name) AS total
FROM animals
WHERE escape_attempts = 0
GROUP BY name;


SELECT AVG(weight_kg)
FROM animals;


SELECT neutered, SUM(escape_attempts)
FROM animals
GROUP BY neutered;

SELECT species, MIN(weight_kg) AS min, MAX(weight_kg) AS max
FROM animals
GROUP BY species;

SELECT species, AVG(escape_attempts)
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;
