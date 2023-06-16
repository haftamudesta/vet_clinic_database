SELECT animals.name, vets.name, visits.date_of_visit
FROM animals
JOIN visits
ON animals.id = visits.animals_id
JOIN vets
ON vets.id = visits.vets_id
WHERE vets_id = 1
ORDER BY visits.date_of_visit desc limit 1;


SELECT animals.name, vets.name
FROM animals
JOIN visits
ON animals.id = visits.animals_id
JOIN vets
ON vets.id = visits.vets_id
WHERE vets_id = 3;


SELECT vets.name, species.name
FROM vets
LEFT JOIN specializations
ON vets.id = specializations.vets_id
LEFT JOIN species
ON species.id = specializations.species_id;


SELECT animals.name, vets.name, visits.date_of_visit
FROM animals
JOIN visits
ON animals.id = visits.animals_id
JOIN vets
ON vets.id = visits.vets_id
WHERE (visits.vets_id = 3) AND (visits.date_of_visit BETWEEN '2020-04-01' AND '2020-08-30');


SELECT animals.name, COUNT(visits.animals_id) as total
FROM animals
JOIN visits
ON animals.id = visits.animals_id
GROUP BY animals.name
ORDER BY total DESC limit 1;


SELECT animals.name, vets.name, visits.date_of_visit
FROM animals
JOIN visits
ON animals.id = visits.animals_id
JOIN vets
ON vets.id = visits.vets_id
WHERE vets_id = 2
ORDER BY visits.date_of_visit asc limit 1;


SELECT animals.name, vets.name, visits.date_of_visit
FROM animals
JOIN visits
ON animals.id = visits.animals_id
JOIN vets
ON vets.id = visits.vets_id
ORDER BY visits.date_of_visit DESC;


SELECT COUNT(visits.vets_id)
FROM visits
JOIN vets
ON visits.vets_id = vets.id
LEFT JOIN specializations
ON specializations.vets_id = vets.id
WHERE specializations.vets_id IS null;

SELECT species.name, COUNT(species.name)
FROM visits
JOIN vets
ON visits.vets_id = vets.id
JOIN animals
ON visits.animals_id = animals.id
JOIN species
ON animals.species_id = species.id
WHERE vets.id = 2
GROUP BY species.name
ORDER BY COUNT(species.name) DESC LIMIT 1;


