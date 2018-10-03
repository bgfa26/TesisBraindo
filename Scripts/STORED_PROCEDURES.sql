CREATE OR REPLACE FUNCTION PSICOLOGO_INICIARSESION(varchar(80), varchar(50)) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE EMAIL = $1 AND CLAVE = $2) = 0) THEN

		RESULT := 204;
  	
  	ELSE
	
		RESULT := 200;

	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_REGISTRAR(integer, varchar(80), varchar(50), varchar(50), varchar(50), varchar(50), varchar(50), varchar(20), date) RETURNS integer AS $$
DECLARE
 RESULT integer;
 FK_LUGAR integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE CEDULA = $1) = 0) THEN

		INSERT INTO PSICOLOGO (CEDULA, EMAIL, CLAVE, PRIMERNOMBRE, SEGUNDONOMBRE, PRIMERAPELLIDO, SEGUNDOAPELLIDO, NUMEROMATRICULA, FECHANACIMIENTO) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9);
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 500;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_MODIFICAR(integer, varchar(80), varchar(50), varchar(50), varchar(50), varchar(50), varchar(50), varchar(20), date) RETURNS integer AS $$
DECLARE
 RESULT integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PSICOLOGO WHERE CEDULA = $1) = 1) THEN

		UPDATE PSICOLOGO SET EMAIL = $2, CLAVE = $3, PRIMERNOMBRE = $4, SEGUNDONOMBRE = $5, PRIMERAPELLIDO = $6, SEGUNDOAPELLIDO = $7, NUMEROMATRICULA = $8, FECHANACIMIENTO = $9 WHERE CEDULA = $1;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PSICOLOGO_CONSULTAR(integer) RETURNS TABLE(CEDULA integer, EMAIL varchar(80), CLAVE varchar(50), PRIMERNOMBRE varchar(30), SEGUNDONOMBRE varchar(30), PRIMERAPELLIDO varchar(30), SEGUNDOAPELLIDO varchar(30), NUMEROMATRICULA varchar(20), FECHAINGRESO date) AS $$
DECLARE

BEGIN
	RETURN QUERY
	SELECT PSI.CEDULA, PSI.EMAIL, PSI.CLAVE, PSI.PRIMERNOMBRE, PSI.SEGUNDONOMBRE, PSI.PRIMERAPELLIDO, PSI.SEGUNDOAPELLIDO, PSI.NUMEROMATRICULA, PSI.FECHANACIMIENTO
	FROM PSICOLOGO PSI
	WHERE PSI.CEDULA = $1		
	 ;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_REGISTRAR(integer, varchar(50), varchar(50), integer, varchar(35), integer) RETURNS integer AS $$
DECLARE
 RESULT integer;
 FK_LUGAR integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PACIENTE WHERE CI = $1) = 0) THEN

		INSERT INTO PACIENTE (CI, EMAIL, CLAVE, PRIMERNOMBRE, SEGUNDONOMBRE, PRIMERAPELLIDO, SEGUNDOAPELLIDO, NUMEROMATRICULA, FECHANACIMIENTO) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9);

		RESULT := 201;
  	
  	ELSE
	
		RESULT := 500;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION PACIENTE_MODIFICAR(integer, varchar(50), varchar(50), integer, varchar(35), integer) RETURNS integer AS $$
DECLARE
 RESULT integer;
 FK_LUGAR integer;

BEGIN
	IF ((SELECT COUNT(*) FROM PACIENTE WHERE CI = $1) = 0) THEN

		UPDATE PACIENTE SET CI = $1, EMAIL = $2, CLAVE = $3, PRIMERNOMBRE = $4, SEGUNDONOMBRE = $5, PRIMERAPELLIDO = $6, SEGUNDOAPELLIDO = $7, NUMEROMATRICULA = $8, FECHANACIMIENTO = $9 WHERE CI = $1;
		
		RESULT := 201;
  	
  	ELSE
	
		RESULT := 204;
	
	END IF;
 	RETURN RESULT;
END;
$$ LANGUAGE plpgsql;

