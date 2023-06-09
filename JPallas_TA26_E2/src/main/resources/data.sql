DROP TABLE IF EXISTS asignado_a;
DROP TABLE IF EXISTS cientificos;
DROP TABLE IF EXISTS proyectos;

CREATE TABLE cientificos(
	dni VARCHAR(9) NOT NULL,
	nombre_apellidos VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (dni)
);

CREATE TABLE proyectos(
	id CHAR(4) NOT NULL,
	nombre VARCHAR(255) DEFAULT NULL,
	horas INT DEFAULT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE asignado_a(
	id INT NOT NULL AUTO_INCREMENT,
	cientifico VARCHAR(9) NOT NULL,
	proyecto CHAR(4) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT FK_cientifico FOREIGN KEY (cientifico) REFERENCES cientificos (dni)
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_proyecto FOREIGN KEY (proyecto) REFERENCES proyectos (id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO cientificos(dni, nombre_apellidos) VALUES ('77791111A', 'Juan Cuesta');
INSERT INTO cientificos(dni, nombre_apellidos) VALUES ('77791111B', 'Juan Cuesta Mas');
INSERT INTO cientificos(dni, nombre_apellidos) VALUES ('77791111C', 'Juan Cuesta Menos');
INSERT INTO cientificos(dni, nombre_apellidos) VALUES ('77791111D', 'Juan Cuesta MasOMenos');
INSERT INTO cientificos(dni, nombre_apellidos) VALUES ('77791111E', 'Juan Cuesta Igual');

INSERT INTO proyectos(id, nombre, horas) VALUES ('PRO1', 'Proyecto de testeo 1', 10);
INSERT INTO proyectos(id, nombre, horas) VALUES ('PRO2', 'Proyecto de testeo 2', 20);
INSERT INTO proyectos(id, nombre, horas) VALUES ('PRO3', 'Proyecto de testeo 3', 30);
INSERT INTO proyectos(id, nombre, horas) VALUES ('PRO4', 'Proyecto de testeo 4', 40);
INSERT INTO proyectos(id, nombre, horas) VALUES ('PRO5', 'Proyecto de testeo 5', 50);

INSERT INTO asignado_a(cientifico, proyecto) VALUES ('77791111A', 'PRO1');
INSERT INTO asignado_a(cientifico, proyecto) VALUES ('77791111B', 'PRO2');
INSERT INTO asignado_a(cientifico, proyecto) VALUES ('77791111C', 'PRO3');
INSERT INTO asignado_a(cientifico, proyecto) VALUES ('77791111D', 'PRO4');
INSERT INTO asignado_a(cientifico, proyecto) VALUES ('77791111E', 'PRO5');


