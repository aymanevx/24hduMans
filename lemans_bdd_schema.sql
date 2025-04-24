create table pilotes (
    "id" INTEGER,
    "nom" TEXT,
    "pays" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE voitures (
    "numero_voiture" INTEGER,
    "écurie" TEXT,
    "voiture" TEXT,
    "type" TEXT,
    PRIMARY KEY "numero_voiture"
);

CREATE TABLE inscriptions (
    "id" INTEGER,
    "numero_voiture" INTEGER,
    "id_pilote" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("numero_voiture") references "voitures"("numero_voiture"),
    FOREIGN KEY ("id_pilote") references "pilotes"("id")

);

CREATE TABLE resultat_voiture (
    "numero_voiture" INTEGER,
    "position" INTEGER,
    "tours" INTEGER,
    "temps_abandon" TEXT,
    "nombre_arrets" INTEGER,
    FOREIGN KEY ("numero_voiture") references "voitures"("numero_voiture")
);


