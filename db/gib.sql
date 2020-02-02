------------------------------
-- Archivo de base de datos --
------------------------------

/* Showing results for Juegos pasados Y Por Pasar.csv */
/* CREATE TABLE */
DROP TABLE IF EXISTS generos CASCADE;

CREATE TABLE generos (
    id bigserial PRIMARY KEY,
    denom varchar(255) NOT NULL UNIQUE,
    created_at timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS consolas CASCADE;

CREATE TABLE consolas (
    id bigserial PRIMARY KEY,
    denom varchar(255) NOT NULL UNIQUE,
    created_at timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS juegos CASCADE;

CREATE TABLE juegos (
    id bigserial PRIMARY KEY,
    fecha date NOT NULL DEFAULT CURRENT_DATE,
    nombre varchar(100) NOT NULL,
    consola_id bigint NOT NULL REFERENCES consolas (id),
    pasado boolean,
    genero_id bigint NOT NULL REFERENCES generos (id),
    year_debut smallint CONSTRAINT ck_primer_videojuego CHECK (year_debut >= 1950)
);

INSERT INTO consolas (denom)
    VALUES ('Android'), ('Gamecube'), ('NDS'), ('PS1'), ('PS2'), ('PS3'), ('PS4'), ('PC'), ('Raspberry'), ('Wii U'), ('XBOX 360');

INSERT INTO generos (denom)
    VALUES ('ARPG'), ('Conduccion'), ('Deportes Extremos'), ('Espionaje'), ('Futbol'), ('Metroidvania'), ('Peleas'), ('Plataformas'), ('RPG'), ('Sandbox'), ('Soulsborne'), ('Supervivencia'), ('Terror'), ('Walking Simulator');


/* INSERT QUERY NO: 1 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('6/1/2017', 'Chrono Trigger', 1, FALSE, 9, 1995);


/* INSERT QUERY NO: 2 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/1/2017', 'Silent Hill 2', 8, FALSE, 13, 2001);


/* INSERT QUERY NO: 3 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('8/2/2017', 'Silent Hill', 8, FALSE, 13, 1999);


/* INSERT QUERY NO: 4 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('14/2/2017', 'Silent Hill 3', 5, FALSE, 13, 2003);


/* INSERT QUERY NO: 5 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('6/3/2017', 'Dark Souls 2', 8, FALSE, 11, 2014);


/* INSERT QUERY NO: 6 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('1/4/2017', 'Bloodborne', 7, FALSE, 11, 2015);


/* INSERT QUERY NO: 7 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('29/4/2017', 'Metal Gear', 6, FALSE, 4, 1987);


/* INSERT QUERY NO: 8 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('1/5/2017', 'Metal Gear 2 Solid Snake', 6, FALSE, 4, 1990);


/* INSERT QUERY NO: 9 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('4/5/2017', 'Metal Gear Solid ', 6, TRUE, 4, 1998);


/* INSERT QUERY NO: 10 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('5/5/2017', 'Metal Gear Solid 2: Sons Of Liberty', 6, TRUE, 4, 2001);


/* INSERT QUERY NO: 11 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('9/5/2017', 'Metal Gear Solid 3: Snake Eater', 6, TRUE, 4, 2004);


/* INSERT QUERY NO: 12 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/5/2017', 'Metal Gear Solid 4: Guns Of The Patriots', 6, TRUE, 4, 2008);


/* INSERT QUERY NO: 13 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('5/1/2018', 'skate.', 6, FALSE, 3, 2007);


/* INSERT QUERY NO: 14 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('27/1/2018', 'Mario Kart 8', 10, FALSE, 2, 2014);


/* INSERT QUERY NO: 15 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('14/2/2018', 'Skate 2', 6, FALSE, 3, 2009);


/* INSERT QUERY NO: 16 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('8/3/2018', 'The Legend Of Zelda: Breath Of The Wild', 10, FALSE, 1, 2017);


/* INSERT QUERY NO: 17 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('13/3/2018', 'Skate 3', 6, FALSE, 3, 2010);


/* INSERT QUERY NO: 18 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('15/3/2018', 'Super Mario 3D World', 10, FALSE, 8, 2013);


/* INSERT QUERY NO: 19 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('28/6/2018', 'MX vs. ATV Reflex', 8, FALSE, 2, 2009);


/* INSERT QUERY NO: 20 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('4/7/2018', 'Grand Theft Auto: Vice City', 8, TRUE, 10, 2003);


/* INSERT QUERY NO: 21 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('7/7/2018', 'Grand Theft Auto: Vice City Stories', 8, TRUE, 10, 2006);


/* INSERT QUERY NO: 22 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('10/7/2018', 'Grand Theft Auto: Liberty City Stories', 8, TRUE, 10, 2005);


/* INSERT QUERY NO: 23 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('28/7/2018', 'Pro Evolution Soccer 6', 8, TRUE, 5, 2005);


/* INSERT QUERY NO: 24 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('8/8/2018', 'Need For Speed Underground', 8, TRUE, 2, 2003);


/* INSERT QUERY NO: 25 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('27/8/2018', 'Resident Evil DS', 3, FALSE, 13, 1996);


/* INSERT QUERY NO: 26 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('28/8/2018', 'Need For Speed Underground 2', 8, FALSE, 2, 2004);


/* INSERT QUERY NO: 27 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('9/9/2018', 'Tony Hawk s Pro Skater 2', 9, FALSE, 3, 2000);


/* INSERT QUERY NO: 28 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('10/9/2018', 'Tony Hawks Pro Skater', 9, FALSE, 3, 1999);


/* INSERT QUERY NO: 29 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('17/9/2018', 'Resident Evil Remake', 11, FALSE, 13, 2002);


/* INSERT QUERY NO: 30 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('26/9/2018', 'Need For Speed Most Wanted', 11, TRUE, 2, 2005);


/* INSERT QUERY NO: 31 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('30/9/2018', 'Tekken 7', 8, FALSE, 7, 2015);


/* INSERT QUERY NO: 32 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('6/10/2018', 'Toy Story 2', 9, FALSE, 8, 1999);


/* INSERT QUERY NO: 33 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('31/10/2018', 'Ratchet And Clank', 5, TRUE, 8, 2002);


/* INSERT QUERY NO: 34 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('4/11/2018', 'Ratchet & Clank 2: Totalmente a tope', 5, TRUE, 8, 2003);


/* INSERT QUERY NO: 35 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('9/11/2018', 'Dirt 3', 8, FALSE, 2, 2015);


/* INSERT QUERY NO: 36 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('12/11/2018', 'Metal Gear Solid 5: Ground Zeroes', 8, TRUE, 4, 2014);


/* INSERT QUERY NO: 37 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('16/11/2018', 'Hyper Light Drifter ', 8, FALSE, 6, 2016);


/* INSERT QUERY NO: 38 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/11/2018', 'Hollow Knight', 8, FALSE, 6, 2017);


/* INSERT QUERY NO: 39 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('30/11/2018', 'Metal Gear Solid 5: The Phantom Pain', 8, TRUE, 4, 2015);


/* INSERT QUERY NO: 40 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('30/11/2018', 'Grow Home', 8, FALSE, 8, 2015);


/* INSERT QUERY NO: 41 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('27/12/2018', 'Fallout New Vegas', 8, FALSE, 9, 2010);


/* INSERT QUERY NO: 42 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('24/1/2019', 'Mirrors Edge', 8, TRUE, 8, 2008);


/* INSERT QUERY NO: 43 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('28/1/2019', 'Dead Space', 8, TRUE, 13, 2008);


/* INSERT QUERY NO: 44 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('28/2/2019', 'Minecraft', 8, TRUE, 12, 2011);


/* INSERT QUERY NO: 45 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('18/4/2019', 'Burnout Paradise', 8, FALSE, 2, 2008);


/* INSERT QUERY NO: 46 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('2/5/2019', 'Metal Gear Solid: Twin Snakes', 8, TRUE, 4, 2004);


/* INSERT QUERY NO: 47 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('8/5/2019', 'Forager', 8, FALSE, 12, 2019);


/* INSERT QUERY NO: 48 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('9/5/2019', 'Metal Gear Solid', 6, TRUE, 4, 1998);


/* INSERT QUERY NO: 49 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('11/5/2019', 'Tony Hawks Pro Skater 3 (PS1)', 9, FALSE, 3, 2001);


/* INSERT QUERY NO: 50 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('13/5/2019', 'Tony Hawk Pro Skater 2X', 8, FALSE, 3, 2001);


/* INSERT QUERY NO: 51 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('29/5/2019', 'Spyro 2', 8, TRUE, 8, 1999);


/* INSERT QUERY NO: 52 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('7/6/2019', 'The Legend Of Zelda: A Link To The Past', 10, FALSE, 1, 1991);


/* INSERT QUERY NO: 53 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('16/6/2019', 'The Legend Of Zelda: Links Awakening', 10, FALSE, 1, 1993);


/* INSERT QUERY NO: 54 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('19/6/2019', 'The Legend Of Zelda: Oracle Of Seasons', 10, FALSE, 1, 2001);


/* INSERT QUERY NO: 55 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('26/6/2019', 'The Legend Of Zelda: Oracle Of Ages', 10, FALSE, 1, 2001);


/* INSERT QUERY NO: 56 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('29/6/2019', 'The Legend Of Zelda:The Minish Cap', 10, FALSE, 1, 2004);


/* INSERT QUERY NO: 57 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('5/7/2019', 'Descenders', 8, FALSE, 3, 2019);


/* INSERT QUERY NO: 58 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('16/7/2019', 'Ratchet And Clank PS4', 7, FALSE, 8, 2016);


/* INSERT QUERY NO: 59 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('25/7/2019', 'Red Dead Redemption 2 ', 7, FALSE, 10, 2018);


/* INSERT QUERY NO: 60 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('27/7/2019', 'Resident Evil 7', 7, FALSE, 13, 2017);


/* INSERT QUERY NO: 61 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('30/7/2019', 'Resident Evil 2 Remake', 7, FALSE, 13, 2019);


/* INSERT QUERY NO: 62 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('1/8/2019', 'What Remains Of Edith Finch', 7, FALSE, 14, 2017);


/* INSERT QUERY NO: 63 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('2/8/2019', 'Soma', 7, FALSE, 14, 2015);


/* INSERT QUERY NO: 64 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('4/8/2019', 'RiME', 7, FALSE, 8, 2017);


/* INSERT QUERY NO: 65 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('6/8/2019', 'Metal Gear Solid 2: Sons Of Liberty', 6, TRUE, 4, 2001);


/* INSERT QUERY NO: 66 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('15/8/2019', 'Horizon Zero Dawn', 7, FALSE, 1, 2017);


/* INSERT QUERY NO: 67 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('16/9/2019', 'God Of War 4', 7, FALSE, 1, 2018);


/* INSERT QUERY NO: 68 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('5/10/2019', 'Spiderman', 7, FALSE, 1, 2018);


/* INSERT QUERY NO: 69 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('9/10/2019', 'Spyro Reignited', 8, FALSE, 8, 2019);


/* INSERT QUERY NO: 70 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('11/10/2019', 'Spyro 2 Reignited', 8, FALSE, 8, 2019);


/* INSERT QUERY NO: 71 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('12/10/2019', 'Spyro 3 Reignited', 8, FALSE, 8, 2019);


/* INSERT QUERY NO: 72 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('30/10/2019', 'Metal Gear Solid 3: Snake Eater', 6, TRUE, 4, 2004);


/* INSERT QUERY NO: 73 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('5/11/2019', 'Super Mario Sunshine', 2, FALSE, 8, 2002);


/* INSERT QUERY NO: 74 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('17/11/2019', 'Super Metroid', 10, FALSE, 6, 1994);


/* INSERT QUERY NO: 75 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('19/11/2019', 'Metroid Zero Mission', 10, FALSE, 6, 2004);


/* INSERT QUERY NO: 76 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/11/2019', 'Metroid Fusion', 10, FALSE, 6, 2002);


/* INSERT QUERY NO: 77 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/11/2019', 'Super Mario Galaxy', 10, FALSE, 8, 2007);


/* INSERT QUERY NO: 78 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('24/11/2019', 'Metroid 2 (AM2R)', 8, FALSE, 6, 2016);


/* INSERT QUERY NO: 79 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('11/12/2019', 'Blasphemous', 8, FALSE, 6, 2019);


/* INSERT QUERY NO: 80 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('12/12/2019', 'Horizon Chase Turbo', 8, FALSE, 2, 2018);


/* INSERT QUERY NO: 81 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('14/12/2019', 'Portal', 8, TRUE, 8, 2007);


/* INSERT QUERY NO: 82 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('15/12/2019', 'Ori And The Blind Forest', 8, FALSE, 6, 2015);


/* INSERT QUERY NO: 83 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('15/12/2019', 'Celeste', 8, FALSE, 8, 2018);


/* INSERT QUERY NO: 84 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('21/12/2019', 'Castlevania Symphony Of The Night', 9, FALSE, 6, 1997);


/* INSERT QUERY NO: 85 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('21/12/2019', 'Katana ZERO', 8, FALSE, 8, 2019);


/* INSERT QUERY NO: 86 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('3/1/20', 'The Witcher', 8, FALSE, 1, 2007);


/* INSERT QUERY NO: 87 */
INSERT INTO juegos (fecha, nombre, consola_id, pasado, genero_id, year_debut)
    VALUES ('23/1/2020', 'Colin McRae Dirt', 8, FALSE, 2, 2007);
