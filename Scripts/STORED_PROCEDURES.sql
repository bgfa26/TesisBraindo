CREATE OR REPLACE FUNCTION PSICOLOGO_INICIARSESION(PSYCHOEMAIL varchar(80), PSYCHOPASS varchar(150)) RETURNS TABLE(CEDULA integer, EMAIL varchar(80), CLAVE varchar(50), PRIMERNOMBRE varchar(50), SEGUNDONOMBRE varchar(50), PRIMERAPELLIDO varchar(50), SEGUNDOAPELLIDO varchar(50), NUMEROMATRICULA varchar(20), FECHAINGRESO date) AS $$
DECLARE

BEGIN
	RETURN QUERY
		SELECT PSI.CEDULA, PSI.EMAIL, PSI.CLAVE, PSI.PRIMERNOMBRE, PSI.SEGUNDONOMBRE, PSI.PRIMERAPELLIDO, PSI.SEGUNDOAPELLIDO, PSI.NUMEROMATRICULA, PSI.FECHANACIMIENTO
		FROM PSICOLOGO PSI
		WHERE PSI.EMAIL = PSYCHOEMAIL AND PSI.CLAVE = PSYCHOPASS
	 	;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_REGISTRAR(ID integer, MAIL varchar(80), PASS varchar(150), NAME varchar(50), SECONDNAME varchar(50), SURNAME varchar(50), SECONDSURNAME varchar(50), REGISTRATIONNUMBER varchar(20), BIRTHDATE date) RETURNS integer AS $$
DECLARE
 RESULT integer;
 FK_LUGAR integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE CEDULA = $1) = 0) THEN

		INSERT INTO PSICOLOGO (CEDULA, EMAIL, CLAVE, PRIMERNOMBRE, SEGUNDONOMBRE, PRIMERAPELLIDO, SEGUNDOAPELLIDO, NUMEROMATRICULA, FECHANACIMIENTO) VALUES (ID, MAIL, PASS, NAME, SECONDNAME, SURNAME, SECONDSURNAME, REGISTRATIONNUMBER, BIRTHDATE);
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 500;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_MODIFICAR_DATOS(ID integer, MAIL varchar(80), NAME varchar(50), SECONDNAME varchar(50), SURNAME varchar(50), SECONDSURNAME varchar(50), REGISTRATIONNUMBER varchar(20), BIRTHDATE date) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE CEDULA = ID) = 1) THEN

		UPDATE PSICOLOGO SET EMAIL = MAIL, PRIMERNOMBRE = NAME, SEGUNDONOMBRE = SECONDNAME, PRIMERAPELLIDO = SURNAME, SEGUNDOAPELLIDO = SECONDSURNAME, NUMEROMATRICULA = REGISTRATIONNUMBER, FECHANACIMIENTO = BIRTHDATE WHERE CEDULA = ID;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_MODIFICAR_CLAVE(ID integer, PASS varchar(150)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE CEDULA = ID) = 1) THEN

		UPDATE PSICOLOGO SET CLAVE = PASS WHERE CEDULA = ID;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_CONSULTAR(CI integer) RETURNS TABLE(CEDULA integer, EMAIL varchar(80), CLAVE varchar(150), PRIMERNOMBRE varchar(50), SEGUNDONOMBRE varchar(50), PRIMERAPELLIDO varchar(50), SEGUNDOAPELLIDO varchar(50), NUMEROMATRICULA varchar(20), FECHAINGRESO date) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PSI.CEDULA, PSI.EMAIL, PSI.CLAVE, PSI.PRIMERNOMBRE, PSI.SEGUNDONOMBRE, PSI.PRIMERAPELLIDO, PSI.SEGUNDOAPELLIDO, PSI.NUMEROMATRICULA, PSI.FECHANACIMIENTO
	FROM PSICOLOGO PSI
	WHERE PSI.CEDULA = CI 		
	 ;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_REGISTRAR(integer, varchar(50), varchar(50), integer, varchar(35), varchar(80), varchar(80), varchar(80), varchar(80)) RETURNS integer AS $$
