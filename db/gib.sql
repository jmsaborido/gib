------------------------------
-- Archivo de base de datos --
------------------------------

/* Showing results for Juegos pasados Y Por Pasar.csv */
/* CREATE TABLE */
DROP TABLE IF EXISTS juegos CASCADE;

CREATE TABLE juegos (
    id bigserial PRIMARY KEY,
    fecha date DEFAULT CURRENT_DATE,
    nombre varchar(100) NOT NULL,
    consola varchar(100) NOT NULL,
    pasado boolean,
    genero varchar(100),
    year_debut smallint CONSTRAINT ck_primer_videojuego CHECK (year_debut >= 1950)
);


/* INSERT QUERY NO: 1 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('6/1/2017', 'Chrono Trigger', 'Android', FALSE, 'RPG', 1995);


/* INSERT QUERY NO: 2 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/1/2017', 'Silent Hill 2', 'PC', FALSE, 'Terror', 2001);


/* INSERT QUERY NO: 3 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('8/2/2017', 'Silent Hill', 'PC', FALSE, 'Terror', 1999);


/* INSERT QUERY NO: 4 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('14/2/2017', 'Silent Hill 3', 'PS2', FALSE, 'Terror', 2003);


/* INSERT QUERY NO: 5 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('6/3/2017', 'Dark Souls 2', 'PC', FALSE, 'Soulsborne', 2014);


/* INSERT QUERY NO: 6 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('1/4/2017', 'Bloodborne', 'PS4', FALSE, 'Soulsborne', 2015);


/* INSERT QUERY NO: 7 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('29/4/2017', 'Metal Gear', 'PS3', FALSE, 'Espionaje', 1987);


/* INSERT QUERY NO: 8 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('1/5/2017', 'Metal Gear 2 Solid Snake', 'PS3', FALSE, 'Espionaje', 1990);


/* INSERT QUERY NO: 9 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('4/5/2017', 'Metal Gear Solid ', 'PS3', TRUE, 'Espionaje', 1998);


/* INSERT QUERY NO: 10 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('5/5/2017', 'Metal Gear Solid 2: Sons Of Liberty', 'PS3', TRUE, 'Espionaje', 2001);


/* INSERT QUERY NO: 11 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('9/5/2017', 'Metal Gear Solid 3: Snake Eater', 'PS3', TRUE, 'Espionaje', 2004);


/* INSERT QUERY NO: 12 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/5/2017', 'Metal Gear Solid 4: Guns Of The Patriots', 'PS3', TRUE, 'Espionaje', 2008);


/* INSERT QUERY NO: 13 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('5/1/2018', 'skate.', 'PS3', FALSE, 'Deportes Extremos', 2007);


/* INSERT QUERY NO: 14 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('27/1/2018', 'Mario Kart 8', 'Wii U', FALSE, 'Conducción', 2014);


/* INSERT QUERY NO: 15 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('14/2/2018', 'Skate 2', 'PS3', FALSE, 'Deportes Extremos', 2009);


/* INSERT QUERY NO: 16 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('8/3/2018', 'The Legend Of Zelda: Breath Of The Wild', 'Wii U', FALSE, 'ARPG', 2017);


/* INSERT QUERY NO: 17 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('13/3/2018', 'Skate 3', 'PS3', FALSE, 'Deportes Extremos', 2010);


/* INSERT QUERY NO: 18 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('15/3/2018', 'Super Mario 3D World', 'Wii U', FALSE, 'Plataformas', 2013);


/* INSERT QUERY NO: 19 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('28/6/2018', 'MX vs. ATV Reflex', 'PC', FALSE, 'Conducción', 2009);


/* INSERT QUERY NO: 20 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('4/7/2018', 'Grand Theft Auto: Vice City', 'PC', TRUE, 'Sandbox', 2003);


/* INSERT QUERY NO: 21 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('7/7/2018', 'Grand Theft Auto: Vice City Stories', 'PC', TRUE, 'Sandbox', 2006);


/* INSERT QUERY NO: 22 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('10/7/2018', 'Grand Theft Auto: Liberty City Stories', 'PC', TRUE, 'Sandbox', 2005);


/* INSERT QUERY NO: 23 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('28/7/2018', 'Pro Evolution Soccer 6', 'PC', TRUE, 'Fútbol', 2005);


/* INSERT QUERY NO: 24 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('8/8/2018', 'Need For Speed Underground', 'PC', TRUE, 'Conducción', 2003);


/* INSERT QUERY NO: 25 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('27/8/2018', 'Resident Evil DS', 'NDS', FALSE, 'Terror', 1996);


/* INSERT QUERY NO: 26 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('28/8/2018', 'Need For Speed Underground 2', 'PC', FALSE, 'Conducción', 2004);


/* INSERT QUERY NO: 27 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('9/9/2018', 'Tony Hawk s Pro Skater 2', 'Raspberry', FALSE, 'Deportes Extremos', 2000);


/* INSERT QUERY NO: 28 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('10/9/2018', 'Tony Hawks Pro Skater', 'Raspberry', FALSE, 'Deportes Extremos', 1999);


/* INSERT QUERY NO: 29 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('17/9/2018', 'Resident Evil Remake', 'XBOX 360', FALSE, 'Terror', 2002);


/* INSERT QUERY NO: 30 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('26/9/2018', 'Need For Speed Most Wanted', 'XBOX 360', TRUE, 'Conducción', 2005);


/* INSERT QUERY NO: 31 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('30/9/2018', 'Tekken 7', 'PC', FALSE, 'Peleas', 2015);


/* INSERT QUERY NO: 32 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('6/10/2018', 'Toy Story 2', 'Raspberry', FALSE, 'Plataformas', 1999);


/* INSERT QUERY NO: 33 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('31/10/2018', 'Ratchet And Clank', 'PS2', TRUE, 'Plataformas', 2002);


/* INSERT QUERY NO: 34 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('4/11/2018', 'Ratchet & Clank 2: Totalmente a tope', 'PS2', TRUE, 'Plataformas', 2003);


/* INSERT QUERY NO: 35 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('9/11/2018', 'Dirt 3', 'PC', FALSE, 'Conducción', 2015);


/* INSERT QUERY NO: 36 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('12/11/2018', 'Metal Gear Solid 5: Ground Zeroes', 'PC', TRUE, 'Espionaje', 2014);


/* INSERT QUERY NO: 37 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('16/11/2018', 'Hyper Light Drifter ', 'PC', FALSE, 'Metroidvania', 2016);


/* INSERT QUERY NO: 38 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/11/2018', 'Hollow Knight', 'PC', FALSE, 'Metroidvania', 2017);


/* INSERT QUERY NO: 39 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('30/11/2018', 'Metal Gear Solid 5: The Phantom Pain', 'PC', TRUE, 'Espionaje', 2015);


/* INSERT QUERY NO: 40 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('30/11/2018', 'Grow Home', 'PC', FALSE, 'Plataformas', 2015);


/* INSERT QUERY NO: 41 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('27/12/2018', 'Fallout New Vegas', 'PC', FALSE, 'RPG', 2010);


/* INSERT QUERY NO: 42 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('24/1/2019', 'Mirrors Edge', 'PC', TRUE, 'Plataformas', 2008);


/* INSERT QUERY NO: 43 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('28/1/2019', 'Dead Space', 'PC', TRUE, 'Terror', 2008);


/* INSERT QUERY NO: 44 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('28/2/2019', 'Minecraft', 'PC', TRUE, 'Supervivencia', 2011);


/* INSERT QUERY NO: 45 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('18/4/2019', 'Burnout Paradise', 'PC', FALSE, 'Conducción', 2008);


/* INSERT QUERY NO: 46 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('2/5/2019', 'Metal Gear Solid: Twin Snakes', 'PC', TRUE, 'Espionaje', 2004);


/* INSERT QUERY NO: 47 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('8/5/2019', 'Forager', 'PC', FALSE, 'Supervivencia', 2019);


/* INSERT QUERY NO: 48 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('9/5/2019', 'Metal Gear Solid', 'PS3', TRUE, 'Espionaje', 1998);


/* INSERT QUERY NO: 49 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('11/5/2019', 'Tony Hawks Pro Skater 3 (PS1)', 'Raspberry', FALSE, 'Deportes Extremos', 2001);


/* INSERT QUERY NO: 50 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('13/5/2019', 'Tony Hawk Pro Skater 2X', 'PC', FALSE, 'Deportes Extremos', 2001);


/* INSERT QUERY NO: 51 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('29/5/2019', 'Spyro 2', 'PC', TRUE, 'Plataformas', 1999);


/* INSERT QUERY NO: 52 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('7/6/2019', 'The Legend Of Zelda: A Link To The Past', 'Wii U', FALSE, 'ARPG', 1991);


/* INSERT QUERY NO: 53 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('16/6/2019', 'The Legend Of Zelda: Links Awakening', 'Wii U', FALSE, 'ARPG', 1993);


/* INSERT QUERY NO: 54 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('19/6/2019', 'The Legend Of Zelda: Oracle Of Seasons', 'Wii U', FALSE, 'ARPG', 2001);


/* INSERT QUERY NO: 55 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('26/6/2019', 'The Legend Of Zelda: Oracle Of Ages', 'Wii U', FALSE, 'ARPG', 2001);


/* INSERT QUERY NO: 56 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('29/6/2019', 'The Legend Of Zelda:The Minish Cap', 'Wii U', FALSE, 'ARPG', 2004);


/* INSERT QUERY NO: 57 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('5/7/2019', 'Descenders', 'PC', FALSE, 'Deportes Extremos', 2019);


/* INSERT QUERY NO: 58 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('16/7/2019', 'Ratchet And Clank PS4', 'PS4', FALSE, 'Plataformas', 2016);


/* INSERT QUERY NO: 59 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('25/7/2019', 'Red Dead Redemption 2 ', 'PS4', FALSE, 'Sandbox', 2018);


/* INSERT QUERY NO: 60 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('27/7/2019', 'Resident Evil 7', 'PS4', FALSE, 'Terror', 2017);


/* INSERT QUERY NO: 61 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('30/7/2019', 'Resident Evil 2 Remake', 'PS4', FALSE, 'Terror', 2019);


/* INSERT QUERY NO: 62 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('1/8/2019', 'What Remains Of Edith Finch', 'PS4', FALSE, 'Walking Simulator', 2017);


/* INSERT QUERY NO: 63 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('2/8/2019', 'Soma', 'PS4', FALSE, 'Walking Simulator', 2015);


/* INSERT QUERY NO: 64 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('4/8/2019', 'RiME', 'PS4', FALSE, 'Plataformas', 2017);


/* INSERT QUERY NO: 65 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('6/8/2019', 'Metal Gear Solid 2: Sons Of Liberty', 'PS3', TRUE, 'Espionaje', 2001);


/* INSERT QUERY NO: 66 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('15/8/2019', 'Horizon Zero Dawn', 'PS4', FALSE, 'ARPG', 2017);


/* INSERT QUERY NO: 67 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('16/9/2019', 'God Of War 4', 'PS4', FALSE, 'ARPG', 2018);


/* INSERT QUERY NO: 68 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('5/10/2019', 'Spiderman', 'PS4', FALSE, 'ARPG', 2018);


/* INSERT QUERY NO: 69 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('9/10/2019', 'Spyro Reignited', 'PC', FALSE, 'Plataformas', 2019);


/* INSERT QUERY NO: 70 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('11/10/2019', 'Spyro 2 Reignited', 'PC', FALSE, 'Plataformas', 2019);


/* INSERT QUERY NO: 71 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('12/10/2019', 'Spyro 3 Reignited', 'PC', FALSE, 'Plataformas', 2019);


/* INSERT QUERY NO: 72 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('30/10/2019', 'Metal Gear Solid 3: Snake Eater', 'PS3', TRUE, 'Espionaje', 2004);


/* INSERT QUERY NO: 73 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('5/11/2019', 'Super Mario Sunshine', 'Gamecube', FALSE, 'Plataformas', 2002);


/* INSERT QUERY NO: 74 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('17/11/2019', 'Super Metroid', 'Wii U', FALSE, 'Metroidvania', 1994);


/* INSERT QUERY NO: 75 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('19/11/2019', 'Metroid Zero Mission', 'Wii U', FALSE, 'Metroidvania', 2004);


/* INSERT QUERY NO: 76 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/11/2019', 'Metroid Fusion', 'Wii U', FALSE, 'Metroidvania', 2002);


/* INSERT QUERY NO: 77 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/11/2019', 'Super Mario Galaxy', 'Wii U', FALSE, 'Plataformas', 2007);


/* INSERT QUERY NO: 78 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('24/11/2019', 'Metroid 2 (AM2R)', 'PC', FALSE, 'Metroidvania', 2016);


/* INSERT QUERY NO: 79 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('11/12/2019', 'Blasphemous', 'PC', FALSE, 'Metroidvania', 2019);


/* INSERT QUERY NO: 80 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('12/12/2019', 'Horizon Chase Turbo', 'PC', FALSE, 'Conducción', 2018);


/* INSERT QUERY NO: 81 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('14/12/2019', 'Portal', 'PC', TRUE, 'Plataformas', 2007);


/* INSERT QUERY NO: 82 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('15/12/2019', 'Ori And The Blind Forest', 'PC', FALSE, 'Metroidvania', 2015);


/* INSERT QUERY NO: 83 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('15/12/2019', 'Celeste', 'PC', FALSE, 'Plataformas', 2018);


/* INSERT QUERY NO: 84 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('21/12/2019', 'Castlevania Symphony Of The Night', 'Raspberry', FALSE, 'Metroidvania', 1997);


/* INSERT QUERY NO: 85 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('21/12/2019', 'Katana ZERO', 'PC', FALSE, 'Plataformas', 2019);


/* INSERT QUERY NO: 86 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('3/1/20', 'The Witcher', 'PC', FALSE, 'ARPG', 2007);


/* INSERT QUERY NO: 87 */
INSERT INTO juegos (fecha, nombre, consola, pasado, genero, year_debut)
    VALUES ('23/1/2020', 'Colin McRae Dirt', 'PC', FALSE, 'Conducción', 2007);
