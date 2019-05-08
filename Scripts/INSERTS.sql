/*LUGAR*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'País', 'Venezuela', null);
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Estado','Distrito Capital',1);
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Estado','Miranda',1);
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Estado','Vargas',1);

INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Libertador',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Distrito Capital'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Guaicaipuro',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Acevedo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Andres Bello',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Baruta',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Brion',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Buroz',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Carrizal',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Chacao',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Cristobal Rojas',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','El Hatillo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Independencia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Lander',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Los Salias',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Paez',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Paz Castillo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Pedro Gual',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Plaza',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Simon Bolívar',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Sucre',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Urdaneta',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Zamora',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Miranda'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Municipio','Vargas',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Estado' and NOMBRE = 'Vargas'));

/* Parroquias del Estado Dtto Capital */
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','23 de Enero',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Altagracia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Antimano',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Candelaria',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Caricuao',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Catedral',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Coche',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Junquito',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Paraiso',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Recreo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Valle',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','La Pastora',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','La Vega',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Macaro',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Agustin',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Bernardino',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Jose',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Juan',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Pedro',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Santa Rosalia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Santa Teresa',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Sucre',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Libertador')); 

/* Parroquias del Estado Miranda */
/*Parroquias del Municipio Guaicaipuro*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Altagracia de la M',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Cecilio Acosta',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Jarillo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Los Teques',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Paracotos',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Pedro',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Tacata',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Guaicaipuro'));
/*Parroquias del Municipio Acevedo*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Araguita',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Arevalo Gonzalez',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Capaya',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Caucagua',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Cafe',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Marizapa',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));	
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Panaquire',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Ribas',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Acevedo'));
/*Parroquias del Municipio Andres Bello*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Cumbo',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Andres Bello' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Jose de Barlovento',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Andres Bello' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Baruta*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Baruta',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Baruta'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Cafetal',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Baruta'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Las Minas de Baruta',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Baruta'));
/*Parroquias del Municipio Brion*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Curiepe',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Brion'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Higuerote',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Brion'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Tacarigua',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Brion'));
/*Parroquias del Municipio Buroz*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Mamporal',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Buroz'));
/*Parroquias del Municipio Carrizal*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Carrizal',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Carrizal'));
/*Parroquias del Municipio Chacao*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Chacao',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Chacao'));
/*Parroquias del Municipio Cristobal Rojas*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Charallave',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Cristobal Rojas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Las Brisas',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Cristobal Rojas'));
/*Parroquias del Municipio El Hatillo*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Hatillo',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'El Hatillo'));
/*Parroquias del Municipio Independencia*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Cartanal',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Independencia' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Santa Teresa del Tuy',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Independencia' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Lander*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','La Democracia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Lander'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Ocumare del Tuy',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Lander'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Santa Barbara',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Lander'));
/*Parroquias del Municipio Los Salias*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Antonio de los Altos',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Los Salias'));
/*Parroquias del Municipio Paez*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Guapo',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Paez' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Paparo',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Paez' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Rio Chico',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Paez' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Fernando del Guapo',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Paez' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Tacarigua de la Laguna',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Paez' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Paz Castillo*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Santa Lucia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Paz Castillo'));
/*Parroquias del Municipio Pedro Gual*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Cupira',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Pedro Gual'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Machurucuto',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Pedro Gual'));
/*Parroquias del Municipio Plaza*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Guarenas',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Plaza'));
/*Parroquias del Municipio Simon Bolívar*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Antonio de Yare',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Simon Bolívar' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','San Francisco de Yare',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Simon Bolívar' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Sucre*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Caucaguita',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Sucre' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Filas de Mariches',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Sucre' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','La Dolorita',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Sucre' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Leoncio Martinez',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Sucre' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Petare',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Sucre' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Urdaneta*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Cua',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Urdaneta' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Nueva Cua',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Urdaneta' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
/*Parroquias del Municipio Zamora*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Bolívar',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Zamora' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Guatire',(SELECT m.CODIGO FROM LUGAR m, LUGAR e WHERE m.TIPO = 'Municipio' and m.NOMBRE = 'Zamora' and e.NOMBRE = 'Miranda' and m.FK_LUGAR = e.CODIGO));										

/*Parroquias del Municipio Vargas*/
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Caraballeda',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Carayaca',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Carlos Soublette',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Curuao',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Catia La Mar',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','El Junko',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','La Guaira',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Macuto',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Maiquetia',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Naiguata',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));
INSERT INTO LUGAR VALUES (nextval('lugar_codigo_seq'),'Parroquia','Urimare',(SELECT CODIGO FROM LUGAR WHERE TIPO = 'Municipio' and NOMBRE = 'Vargas'));

