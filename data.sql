INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, '1', 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, '1', 8);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, '0', 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, '1', 11);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, '0', -11);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', 2, '1', -5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', 3, '0', -12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', 1, '1', -45);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', 7, '1', 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', 3, '1', 17);

INSERT INTO animals (name, date_of_birth, escape_attempts,neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', 4, '1', 22);


INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);


INSERT INTO species (name)
VALUES ('Pokemon'),
('Digimon');

BEGIN;

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

COMMIT;

BEGIN;

UPDATE animals
SET owner_id = 1
WHERE name LIKE 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name LIKE 'Gabumon' OR name LIKE 'Pikachu';

UPDATE animals
SET owner_id = 3
WHERE name LIKE 'Devimon' OR name LIKE 'Plantmon';

UPDATE animals
SET owner_id = 4
WHERE name LIKE 'Charmander' OR name LIKE 'Squirtle' OR name LIKE 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name LIKE 'Angemon' OR name LIKE 'Boarmon';

COMMIT;




INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');


INSERT INTO specializations (vets_id, species_id)
VALUES (1, 1),
(3, 1),
(3, 2),
(4, 2);

INSERT INTO visits (animals_id, vets_id, date_of_visit)
VALUES (1, 1, '2020-05-24'),
(1, 3, '2020-07-22'),
(2, 4, '2021-02-02'),
(5, 2, '2020-01-05'),
(5, 2, '2020-03-08'),
(5, 2, '2021-05-14'),
(3, 3, '2021-05-04'),
(7, 4, '2021-02-24'),
(8, 2, '2019-12-21'),
(8, 1, '2020-08-10'),
(8, 2, '2021-04-07'),
(9, 3, '2019-09-29'),
(10, 4, '2020-10-03'),
(10, 4, '2020-11-04'),
(4, 2, '2019-01-24'),
(4, 2, '2019-05-15'),
(4, 2, '2020-02-27'),
(4, 2, '2020-08-03'),
(6, 3, '2020-05-24'),
(6, 1, '2021-01-11');

