/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.test_module;


import common.entities.Test;
import controller.Command;
import model.test_model.DAOTest;


public class RegistrationTestCommand extends Command{
    private Test testToRegister;
    private Test response;
    
    public RegistrationTestCommand(Test _testToRegister){
        this.testToRegister = _testToRegister;
    }
    @Override
    public void execute() throws Exception {
        DAOTest daoTest = new DAOTest();
        response = daoTest.registrationTest(testToRegister);
    }
    
    public Test getResponse(){
        return response;
    }
}
    