CREATE table animals(
    id INTEGER GENERATED ALWAYS as IDENTITY,
    name varchar(100) not null,
    date_of_birth date not null,
    escape_attempts integer not null,
    neutered boolean,
    weight_kg decimal not null
);
ALTER table animals 
ADD species varchar(200);
