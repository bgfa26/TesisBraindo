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


INSERT INTO PSICOLOGO VALUES (24220210, 'b@gmail.com', '1234', 'Bárbara', 'Gilvania', 'Fernández', 'Aristeigueta', 121212, '26-01-1995');

INSERT INTO PSICOLOGO VALUES (24220210, 'b@gmail.com', '1234', 'Barbara', 'Gilvania', 'Fernandez', 'Aristeigueta', '121212', '26-01-1995');

INSERT INTO PACIENTE VALUES (24773340, 'Luis', 'Pérez', 22, 'Ingeniería Informática', 36);

INSERT INTO CITA VALUES (nextval('cita_codigo_seq'), '12/10/2018', '22:09', 'Probando', 24773340, 24220210);
INSERT INTO CITA VALUES (nextval('cita_codigo_seq'), '12/11/2018', '17:19', 'Probando2', 24773340, 24220210, 1);
INSERT INTO CITA VALUES (nextval('cita_codigo_seq'), '12/11/2018', '18:11', 'Probando3', 24773340, 24220210);
