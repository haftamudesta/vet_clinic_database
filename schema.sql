CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BIT NOT NULL,
    weight_kg DECIMAL NOT NULL
);
ALTER TABLE animals
ADD species varchar(255);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(100) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100) NOT NULL
);

ALTER TABLE animals
DROP COLUMN id,
DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN id SERIAL PRIMARY KEY;

UPDATE animals SET id = id;

ALTER TABLE animals
ADD COLUMN species_id INTEGER,
ADD CONSTRAINT fk_species
    FOREIGN KEY (species_id)
    REFERENCES species (id);

ALTER TABLE animals
ADD COLUMN owner_id INTEGER,
ADD CONSTRAINT fk_owners
    FOREIGN KEY (owner_id)
    REFERENCES owners (id);