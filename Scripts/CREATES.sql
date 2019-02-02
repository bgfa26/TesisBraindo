CREATE USER tesisbraindo PASSWORD 'barron';
ALTER ROLE tesisbraindo WITH SUPERUSER;
CREATE DATABASE BRAINDO WITH OWNER tesisbraindo;

CREATE TABLE LUGAR(
	CODIGO 					SERIAL,
	TIPO 					VARCHAR(50) NOT NULL,
	NOMBRE 					VARCHAR(80) NOT NULL,
	FK_LUGAR				INTEGER,
	CONSTRAINT PK_LUGAR PRIMARY KEY (CODIGO)
);

CREATE TABLE PACIENTE(
	CI 						INTEGER,
	PRIMERNOMBRE			VARCHAR(50) NOT NULL,
	PRIMERAPELLIDO			VARCHAR(50) NOT NULL,
	EDAD					INTEGER NOT NULL,
	CARRERA					VARCHAR(35) NOT NULL, 
	FK_LUGAR				INTEGER NOT NULL,
	CONSTRAINT CH_CARRERA CHECK (CARRERA in('Ingeniería Informática','Ingeniería Civil', 
	'Ingeniería en Telecomunicaciones','Ingeniería Industrial', 'Psicología','Teología',
	'Filosofía','Letras','Comunicación Social', 'Relaciones Industriales', 'Derecho', 
	'Administración y Contaduría','Economía', 'Educación')),
	CONSTRAINT PK_PACIENTE PRIMARY KEY (CI)
);

CREATE TABLE PSICOLOGO(
	CEDULA 					INTEGER,
	EMAIL					VARCHAR(80) UNIQUE NOT NULL,
	CLAVE					VARCHAR(150) NOT NULL,
	PRIMERNOMBRE			VARCHAR(50) NOT NULL,
	SEGUNDONOMBRE			VARCHAR(50),
	PRIMERAPELLIDO			VARCHAR(50)	NOT NULL,
	SEGUNDOAPELLIDO			VARCHAR(50),
	NUMEROMATRICULA			VARCHAR(20) UNIQUE NOT NULL,
	FECHANACIMIENTO			DATE NOT NULL,
	CONSTRAINT PK_PSICOLOGO PRIMARY KEY (CEDULA)
);

CREATE TABLE DIAGNOSTICO(
	CODIGO					SERIAL,
	FECHA 					DATE NOT NULL,
	SENTIMIENTOS			VARCHAR (1000) NOT NULL,
	EMOCIONES				VARCHAR (1000) NOT NULL,
	RESPUESTA 				VARCHAR (120) NOT NULL,
	RESPUESTARED			VARCHAR(200) NOT NULL,
	FK_PACIENTE				INTEGER NOT NULL,
	FK_PSICOLOGO			INTEGER NOT NULL,
	CONSTRAINT PK_DIAGNOSTICO PRIMARY KEY (CODIGO)
); 

CREATE TABLE CITA(
	CODIGO					SERIAL,
	FECHA 					DATE NOT NULL,
	HORA 					TIME,
	MOTIVO					VARCHAR (200) NOT NULL,
	FK_PACIENTE				INTEGER NOT NULL,
	FK_PSICOLOGO			INTEGER NOT NULL,
	FK_EXAMENMENTAL			INTEGER,
	CONSTRAINT PK_CITA PRIMARY KEY (CODIGO)
);

CREATE TABLE EXAMENMENTAL(
	CODIGO					SERIAL,
	COMPORTAMIENTO			VARCHAR(700) NOT NULL,
	ACTITUD					VARCHAR(700) NOT NULL,
	ATENCION				VARCHAR(700) NOT NULL,
	CONCIENCIA				VARCHAR(700) NOT NULL,
	ESTADOANIMO				VARCHAR(700) NOT NULL,
	LENGUAJE				VARCHAR(700) NOT NULL,
	PENSAMIENTO				VARCHAR(700) NOT NULL,
	CONSTRAINT PK_EXAMENMENTAL PRIMARY KEY (CODIGO)
);