DECLARE
 RESULT integer;
 FK_LUGAR integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE EMAIL = $9) = 1) THEN
	
		IF ((SELECT COUNT(*) FROM PACIENTE WHERE CI = $1) = 0) THEN

			FK_LUGAR := (SELECT P.CODIGO FROM LUGAR m, LUGAR e, LUGAR p WHERE E.NOMBRE = $6 AND M.NOMBRE = $7 AND P.NOMBRE = $8 AND E.CODIGO = M.FK_LUGAR AND M.CODIGO = P.FK_LUGAR);
			INSERT INTO PACIENTE (CI, PRIMERNOMBRE, PRIMERAPELLIDO, EDAD, CARRERA, FK_LUGAR) VALUES ($1, $2, $3, $4, $5, FK_LUGAR);

			RESULT := 201;
	  	
	  	ELSE
		
			RESULT := 500;
		
		END IF;
	ELSE
		RESULT := 300;
	END IF;
 	RETURN RESULT;

	
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_MODIFICAR(ID integer,  FIRSTNAME varchar(50),  SURNAME varchar(50),  AGE integer, CAREER varchar(35),  STATE varchar(80), MUNICIPALITY varchar(80), PARISH varchar(80)) RETURNS integer AS $$
DECLARE
 RESULT integer;
 lugar integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PACIENTE WHERE CI = ID) = 1) THEN


		lugar := (SELECT P.CODIGO FROM LUGAR M, LUGAR E, LUGAR P WHERE E.NOMBRE = state AND M.NOMBRE = municipality AND P.NOMBRE = parish AND E.CODIGO = M.FK_LUGAR AND M.CODIGO = P.FK_LUGAR);
		UPDATE PACIENTE SET PRIMERNOMBRE = FIRSTNAME, PRIMERAPELLIDO = SURNAME, EDAD = AGE, CARRERA = CAREER, FK_LUGAR= lugar WHERE CI = ID;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_CONSULTAR(ID integer) RETURNS TABLE(CI integer, PRIMERNOMBRE varchar(50), PRIMERAPELLIDO varchar(50), EDAD integer, CARRERA varchar(35), ESTADO varchar(80), MUNICIPIO varchar(80), PARROQUIA varchar(80)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAC.CI, PAC.PRIMERNOMBRE, PAC.PRIMERAPELLIDO, PAC.EDAD, PAC.CARRERA, E.NOMBRE, M.NOMBRE, P.NOMBRE
	FROM PACIENTE PAC , LUGAR E, LUGAR M, LUGAR P
	WHERE PAC.FK_LUGAR = P.CODIGO AND P.FK_LUGAR = M.CODIGO AND M.FK_LUGAR = E.CODIGO AND PAC.CI = ID		
	 ;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_CONSULTAR_TODOS() RETURNS TABLE(CI integer, PRIMERNOMBRE varchar(50), PRIMERAPELLIDO varchar(50), EDAD integer, CARRERA varchar(35), ESTADO varchar(80), MUNICIPIO varchar(80), PARROQUIA varchar(80)) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PAC.CI, PAC.PRIMERNOMBRE, PAC.PRIMERAPELLIDO, PAC.EDAD, PAC.CARRERA, E.NOMBRE, M.NOMBRE, P.NOMBRE
	FROM PACIENTE PAC , LUGAR E, LUGAR M, LUGAR P
	WHERE PAC.FK_LUGAR = P.CODIGO AND P.FK_LUGAR = M.CODIGO AND M.FK_LUGAR = E.CODIGO		
	 ;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_ELIMINAR(ID integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PACIENTE WHERE CI = ID) = 1) THEN 

		DELETE FROM PACIENTE WHERE CI = ID;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION DIAGNOSTICO_REGISTRAR(DIAGNOSIS_DATE date, FEELINGS varchar(100), EMOTIONS varchar(100), ANSWER varchar(120), ANSWER_RED varchar(200), TOTAL_ANXIETY float (30), PATIENT integer, PSYCHO varchar(80)) RETURNS integer AS $$
DECLARE
 RESULT integer;
 PSICOLOGO integer;