/*PSICOLOGOA*/
INSERT INTO PSICOLOGO VALUES (19456378, 'gabrielpsico@gmail.com', '03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4', 'Gabriel', 'Alejandro', 'Ochoa', 'Fernández', 'FPV19456378', '26-01-1992'); /*pass 1234*/
/*INSERT INTO PSICOLOGO VALUES (20145898254245512145, 'testinggmail.com', '03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4', 'José1', 'Antonio;', 
	'Suarez!', 'Pereria0', 'Psi23145898', '27-03-1992');*/


/*PACIENTES X CARRERA*/
/*INFORMATICA*/
INSERT INTO PACIENTE VALUES (24773321, 'Alejandro', 'Gonzales', 22, 'Ingeniería Informática', 84);
INSERT INTO PACIENTE VALUES (20897412, 'José', 'Hernández', 25, 'Ingeniería Informática', 52);
INSERT INTO PACIENTE VALUES (21854788, 'Andreina', 'Uzcategui', 24, 'Ingeniería Informática', 40);
INSERT INTO PACIENTE VALUES (22699257, 'Luisa', 'Pérez', 23, 'Ingeniería Informática', 85);

/*CIVIL*/
INSERT INTO PACIENTE VALUES (22789410, 'Cesar', 'Castillo', 24, 'Ingeniería Civil', 37);
INSERT INTO PACIENTE VALUES (22741254, 'Cristobal', 'Guerrero', 23, 'Ingeniería Civil', 93);
INSERT INTO PACIENTE VALUES (20998741, 'Anastassia', 'Landaeta', 25, 'Ingeniería Civil', 47);
INSERT INTO PACIENTE VALUES (21789410, 'Daniela', 'Hernández', 24, 'Ingeniería Civil', 37);

/*PSICOLOGIA*/
INSERT INTO PACIENTE VALUES (20678889, 'Emmanuel', 'Hernández', 25, 'Psicología', 75);
INSERT INTO PACIENTE VALUES (25225987, 'Marina', 'Suarez', 19, 'Psicología', 52);
INSERT INTO PACIENTE VALUES (22441258, 'Jorge', 'Bautista', 23, 'Psicología', 39);
INSERT INTO PACIENTE VALUES (24896352, 'Gabriela', 'Solorzano', 20, 'Psicología', 48);

/*ADMINISTRACION Y CONTADURIA*/
INSERT INTO PACIENTE VALUES (25112878, 'Ramilex', 'Aristeigueta', 19, 'Administración y Contaduría', 29);
INSERT INTO PACIENTE VALUES (24665741, 'Yolanda', 'Delgado', 20, 'Administración y Contaduría', 76);
INSERT INTO PACIENTE VALUES (24118988, 'Daniel', 'Fernández', 21, 'Administración y Contaduría', 80);
INSERT INTO PACIENTE VALUES (23998741, 'Miguel', 'Rodriguez', 22, 'Administración y Contaduría', 43);

/*TELECOM*/
INSERT INTO PACIENTE VALUES (24537842, 'Pablo', 'Montero', 21, 'Ingeniería en Telecomunicaciones', 111);
INSERT INTO PACIENTE VALUES (23458204, 'Pedro', 'Fernández', 22, 'Ingeniería en Telecomunicaciones', 40);
INSERT INTO PACIENTE VALUES (20632741, 'David', 'Rodriguez', 25, 'Ingeniería en Telecomunicaciones', 69);
INSERT INTO PACIENTE VALUES (24467812, 'Jessica', 'García', 20, 'Ingeniería en Telecomunicaciones', 78);

/*DERECHO*/
INSERT INTO PACIENTE VALUES (21442081, 'Raúl', 'Alonso', 20, 'Derecho', 110);
INSERT INTO PACIENTE VALUES (20547882, 'Elvis', 'Gonzalez', 25, 'Derecho', 37);
INSERT INTO PACIENTE VALUES (21445864, 'Francisco', 'García', 24, 'Derecho', 49);
INSERT INTO PACIENTE VALUES (25224889, 'Efraín', 'Hernández', 19, 'Derecho', 100);

