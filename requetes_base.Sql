-- 1. Lister tous les pilotes et leur nationalité, triés par pays et nom
SELECT nom, pays
FROM pilotes
ORDER BY pays, nom;

-- 2. Afficher toutes les voitures avec leur écurie et leur type
SELECT numero_voiture, écurie, voiture, type
FROM voitures
ORDER BY écurie;

-- 3. Voir les voitures ayant terminé la course (celles qui ne sont pas "Abandon" ou "Non classé"),
-- classées par position finale (ordre croissant)
SELECT numero_voiture, position, tours, temps_abandon
FROM resultat_voiture
WHERE temps_abandon NOT IN ('Abandon', 'Non classé')
ORDER BY position ASC;

-- 4. Afficher les voitures qui ont abandonné la course, en précisant après combien de tours
SELECT numero_voiture, tours, temps_abandon
FROM resultat_voiture
WHERE temps_abandon IN ('Abandon', 'Non classé')
ORDER BY tours DESC;

-- 5. Associer chaque pilote à la voiture et à l’écurie avec lesquelles il a participé
SELECT p.nom, v.voiture, v.écurie
FROM inscriptions i
JOIN pilotes p ON i.id_pilote = p.id
JOIN voitures v ON i.numero_voiture = v.numero_voiture;

-- 6. Calculer le nombre moyen d’arrêts aux stands selon le type de voiture
SELECT v.type, AVG(rv.nombre_arrets) AS arrets_moyens
FROM voitures v
JOIN resultat_voiture rv ON v.numero_voiture = rv.numero_voiture
GROUP BY v.type;

-- 7. Lister les voitures avec le nombre de pilotes qui y sont inscrits
SELECT v.numero_voiture, v.voiture, v.écurie, COUNT(i.id_pilote) AS nb_pilotes
FROM voitures v
JOIN inscriptions i ON v.numero_voiture = i.numero_voiture
GROUP BY v.numero_voiture, v.voiture, v.écurie
ORDER BY nb_pilotes DESC;

-- 8. Moyenne de tours parcourus par type de voiture (LMH, LMDH)
SELECT v.type, AVG(rv.tours) AS moyenne_tours
FROM voitures v
JOIN resultat_voiture rv ON v.numero_voiture = rv.numero_voiture
GROUP BY v.type
ORDER BY moyenne_tours DESC;

-- 9. Top 5 des voitures ayant effectué le plus d’arrêts aux stands
SELECT numero_voiture, nombre_arrets
FROM resultat_voiture
ORDER BY nombre_arrets DESC
LIMIT 5;

-- 10. Afficher les pilotes avec la voiture qu'ils ont conduite, sa position finale et le nombre de tours
SELECT p.nom, v.voiture, rv.position, rv.tours
FROM inscriptions i
JOIN pilotes p ON i.id_pilote = p.id
JOIN voitures v ON i.numero_voiture = v.numero_voiture
JOIN resultat_voiture rv ON v.numero_voiture = rv.numero_voiture
ORDER BY rv.position;