BEGIN

		PSICOLOGO := (SELECT CEDULA FROM PSICOLOGO WHERE EMAIL = PSYCHO);
		
		INSERT INTO DIAGNOSTICO (FECHA, SENTIMIENTOS, EMOCIONES, RESPUESTA, RESPUESTARED, ANSIEDADTOTAL, FK_PACIENTE, FK_PSICOLOGO) VALUES (DIAGNOSIS_DATE, FEELINGS, EMOTIONS, ANSWER, ANSWER_RED, TOTAL_ANXIETY, PATIENT, PSICOLOGO);
		
		RESULT := 201;

RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION DIAGNOSTICO_CONSULTAR(PATIENT integer, PSYCHO integer) RETURNS TABLE(CODIGO integer, FECHA date, SENTIMIENTOS varchar(100), EMOCIONES varchar(100), RESPUESTA varchar(120), RESPUESTARED varchar(200), ANSIEDADTOTAL float (30), NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT D.CODIGO, D.FECHA, D.SENTIMIENTOS, D.EMOCIONES, D.RESPUESTA, D.RESPUESTARED, D.ANSIEDADTOTAL, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO
	 FROM DIAGNOSTICO D, PACIENTE P, PSICOLOGO PS
	 WHERE D.FK_PACIENTE = PATIENT AND D.FK_PSICOLOGO = PSYCHO AND P.CI = D.FK_PACIENTE AND PS.CEDULA = D.FK_PSICOLOGO;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION DIAGNOSTICO_CONSULTAR_IDPSYCHO(PSYCHO integer) RETURNS TABLE(CODIGO integer, FECHA date, SENTIMIENTOS varchar(100), EMOCIONES varchar(100), RESPUESTA varchar(120), RESPUESTARED varchar(200), ANSIEDADTOTAL float (30), CEDULA_PACIENTE integer, NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), CEDULA_PSICO integer, NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT D.CODIGO, D.FECHA, D.SENTIMIENTOS, D.EMOCIONES, D.RESPUESTA, D.RESPUESTARED, D.ANSIEDADTOTAL, P.CI, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.CEDULA, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO
	 FROM DIAGNOSTICO D, PACIENTE P, PSICOLOGO PS
	 WHERE D.FK_PSICOLOGO = PSYCHO AND PS.CEDULA = D.FK_PSICOLOGO AND P.CI = D.FK_PACIENTE;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION DIAGNOSTICO_CONSULTAR_DETALLE(DIAGNOSIS integer) RETURNS TABLE(CODIGO integer, FECHA date, SENTIMIENTOS varchar(100), EMOCIONES varchar(100), RESPUESTA varchar(120), RESPUESTARED varchar(200), ANSIEDADTOTAL float (30), NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT D.CODIGO, D.FECHA, D.SENTIMIENTOS, D.EMOCIONES, D.RESPUESTA, D.RESPUESTARED, D.ANSIEDADTOTAL, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO
	 FROM DIAGNOSTICO D, PACIENTE P, PSICOLOGO PS
	 WHERE D.CODIGO = DIAGNOSIS AND P.CI = D.FK_PACIENTE AND PS.CEDULA = D.FK_PSICOLOGO;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION DIAGNOSTICO_BORRAR(DIAGNOSIS integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM DIAGNOSTICO WHERE CODIGO = DIAGNOSIS) = 1) THEN 

		DELETE FROM DIAGNOSTICO WHERE CODIGO = DIAGNOSIS;
		
		RESULT := 200;

	ELSE

		RESULT := 204;

	END IF;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_REGISTRAR(DATEAPPOINTMENT date, TIMEAPPOINTMENT time, REASON varchar(200), PATIENT integer, PSYCHO integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN

	INSERT INTO CITA (FECHA, HORA, MOTIVO, FK_PACIENTE, FK_PSICOLOGO) VALUES (DATEAPPOINTMENT, TIMEAPPOINTMENT, REASON, PATIENT, PSYCHO);
	RESULT := 201;
	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_MODIFICAR(ID integer, DATEAPPOINTMENT date, TIMEAPPOINTMENT time, REASON varchar(200)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CITA WHERE CODIGO = ID) = 1) THEN
		UPDATE CITA SET FECHA = DATEAPPOINTMENT, HORA = TIMEAPPOINTMENT, MOTIVO = REASON WHERE (CODIGO = ID);
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_ELIMINAR(APPOINTMENT integer) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM CITA WHERE CODIGO = APPOINTMENT) = 1) THEN
		DELETE FROM CITA WHERE (CODIGO = APPOINTMENT);
		
		RESULT := 200;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_CONSULTAR_TODOS(PSYCHO integer) RETURNS TABLE(CODIGO integer, FECHA date, HORA time, MOTIVO varchar(200), PACIENTE_ID integer, NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), PSICOLOGO_ID integer, NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50), FK_EXAMENMENTAL integer) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT C.CODIGO, C.FECHA, C.HORA, C.MOTIVO, P.CI, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.CEDULA, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO, C.FK_EXAMENMENTAL
	 FROM CITA C, PACIENTE P, PSICOLOGO PS
	 WHERE C.FK_PSICOLOGO = PSYCHO AND C.FK_PACIENTE = P.CI AND C.FK_PSICOLOGO = PS.CEDULA;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_CONSULTAR(DATEAPPOINTMENT date, TIMEAPPOINTMENT time, PATIENT integer, PSYCHO integer) RETURNS TABLE(CODIGO integer, FECHA date, HORA time, MOTIVO varchar(200), PACIENTE_ID integer, NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), PSICOLOGO_ID integer, NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50), FK_EXAMENMENTAL integer) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT C.CODIGO, C.FECHA, C.HORA, C.MOTIVO, P.CI, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.CEDULA, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO, C.FK_EXAMENMENTAL
	 FROM CITA C, PACIENTE P, PSICOLOGO PS
	 WHERE C.FECHA = DATEAPPOINTMENT AND C.HORA = TIMEAPPOINTMENT AND C.FK_PACIENTE = PATIENT AND C.FK_PSICOLOGO = PSYCHO AND C.FK_PACIENTE = P.CI AND C.FK_PSICOLOGO = PS.CEDULA;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_CONSULTAR_DETALLE(ID integer) RETURNS TABLE(CODIGO integer, FECHA date, HORA time, MOTIVO varchar(200), PACIENTE_ID integer, NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), PSICOLOGO_ID integer, NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50), FK_EXAMENMENTAL integer) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT C.CODIGO, C.FECHA, C.HORA, C.MOTIVO, P.CI, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.CEDULA, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO, C.FK_EXAMENMENTAL
	 FROM CITA C, PACIENTE P, PSICOLOGO PS
	 WHERE C.CODIGO = ID AND C.FK_PACIENTE = P.CI AND C.FK_PSICOLOGO = PS.CEDULA;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_CONSULTAR_REGISTRO(PSYCHO integer) RETURNS TABLE(CODIGO integer, FECHA date, HORA time, MOTIVO varchar(200), PACIENTE_ID integer, NOMBRE_PACIENTE varchar(50), APELLIDO_PACIENTE varchar(50), PSICOLOGO_ID integer, NOMBRE_PSICO varchar(50), APELLIDO_PSICO varchar(50), FK_EXAMENMENTAL integer) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT C.CODIGO, C.FECHA, C.HORA, C.MOTIVO, P.CI, P.PRIMERNOMBRE, P.PRIMERAPELLIDO, PS.CEDULA, PS.PRIMERNOMBRE, PS.PRIMERAPELLIDO, C.FK_EXAMENMENTAL
	 FROM CITA C, PACIENTE P, PSICOLOGO PS
	 WHERE C.FK_EXAMENMENTAL IS NULL AND C.FK_PSICOLOGO = PSYCHO AND C.FK_PACIENTE = P.CI AND C.FK_PSICOLOGO = PS.CEDULA;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION EXAMENMENTAL_REGISTRAR(ID integer, BEHAVIOR varchar(300), ATTITUDE varchar(200), ALERTNESS varchar(200), AWARENESS varchar(200), MOOD varchar(200), LANGUAGE varchar(200), THOUGHT varchar(300)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT FK_EXAMENMENTAL FROM CITA WHERE CODIGO = ID) IS NULL) THEN

		INSERT INTO EXAMENMENTAL (COMPORTAMIENTO, ACTITUD, ATENCION, CONCIENCIA, ESTADOANIMO, LENGUAJE, PENSAMIENTO) VALUES (BEHAVIOR, ATTITUDE, ALERTNESS, AWARENESS, MOOD, LANGUAGE, THOUGHT);
		UPDATE CITA SET FK_EXAMENMENTAL = (SELECT MAX (CODIGO) FROM EXAMENMENTAL) WHERE (CODIGO = ID);

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 500;
	
	END IF;
 	RETURN RESULT;
 END;

 $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION EXAMENMENTAL_CONSULTAR(ID integer) RETURNS TABLE(CODIGO integer, COMPORTAMIENTO varchar(300), ACTITUD varchar(200), ATENCION varchar(200), CONCIENCIA varchar(200), ESTADOANIMO varchar(200), LENGUAJE varchar(200), PENSAMIENTO varchar(300)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT EM.CODIGO, EM.COMPORTAMIENTO, EM.ACTITUD, EM.ATENCION, EM.CONCIENCIA, EM.ESTADOANIMO, EM.LENGUAJE, EM.PENSAMIENTO
	 FROM EXAMENMENTAL EM, CITA C
	 WHERE EM.CODIGO = ID AND C.FK_EXAMENMENTAL = EM.CODIGO;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_EXISTE(integer, varchar(80)) RETURNS integer AS $$
DECLARE
 RESULT integer;

 BEGIN 
 	IF((SELECT COUNT(*) FROM PACIENTE WHERE CI = $1) = 1) THEN

 		IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE EMAIL = $2) = 1) THEN
 			RESULT := 200;

 		ELSE
 			RESULT := 300;
 		END IF;

 	ELSE 
 		RESULT := 500;

 	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CITA_EXISTE(DATEAPPOINTMENT date, TIMEAPPOINTMENT time) RETURNS integer AS $$
