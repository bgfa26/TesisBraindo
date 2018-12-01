/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.patient_model;

import common.entities.Patient;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import model.DAO;
import model.Registry;
import static model.Registry.CODE_FAILED;
import static model.Registry.CODE_RESOURCE_CREATED;


public class DAOPatient {
    private Connection _dbCon;
    private static String _sqlPatientRegistration = "{?=call PACIENTE_REGISTRAR(?,?,?,?,?,?,?,?)}";

    private ResultSet rs;
    
    public Patient registrationPatient (Patient _patient) throws Exception{
        
        Patient _patientError = new Patient();
        CallableStatement cstmt;
        
        int response = 0;
        
        try {
            
            _dbCon = DAO.getBdConnect();
            cstmt = _dbCon.prepareCall(_sqlPatientRegistration);
            //Parametro de salida
            cstmt.registerOutParameter(1, Types.INTEGER);
            //java.sql.Date sqlFecha = new java.sql.Date(_empleado.getFechaNac().getTime());
            cstmt.setInt(2, _patient.get_id());
            cstmt.setString(3, _patient.get_firstname());
            cstmt.setString(4, _patient.get_lastname());
            cstmt.setInt(5, _patient.get_age());
            cstmt.setString(6, _patient.get_career());
            cstmt.setString(7, _patient.get_state());
            cstmt.setString(8, _patient.get_municipality());
            cstmt.setString(9, _patient.get_parish());
            cstmt.execute();
            response = cstmt.getInt(1);
            
            if(response == Registry.CODE_RESOURCE_CREATED){
                
                _patient.set_error(CODE_RESOURCE_CREATED);
                return _patient;    
                
            }else{
                
                _patientError.set_error(CODE_FAILED);
                return _patientError;
                
            }
            
        } catch (SQLException ex) {
            
            throw ex;
            
        } catch (Exception ex) {
            
            throw ex;
            
        } finally {
            
            _dbCon.close();
            
        }
    }
}
