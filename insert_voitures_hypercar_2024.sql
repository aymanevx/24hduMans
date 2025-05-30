-- Insertion des voitures engagées aux 24 Heures du Mans 2024
-- Source : Wikipedia - 24 Heures du Mans 2024 (liste des engagés).
-- Les données ont été extraites et structurées à l’aide de ChatGPT.
-- Chaque ligne correspond à une voiture participante avec son numéro, écurie, modèle et catégorie.

INSERT INTO voitures (numero_voiture, écurie, voiture, type)
VALUES
(2, 'Cadillac Racing', 'Cadillac V-Series.R', 'LMDh'),
(3, 'Cadillac Racing', 'Cadillac V-Series.R', 'LMDh'),
(4, 'Porsche Penske Motorsport', 'Porsche 963', 'LMDh'),
(5, 'Porsche Penske Motorsport', 'Porsche 963', 'LMDh'),
(6, 'Porsche Penske Motorsport', 'Porsche 963', 'LMDh'),
(7, 'Toyota Gazoo Racing', 'Toyota GR010 Hybrid', 'LMH'),
(8, 'Toyota Gazoo Racing', 'Toyota GR010 Hybrid', 'LMH'),
(11, 'Isotta Fraschini Duqueine', 'Isotta Fraschini Tipo 6 LMH-C', 'LMH'),
(12, 'Hertz Team Jota', 'Porsche 963', 'LMDh'),
(15, 'BMW M Team WRT', 'BMW M Hybrid V8', 'LMDh'),
(19, 'Lamborghini Iron Lynx', 'Lamborghini SC63', 'LMDh'),
(20, 'BMW M Team WRT', 'BMW M Hybrid V8', 'LMDh'),
(35, 'Alpine Endurance Team', 'Alpine A424', 'LMDh'),
(36, 'Alpine Endurance Team', 'Alpine A424', 'LMDh'),
(38, 'Hertz Team Jota', 'Porsche 963', 'LMDh'),
(50, 'Ferrari AF Corse', 'Ferrari 499P', 'LMH'),
(51, 'Ferrari AF Corse', 'Ferrari 499P', 'LMH'),
(63, 'Lamborghini Iron Lynx', 'Lamborghini SC63', 'LMDh'),
(83, 'AF Corse', 'Ferrari 499P', 'LMH'),
(93, 'Peugeot TotalEnergies', 'Peugeot 9X8', 'LMH'),
(94, 'Peugeot TotalEnergies', 'Peugeot 9X8', 'LMH'),
(99, 'Proton Competition', 'Porsche 963', 'LMDh'),
(311, 'Whelen Cadillac Racing', 'Cadillac V-Series.R', 'LMDh');
