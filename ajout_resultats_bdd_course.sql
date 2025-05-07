-- Insertion des résultats de la course des 24 Heures du Mans 2024
-- Source : Wikipedia - 24 Heures du Mans 2024 (classement général).  
-- Les données ont été extraites et structurées à l’aide de ChatGPT.
-- Chaque ligne représente le résultat final d'une voiture participante.

INSERT INTO resultat_voiture (numero_voiture, position, tours, temps_abandon, nombre_arrets) VALUES
(50, 1, 311, '0:00:00', 26),
(7, 2, 311, '+00:00:14.221', 31),
(51, 3, 311, '+00:00:36.730', 28),
(6, 4, 311, '+00:00:37.897', 28),
(8, 5, 311, '+00:01:02.824', 28),
(5, 6, 311, '+00:01:45.654', 24),
(2, 7, 311, '+00:02:34.468', 27),
(12, 8, 311, '+00:03:02.691', 27),
(38, 9, 311, '+00:03:36.756', 31),
(63, 10, 309, '+2 tours', 25),
(94, 11, 309, '+2 tours', 31),
(93, 12, 309, '+2 tours', 30),
(19, 13, 309, '+2 tours', 29),
(11, 14, 302, '+9 tours', 28),
(311, 15, 280, '+31 tours', 24),
(99, 16, 251, 'Abandon', 24),
(3, 17, 223, 'Abandon', 21),
(83, 18, 248, 'Abandon', 20),
(20, 19, 96, 'Non classé', 10),
(36, 20, 88, 'Abandon', 15),
(15, 21, 102, 'Abandon', 16),
(35, 22, 75, 'Abandon', 12),
(4, 23, 0, 'Non classé', 0);
