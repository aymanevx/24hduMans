-- Table contenant les informations sur les pilotes
create table pilotes (
    "id" INTEGER,             -- Identifiant unique du pilote
    "nom" TEXT,               -- Nom complet du pilote
    "pays" TEXT,              -- Nationalité du pilote
    PRIMARY KEY("id")         -- Clé primaire (identifiant du pilote)
);

-- Table contenant les informations sur les voitures engagées
CREATE TABLE voitures (
    "numero_voiture" INTEGER, -- Numéro attribué à la voiture pendant la course
    "écurie" TEXT,            -- Nom de l'écurie ou de l'équipe
    "voiture" TEXT,           -- Modèle de la voiture
    "type" TEXT,              -- Catégorie (LMH ou LMDh)
    PRIMARY KEY ("numero_voiture") -- Clé primaire (numéro unique de la voiture)
);

-- Table associant chaque pilote à une voiture (relation plusieurs-à-plusieurs)
CREATE TABLE inscriptions (
    "id" INTEGER,                    -- Identifiant unique de l'inscription
    "numero_voiture" INTEGER,       -- Référence à la voiture engagée
    "id_pilote" INTEGER,            -- Référence au pilote inscrit
    PRIMARY KEY ("id"),             -- Clé primaire
    FOREIGN KEY ("numero_voiture") REFERENCES "voitures"("numero_voiture"), -- Lien vers la table voitures
    FOREIGN KEY ("id_pilote") REFERENCES "pilotes"("id")                    -- Lien vers la table pilotes
);

-- Table contenant les résultats de chaque voiture
CREATE TABLE resultat_voiture (
    "numero_voiture" INTEGER,       -- Référence à la voiture (identifiant)
    "position" INTEGER,             -- Position finale dans la course
    "tours" INTEGER,                -- Nombre de tours complétés
    "temps_abandon" TEXT,          -- Temps ou état d’abandon (ou "Non classé")
    "nombre_arrets" INTEGER,       -- Nombre d’arrêts aux stands effectués
    FOREIGN KEY ("numero_voiture") REFERENCES "voitures"("numero_voiture") -- Lien vers la table voitures
);