DECLARE
 RESULT integer;

 BEGIN 
 	IF((SELECT COUNT(*) FROM CITA WHERE FECHA = DATEAPPOINTMENT AND HORA = TIMEAPPOINTMENT) = 1) THEN

 		RESULT := 200;

 	ELSE 
 		RESULT := 500;

 	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;


/**************************************Consultar Lugar Detallado****************************************/

CREATE OR REPLACE FUNCTION ESTADO_CONSULTAR_TODOS() RETURNS TABLE (CODIGO integer, NOMBRE varchar(80)) as $$
DECLARE
BEGIN

	RETURN QUERY
	SELECT LU.CODIGO, LU.NOMBRE
	FROM LUGAR LU
	WHERE LU.TIPO = 'Estado'
	;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ESTADO_CONSULTAR_CODIGO(NAME varchar(80)) RETURNS TABLE (CODIGO integer, NOMBRE varchar(80)) as $$
DECLARE
BEGIN

	RETURN QUERY
	SELECT LU.CODIGO, LU.NOMBRE
	FROM LUGAR LU
	WHERE LU.TIPO = 'Estado' AND LU.NOMBRE = NAME
	;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION MUNICIPIO_CONSULTAR_TODOS(STATE_ID integer) RETURNS TABLE (CODIGO integer, NOMBRE varchar(80)) as $$
