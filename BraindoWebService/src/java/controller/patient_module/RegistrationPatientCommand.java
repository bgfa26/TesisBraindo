/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.patient_module;

import common.entities.Patient;
import controller.Command;
import model.patient_model.DAOPatient;

public class RegistrationPatientCommand extends Command{
    private Patient patientToRegister;
    private Patient response;
    
    public RegistrationPatientCommand(Patient _patientToRegister){
        this.patientToRegister = _patientToRegister;
    }
    
    @Override
    public void execute() throws Exception {
        DAOPatient daoPatient = new DAOPatient();
        response = daoPatient.registrationPatient(patientToRegister);
    }
    
    public Patient getResponse(){
        return response;
    }
    
}