/*COMUNICACION SOCIAL*/
INSERT INTO PACIENTE VALUES (22786451, 'Roberto', 'Castillo', 23, 'Comunicación Social', 68);
INSERT INTO PACIENTE VALUES (22125669, 'Luciana', 'Contreras', 24, 'Comunicación Social', 75);
INSERT INTO PACIENTE VALUES (26117885, 'Ana', 'Peña', 19, 'Comunicación Social', 30);
INSERT INTO PACIENTE VALUES (23997852, 'Dario', 'Rebolledo', 21, 'Comunicación Social', 30);

/*FILOSOFIA*/
INSERT INTO PACIENTE VALUES (21520458, 'Alejandro', 'Gonzalez', 24, 'Filosofía', 40);
INSERT INTO PACIENTE VALUES (20785214, 'Omar', 'Pérez', 25, 'Filosofía', 32);
INSERT INTO PACIENTE VALUES (23110489, 'Alejandra', 'García', 23, 'Filosofía', 37);
INSERT INTO PACIENTE VALUES (26365785, 'Roxana', 'Gonzales', 19, 'Filosofía', 40);

/*INDUSTRIAL*/
INSERT INTO PACIENTE VALUES (20895412, 'Andrea', 'Mejías', 25, 'Ingeniería Industrial', 71);
INSERT INTO PACIENTE VALUES (20582364, 'Joselyn', 'Blanco', 25, 'Ingeniería Industrial', 31);
INSERT INTO PACIENTE VALUES (24557965, 'Adriana', 'Villalba', 20, 'Ingeniería Industrial', 40);
INSERT INTO PACIENTE VALUES (21447896, 'Arianna', 'Torres', 24, 'Ingeniería Industrial', 45);

/*TEOLOGIA*/
INSERT INTO PACIENTE VALUES (26420174, 'Oriana', 'García', 19, 'Teología', 96);
INSERT INTO PACIENTE VALUES (24558964, 'Maria', 'Hernández', 23, 'Teología', 53);
INSERT INTO PACIENTE VALUES (25470274, 'Sofía', 'Carrillo', 21, 'Teología', 54);
INSERT INTO PACIENTE VALUES (22998562, 'Andreina', 'Castillo', 22, 'Teología', 33);

/*LETRAS*/
INSERT INTO PACIENTE VALUES (25954128, 'Maria José', 'Pérez', 23, 'Letras', 87);
INSERT INTO PACIENTE VALUES (20745112, 'Luisana', 'Ribas', 25, 'Letras', 60);
INSERT INTO PACIENTE VALUES (21441087, 'Carlos', 'Montilla', 24, 'Letras', 28);
INSERT INTO PACIENTE VALUES (26447898, 'Rosa', 'García', 19, 'Letras', 35);

/*RELACIONES INDUSTRIALES*/
INSERT INTO PACIENTE VALUES (25125984, 'Jorge', 'Gonzales', 20, 'Relaciones Industriales', 75);
INSERT INTO PACIENTE VALUES (25447964, 'Fernando', 'Montolla', 20, 'Relaciones Industriales', 75);
INSERT INTO PACIENTE VALUES (26447854, 'Isabel', 'Rodriguez', 19, 'Relaciones Industriales', 36);
INSERT INTO PACIENTE VALUES (21558963, 'Andrés', 'López', 24, 'Relaciones Industriales', 40);

/*ECONOMIA*/
INSERT INTO PACIENTE VALUES (23854963, 'Gabriela', 'Ochoa', 22, 'Economía', 31);
INSERT INTO PACIENTE VALUES (24544875, 'Johanna', 'Guerrero', 23, 'Economía', 31);
INSERT INTO PACIENTE VALUES (26778214, 'Cristina', 'Pinto', 19, 'Economía', 34);
INSERT INTO PACIENTE VALUES (26578454, 'Dariana', 'Hernández', 19, 'Economía', 42);

/*EDUCACION*/
INSERT INTO PACIENTE VALUES (21025789, 'Verónica', 'López', 24, 'Educación', 72);
INSERT INTO PACIENTE VALUES (20458896, 'William', 'Pereira', 25, 'Educación', 46);
INSERT INTO PACIENTE VALUES (22548422, 'Dayana', 'Gutierrez', 23, 'Educación', 48);
INSERT INTO PACIENTE VALUES (25964521, 'Felix', 'Mendoza', 19, 'Educación', 35);

/*DIAGNOSTICOS*/

