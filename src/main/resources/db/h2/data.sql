INSERT INTO vets VALUES (default, 'Alan', 'Whitfield');
INSERT INTO vets VALUES (default, 'Priya', 'Nandan');
INSERT INTO vets VALUES (default, 'Marcus', 'Alvarez');
INSERT INTO vets VALUES (default, 'Naomi', 'Castillo');
INSERT INTO vets VALUES (default, 'Owen', 'Bradshaw');
INSERT INTO vets VALUES (default, 'Elena', 'Vasquez');

INSERT INTO specialties VALUES (default, 'radiology');
INSERT INTO specialties VALUES (default, 'surgery');
INSERT INTO specialties VALUES (default, 'dentistry');

INSERT INTO vet_specialties VALUES (2, 1);
INSERT INTO vet_specialties VALUES (3, 2);
INSERT INTO vet_specialties VALUES (3, 3);
INSERT INTO vet_specialties VALUES (4, 2);
INSERT INTO vet_specialties VALUES (5, 1);

INSERT INTO types VALUES (default, 'cat');
INSERT INTO types VALUES (default, 'dog');
INSERT INTO types VALUES (default, 'lizard');
INSERT INTO types VALUES (default, 'snake');
INSERT INTO types VALUES (default, 'bird');
INSERT INTO types VALUES (default, 'hamster');

INSERT INTO owners VALUES (default, 'Miles', 'Whitaker', '12 Birchwood Ln.', 'Lakeview', '4155550142');
INSERT INTO owners VALUES (default, 'Nora', 'Callahan', '48 Cedar Grove Rd.', 'Brookhaven', '4155550198');
INSERT INTO owners VALUES (default, 'Diego', 'Fuentes', '77 Harbor View Dr.', 'Fairport', '4155550233');
INSERT INTO owners VALUES (default, 'Grace', 'Holloway', '19 Meadowlark Ct.', 'Rivermont', '4155550271');
INSERT INTO owners VALUES (default, 'Samuel', 'Voss', '234 Sunset Way', 'Lakeview', '4155550309');
INSERT INTO owners VALUES (default, 'Isabel', 'Kwan', '88 North Ridge St.', 'Brookhaven', '4155550355');
INSERT INTO owners VALUES (default, 'Tobias', 'Reyes', '1450 Aspen Blvd.', 'Brookhaven', '4155550387');
INSERT INTO owners VALUES (default, 'Renee', 'Whitaker', '345 Magnolia St.', 'Lakeview', '4155550412');
INSERT INTO owners VALUES (default, 'Oliver', 'Bennett', '2749 Hawkridge Trail', 'Lakeview', '4155550458');
INSERT INTO owners VALUES (default, 'Camila', 'Torres', '2335 Independence Cir.', 'Fairport', '4155550491');

INSERT INTO pets VALUES (default, 'Nala', '2010-09-07', 1, 1);
INSERT INTO pets VALUES (default, 'Pepper', '2012-08-06', 6, 2);
INSERT INTO pets VALUES (default, 'Bella', '2011-04-17', 2, 3);
INSERT INTO pets VALUES (default, 'Coco', '2010-03-07', 2, 3);
INSERT INTO pets VALUES (default, 'Draco', '2010-11-30', 3, 4);
INSERT INTO pets VALUES (default, 'Kaa', '2010-01-20', 4, 5);
INSERT INTO pets VALUES (default, 'Whiskers', '2012-09-04', 1, 6);
INSERT INTO pets VALUES (default, 'Tiger', '2012-09-04', 1, 6);
INSERT INTO pets VALUES (default, 'Sunny', '2011-08-06', 5, 7);
INSERT INTO pets VALUES (default, 'Buddy', '2007-02-24', 2, 8);
INSERT INTO pets VALUES (default, 'Skye', '2010-03-09', 5, 9);
INSERT INTO pets VALUES (default, 'Duke', '2010-06-24', 2, 10);
INSERT INTO pets VALUES (default, 'Shadow', '2012-06-08', 1, 10);

INSERT INTO visits VALUES (default, 7, '2013-01-01', 'rabies shot');
INSERT INTO visits VALUES (default, 8, '2013-01-02', 'rabies shot');
INSERT INTO visits VALUES (default, 8, '2013-01-03', 'neutered');
INSERT INTO visits VALUES (default, 7, '2013-01-04', 'spayed');
