SELECT animals.name, owners.full_name
FROM animals
INNER JOIN owners
ON animals.owner_id = owners.id
WHERE owners.full_name LIKE 'Melody Pond';

SELECT animals.name, species.name
FROM animals
INNER JOIN species
ON animals.species_id = species.id
WHERE species.name LIKE 'Pokemon';

SELECT owners.full_name, animals.name
FROM owners
LEFT JOIN animals
ON animals.owner_id = owners.id;


SELECT species.name, COUNT(animals.species_id)
FROM animals
INNER JOIN species
ON animals.species_id = species.id
GROUP BY species.name;


SELECT animals.name, species.name, owners.full_name
FROM animals
INNER JOIN owners
ON animals.owner_id = owners.id
INNER JOIN species
ON animals.species_id = species.id
WHERE owners.full_name LIKE 'Jennifer Orwell' AND species.name LIKE 'Digimon';

SELECT animals.name, owners.full_name
FROM animals
INNER JOIN owners
ON animals.owner_id = owners.id
WHERE owners.full_name LIKE 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT owners.full_name, count(animals.id)
FROM animals
LEFT JOIN owners
ON animals.owner_id = owners.id
GROUP BY owners.full_name
ORDER BY count(animals.id) desc limit 1;