DECLARE
BEGIN

	RETURN QUERY
	SELECT LU.CODIGO, LU.NOMBRE FROM LUGAR LU WHERE LU.FK_LUGAR = STATE_ID;

END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION MUNICIPIO_CONSULTAR_CODIGO(NAME varchar(80)) RETURNS TABLE (CODIGO integer, NOMBRE varchar(80)) as $$
DECLARE
BEGIN

	RETURN QUERY
	SELECT LU.CODIGO, LU.NOMBRE 
	FROM LUGAR LU 
	WHERE LU.TIPO = 'Municipio' AND LU.NOMBRE = NAME
	;

END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PARROQUIA_CONSULTAR_TODOS(MUN_ID integer) RETURNS TABLE (CODIGO integer, NOMBRE varchar(80)) as $$
DECLARE
BEGIN

	RETURN QUERY
	SELECT LU.CODIGO, LU.NOMBRE FROM LUGAR LU WHERE LU.FK_LUGAR = MUN_ID;

END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION ESTADISTICA_MAINPAGE() RETURNS TABLE(CARRERA VARCHAR(35), EDAD INTEGER, ANSIEDADTOTAL FLOAT(30), NOMBRE VARCHAR(80)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT P.CARRERA, P.EDAD, D.ANSIEDADTOTAL, LE.NOMBRE
	 FROM DIAGNOSTICO D, PACIENTE P, LUGAR LE, LUGAR LM, LUGAR LP
	 WHERE D.ANSIEDADTOTAL >= 0.25 AND LE.CODIGO = LM.FK_LUGAR AND LM.CODIGO = LP.FK_LUGAR AND P.CI = D.FK_PACIENTE AND P.FK_LUGAR = LP.CODIGO;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION ESTADISTICA_FECHAS(initdate date, enddate date) RETURNS TABLE(MES FLOAT(30), YEAR FLOAT(30), AVGANSIEDADTOTAL FLOAT(30)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT EXTRACT(month FROM d.fecha) AS mes, EXTRACT(year FROM d.fecha) AS anio, AVG(d.ansiedadtotal) AS "promedio_ansiedad"
	 FROM diagnostico d
	 WHERE fecha BETWEEN initdate AND enddate
	 GROUP BY 1,2
	 ORDER BY 1;
END;
$$ LANGUAGE plpgsql;

/*CREATE OR REPLACE FUNCTION ESTADISTICA_ESTADOS() RETURNS TABLE(MUNICIPIO VARCHAR(80), TOTALPERSONAS bigint) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT LE.NOMBRE, COUNT(D.*)
	 FROM DIAGNOSTICO D, PACIENTE P, LUGAR LE, LUGAR LM, LUGAR LP
	 WHERE D.FK_PACIENTE = P.CI AND P.FK_LUGAR = LP.CODIGO AND LP.FK_LUGAR = LM.CODIGO AND LM.FK_LUGAR = LE.CODIGO AND D.ANSIEDADTOTAL >= 0.25
	 GROUP BY 1;
END;
$$ LANGUAGE plpgsql;   */  

CREATE OR REPLACE FUNCTION ESTADISTICA_EDAD() RETURNS TABLE(EDAD INTEGER, TOTALPERSONAS FLOAT(30)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT P.EDAD, AVG(D.ANSIEDADTOTAL)
	 FROM DIAGNOSTICO D, PACIENTE P
	 WHERE D.FK_PACIENTE = P.CI AND D.ANSIEDADTOTAL >= 0.25
	 GROUP BY 1
	 ORDER BY 1;
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION ESTADISTICA_CARRERA() RETURNS TABLE(CARRERA VARCHAR(35), AVGANSIEDADTOTAL FLOAT(30)) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT P.CARRERA, AVG(D.ANSIEDADTOTAL)
	 FROM DIAGNOSTICO D, PACIENTE P
	 WHERE D.FK_PACIENTE = P.CI 
	 GROUP BY 1
	 ORDER BY 1;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION ESTADISTICA_ESTADOS() RETURNS TABLE(ESTADO VARCHAR(80), TOTALPERSONAS bigint) AS $$
DECLARE

BEGIN
	 RETURN QUERY
	 SELECT A.estado, COUNT(A.*)
	 FROM (SELECT DISTINCT ON (D.fk_paciente) D.fk_paciente as cedula, D.fecha as fecha, LE.nombre as estado, D.ansiedadtotal as ansiedadtotal
      	   FROM DIAGNOSTICO D, PACIENTE P, LUGAR LE, LUGAR LM, LUGAR LP
           WHERE D.FK_PACIENTE = P.CI AND P.FK_LUGAR = LP.CODIGO AND LP.FK_LUGAR = LM.CODIGO AND LM.FK_LUGAR = LE.CODIGO AND D.ANSIEDADTOTAL >= 0.25
           ORDER BY D.fk_paciente, D.fecha DESC) AS A
	 GROUP BY 1;
END;
$$ LANGUAGE plpgsql;     