/*INFORMATICA*/
/*PACIENTE: ALEJANDRO GONZALES*/
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '13/04/2018', '0.001;0.003;0.996' , '0.07424726813813702;0.021045914439033964;0.4021784082980088;0.06925773534270249;0.3411333493892401;0.09213732439287757' ,'3,4,5,5,3,3,5,1,5,3,5,4,3,1,1,5,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,Todo bien', '0.24978282410467897/0.4994628391123716/0.017360047891206817/0.35679197502905724/0.017269288184405592/0.30251735931043927/', 0.30251735931043927, 24773321, 24220210);

/*ADMINISTRACION Y CONTADURIA*/
/*PACIENTE: RAMILEX ARISTEIGUETA*/
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '05/04/2018', '0.159;0.782;0.059' , '0.29595314644202453;0.3585312277810474;0.07680960313330563;0.08240725267609111;0.11891090747498707;0.06738786249254403' ,'2,3,1,5,3,4,5,3,2,5,5,4,5,5,5,4,3,3,4,5,4,5,5,3,2,5,1,5,4,4,4,4,4,5,3,2,3,4,5,Que debe ayudarme a mejorar', '0.7245275478628495/0.6587215389823712/0.6243342442310169/0.713595398477013/0.7491154125021491/0.7146157502700515/', 0.714615762233734, 25112878, 24220210);

/*TELECOM*/
/*PACIENTE: PABLO MONTERO */
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '05/05/2018', '0.106;0.469;0.426' , '0.37230491249501635;0.1048798318447418;0.15696325652064563;0.04485998316309575;0.19269692594889887;0.12829509002760153' ,'3,4,2,4,3,2,3,5,3,4,2,3,3,2,4,3,2,4,3,5,1,1,4,1,3,1,3,4,1,4,1,3,5,1,1,3,2,1,4,Me sentiría intrigado', '0.5998999590901628/0.3406281451085268/0.37354299925737805/0.5351970196065888/0.32103741980871653/0.44995412690464054/', 0.449954122304916, 24537842, 24220210);

/*DERECHO*/
/*PACIENTE: RAUL ALONSO*/
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '05/06/2018', '0.024;0.103;0.873' , '0.1355766651307101;0.1759365281332089;0.2989942713359198;0.07190301781998462;0.16289877220701096;0.1546907453731655' ,'1,1,2,1,5,1,1,1,2,1,1,1,1,2,2,1,2,1,1,1,2,1,1,1,1,1,1,2,1,2,1,3,1,1,1,4,5,5,5,Que está bien', '0.025320728395797597/0.0686266463644676/0.938296409521744/0.10579812319460082/0.10655008327761223/0.07184836604317957/', 0.0718483626842499, 21442081, 24220210);

/*COMUNICACION SOCIAL*/
/*PACIENTE: ROBERTO CASTILLO*/
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '05/07/2018', '0.372;0.488;0.139' , '0.22339195178326293;0.24464793491914574;0.14116801560839426;0.07355473843161413;0.22279503885183896;0.09444232040574392' ,'2,3,3,4,2,4,2,4,2,2,3,4,1,2,1,1,3,5,1,2,5,1,3,1,2,5,4,5,1,3,1,5,3,5,3,4,3,2,5,Que puedo mejorar', '0.32482606531727287/0.4767953423688693/0.6241204992036432/0.6067490799540828/0.4992434871819346/0.46430638571429056/', 0.464306384325027, 22786451, 24220210);

/*FILOSOFIA*/
/*PACIENTE: ALEJANDRO GONZALEZ*/
INSERT INTO DIAGNOSTICO VALUES (nextval('diagnostico_codigo_seq'), '05/08/2018', '0.74;0.107;0.153' , '0.5519698215553805;0.2576819131826602;0.06681875361433036;0.04271616228320565;0.05667123264222212;0.024142116722201373' ,'4,3,3,4,4,5,4,5,3,4,3,4,3,4,5,4,5,5,4,3,3,4,4,4,3,3,3,3,4,4,3,2,3,1,2,4,5,5,2,Me un poco de miedo ser evaluado', '0.6750476475539742/0.681542239171909/0.7474018175982262/0.6782184270027805/0.4279810114247201/0.6289058671427697/', 0.628905892372131, 21520458, 24220210);

/*PACIENTE: CESAR CASTILLO*/


/*PACIENTE: ANDREA MEJIAS*/
/*PACIENTE: ORIANA GARCIA*/
/*PACIENTE: MARIA JOSE PEREZ*/
/*PACIENTE: JORGE GONZALEZ*/
/*PACIENTE: GABRIELA OCHOA*/
/*PACIENTE: VERONICA LOPEZ*/



