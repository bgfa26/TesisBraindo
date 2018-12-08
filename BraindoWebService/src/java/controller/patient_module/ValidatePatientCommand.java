/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.patient_module;

import common.entities.Patient;
import controller.Command;
import model.patient_model.DAOPatient;

/**
 *
 * @author LuisAlejandro
 */
public class ValidatePatientCommand extends Command{
    private Patient patientToValidate;
    private Patient response;
    
    public ValidatePatientCommand(Patient _patientToValidate){
        this.patientToValidate = _patientToValidate;
    }
    
    @Override
    public void execute() throws Exception {
        DAOPatient daoPatient = new DAOPatient();
        response = daoPatient.validatePatient(patientToValidate);
    }
    
    public Patient getResponse(){
        return response;
    }
    
}