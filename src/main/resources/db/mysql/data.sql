INSERT IGNORE INTO vets VALUES (1, 'Alan', 'Whitfield');
INSERT IGNORE INTO vets VALUES (2, 'Priya', 'Nandan');
INSERT IGNORE INTO vets VALUES (3, 'Marcus', 'Alvarez');
INSERT IGNORE INTO vets VALUES (4, 'Naomi', 'Castillo');
INSERT IGNORE INTO vets VALUES (5, 'Owen', 'Bradshaw');
INSERT IGNORE INTO vets VALUES (6, 'Elena', 'Vasquez');

INSERT IGNORE INTO specialties VALUES (1, 'radiology');
INSERT IGNORE INTO specialties VALUES (2, 'surgery');
INSERT IGNORE INTO specialties VALUES (3, 'dentistry');

INSERT IGNORE INTO vet_specialties VALUES (2, 1);
INSERT IGNORE INTO vet_specialties VALUES (3, 2);
INSERT IGNORE INTO vet_specialties VALUES (3, 3);
INSERT IGNORE INTO vet_specialties VALUES (4, 2);
INSERT IGNORE INTO vet_specialties VALUES (5, 1);

INSERT IGNORE INTO types VALUES (1, 'cat');
INSERT IGNORE INTO types VALUES (2, 'dog');
INSERT IGNORE INTO types VALUES (3, 'lizard');
INSERT IGNORE INTO types VALUES (4, 'snake');
INSERT IGNORE INTO types VALUES (5, 'bird');
INSERT IGNORE INTO types VALUES (6, 'hamster');

INSERT IGNORE INTO owners VALUES (1, 'Miles', 'Whitaker', '12 Birchwood Ln.', 'Lakeview', '4155550142');
INSERT IGNORE INTO owners VALUES (2, 'Nora', 'Callahan', '48 Cedar Grove Rd.', 'Brookhaven', '4155550198');
INSERT IGNORE INTO owners VALUES (3, 'Diego', 'Fuentes', '77 Harbor View Dr.', 'Fairport', '4155550233');
INSERT IGNORE INTO owners VALUES (4, 'Grace', 'Holloway', '19 Meadowlark Ct.', 'Rivermont', '4155550271');
INSERT IGNORE INTO owners VALUES (5, 'Samuel', 'Voss', '234 Sunset Way', 'Lakeview', '4155550309');
INSERT IGNORE INTO owners VALUES (6, 'Isabel', 'Kwan', '88 North Ridge St.', 'Brookhaven', '4155550355');
INSERT IGNORE INTO owners VALUES (7, 'Tobias', 'Reyes', '1450 Aspen Blvd.', 'Brookhaven', '4155550387');
INSERT IGNORE INTO owners VALUES (8, 'Renee', 'Whitaker', '345 Magnolia St.', 'Lakeview', '4155550412');
INSERT IGNORE INTO owners VALUES (9, 'Oliver', 'Bennett', '2749 Hawkridge Trail', 'Lakeview', '4155550458');
INSERT IGNORE INTO owners VALUES (10, 'Camila', 'Torres', '2335 Independence Cir.', 'Fairport', '4155550491');

INSERT IGNORE INTO pets VALUES (1, 'Nala', '2000-09-07', 1, 1);
INSERT IGNORE INTO pets VALUES (2, 'Pepper', '2002-08-06', 6, 2);
INSERT IGNORE INTO pets VALUES (3, 'Bella', '2001-04-17', 2, 3);
INSERT IGNORE INTO pets VALUES (4, 'Coco', '2000-03-07', 2, 3);
INSERT IGNORE INTO pets VALUES (5, 'Draco', '2000-11-30', 3, 4);
INSERT IGNORE INTO pets VALUES (6, 'Kaa', '2000-01-20', 4, 5);
INSERT IGNORE INTO pets VALUES (7, 'Whiskers', '1995-09-04', 1, 6);
INSERT IGNORE INTO pets VALUES (8, 'Tiger', '1995-09-04', 1, 6);
INSERT IGNORE INTO pets VALUES (9, 'Sunny', '1999-08-06', 5, 7);
INSERT IGNORE INTO pets VALUES (10, 'Buddy', '1997-02-24', 2, 8);
INSERT IGNORE INTO pets VALUES (11, 'Skye', '2000-03-09', 5, 9);
INSERT IGNORE INTO pets VALUES (12, 'Duke', '2000-06-24', 2, 10);
INSERT IGNORE INTO pets VALUES (13, 'Shadow', '2002-06-08', 1, 10);

INSERT IGNORE INTO visits VALUES (1, 7, '2010-03-04', 'rabies shot');
INSERT IGNORE INTO visits VALUES (2, 8, '2011-03-04', 'rabies shot');
INSERT IGNORE INTO visits VALUES (3, 8, '2009-06-04', 'neutered');
INSERT IGNORE INTO visits VALUES (4, 7, '2008-09-04', 'spayed');
