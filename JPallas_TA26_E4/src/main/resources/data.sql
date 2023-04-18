DROP TABLE IF EXISTS reservas;
DROP TABLE IF EXISTS equipos;
DROP TABLE IF EXISTS investigadores;
DROP TABLE IF EXISTS facultades;

CREATE TABLE facultades(
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE equipos(
	id CHAR(4) NOT NULL,
	nombre VARCHAR(100) DEFAULT NULL,
	facultad INT NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT FK_facultad_equipo FOREIGN KEY (facultad) REFERENCES facultades (id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE investigadores(
	dni VARCHAR(9) NOT NULL,
	nombre VARCHAR(100) DEFAULT NULL,
	facultad INT NOT NULL,
	PRIMARY KEY(dni),
	CONSTRAING FK_facultad_investigador FOREIGN KEY (facultad) REFERENCES facultades(id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE reservas(
	id INT NOT NULL AUTO_INCREMENT,
	equipo CHAR(4) NOT NULL,
	investigador VARCHAR(9) NOT NULL,
	comienzo DATETIME NOT NULL,
	fin DATETIME NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT FK_equipo FOREIGN KEY (equipo) REFERENCES equipos (id)
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_investigador FOREIGN KEY (investigador) REFERENCES investigadores (dni)
	ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO facultades(nombre) VALUES ('Facultad de Medicina');
INSERT INTO facultades(nombre) VALUES ('Facultad de Ciencia');
INSERT INTO facultades(nombre) VALUES ('Facultad de Literatura');
INSERT INTO facultades(nombre) VALUES ('Facultad de Derecho');
INSERT INTO facultades(nombre) VALUES ('Facultad de Izquierdo');

INSERT INTO equipos(id, nombre, facultad) VALUES ('TEM1', 'Equipo 1', 1);
INSERT INTO equipos(id, nombre, facultad) VALUES ('TEM2', 'Equipo 2', 2);
INSERT INTO equipos(id, nombre, facultad) VALUES ('TEM3', 'Equipo 3', 3);
INSERT INTO equipos(id, nombre, facultad) VALUES ('TEM4', 'Equipo 4', 4);
INSERT INTO equipos(id, nombre, facultad) VALUES ('TEM5', 'Equipo 5', 5);

INSERT INTO investigadores(dni, nombre, facultad) VALUES ('12345678A', 'Investigador 1', 1);
INSERT INTO investigadores(dni, nombre, facultad) VALUES ('12345678B', 'Investigador 2', 2);
INSERT INTO investigadores(dni, nombre, facultad) VALUES ('12345678C', 'Investigador 3', 3);
INSERT INTO investigadores(dni, nombre, facultad) VALUES ('12345678D', 'Investigador 4', 4);
INSERT INTO investigadores(dni, nombre, facultad) VALUES ('12345678E', 'Investigador 5', 5);

INSERT INTO reservas(equipo, investigador, comienzo, fin) VALUES ('TEM1', '12345678A', '2022-01-01 00:00:00', '2022-01-03 00:00:00');
INSERT INTO reservas(equipo, investigador, comienzo, fin) VALUES ('TEM2', '12345678B', '2022-01-02 00:00:00', '2023-01-04 00:00:00');
INSERT INTO reservas(equipo, investigador, comienzo, fin) VALUES ('TEM3', '12345678C', '2022-02-01 00:00:00', '2024-03-03 00:00:00');
INSERT INTO reservas(equipo, investigador, comienzo, fin) VALUES ('TEM4', '12345678D', '2022-01-01 00:00:00', '2023-05-01 00:00:00');
INSERT INTO reservas(equipo, investigador, comienzo, fin) VALUES ('TEM5', '12345678E', '2022-01-01 00:00:00', '2022-01-01 16:30:00');