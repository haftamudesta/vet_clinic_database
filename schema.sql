CREATE table animals(
    id INTEGER GENERATED ALWAYS as IDENTITY,
    name varchar(100),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal
);

