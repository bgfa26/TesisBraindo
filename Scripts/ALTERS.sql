ALTER TABLE LUGAR
  ADD CONSTRAINT FK_LUGAR
  FOREIGN KEY (FK_LUGAR) 
  REFERENCES LUGAR (CODIGO)
  ON DELETE CASCADE;

  ALTER TABLE PACIENTE
  ADD CONSTRAINT FK_LUGAR
  FOREIGN KEY (FK_LUGAR) 
  REFERENCES LUGAR (CODIGO)
  ON DELETE CASCADE;

ALTER TABLE DIAGNOSTICO
  ADD CONSTRAINT FK_PACIENTE
  FOREIGN KEY (FK_PACIENTE) 
  REFERENCES PACIENTE (CI)
  ON DELETE CASCADE;

ALTER TABLE DIAGNOSTICO
  ADD CONSTRAINT FK_PSICOLOGO
  FOREIGN KEY (FK_PSICOLOGO) 
  REFERENCES PSICOLOGO (CEDULA)
  ON DELETE CASCADE;

  ALTER TABLE CITA
  ADD CONSTRAINT FK_PACIENTE
  FOREIGN KEY (FK_PACIENTE) 
  REFERENCES PACIENTE (CI)
  ON DELETE CASCADE;

ALTER TABLE CITA
  ADD CONSTRAINT FK_PSICOLOGO
  FOREIGN KEY (FK_PSICOLOGO) 
  REFERENCES PSICOLOGO (CEDULA)
  ON DELETE CASCADE;