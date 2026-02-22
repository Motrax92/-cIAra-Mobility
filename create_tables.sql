CREATE TABLE station (
    id_station SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    ville VARCHAR(100)
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(150)
);

CREATE TABLE vehicule (
    id_vehicule SERIAL PRIMARY KEY,
    marque VARCHAR(100),
    modele VARCHAR(100),
    type_vehicule VARCHAR(50),
    autonomie_km INTEGER,
    etat VARCHAR(50),
    ville VARCHAR(100)
);

CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    id_client INTEGER REFERENCES client(id_client),
    id_vehicule INTEGER REFERENCES vehicule(id_vehicule),
    id_station_depart INTEGER REFERENCES station(id_station),
    id_station_arrivee INTEGER REFERENCES station(id_station)
);