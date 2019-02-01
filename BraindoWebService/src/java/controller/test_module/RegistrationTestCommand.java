/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.test_module;


import common.entities.Test;
import controller.Command;
import java.util.ArrayList;
import model.test_model.DAOTest;


public class RegistrationTestCommand extends Command{
    private Test testToRegister;
    private Test response;
    
    public RegistrationTestCommand(Test _testToRegister){
        this.testToRegister = _testToRegister;
    }
    @Override
    public void execute() throws Exception {
        NeuralNetworkTestCommand annCmd = new NeuralNetworkTestCommand(testToRegister.get_answers().get(0), testToRegister.get_answers().get(1), testToRegister.get_answers().get(2), 
                                                                       testToRegister.get_answers().get(3), testToRegister.get_answers().get(4), testToRegister.get_answers().get(5), 
                                                                       testToRegister.get_answers().get(6), testToRegister.get_answers().get(7), testToRegister.get_answers().get(8), 
                                                                       testToRegister.get_answers().get(9), testToRegister.get_answers().get(10), testToRegister.get_answers().get(11), 
                                                                       testToRegister.get_answers().get(12), testToRegister.get_answers().get(13), testToRegister.get_answers().get(14), 
                                                                       testToRegister.get_answers().get(15), testToRegister.get_answers().get(16), testToRegister.get_answers().get(17), 
                                                                       testToRegister.get_answers().get(18), testToRegister.get_answers().get(19), testToRegister.get_answers().get(20), 
                                                                       testToRegister.get_answers().get(21), testToRegister.get_answers().get(22), testToRegister.get_answers().get(23), 
                                                                       testToRegister.get_answers().get(24), testToRegister.get_answers().get(25), testToRegister.get_answers().get(26), 
                                                                       testToRegister.get_answers().get(27), testToRegister.get_answers().get(28), testToRegister.get_answers().get(29), 
                                                                       testToRegister.get_answers().get(30), testToRegister.get_answers().get(31), testToRegister.get_answers().get(32), 
                                                                       testToRegister.get_answers().get(33), testToRegister.get_answers().get(34), testToRegister.get_answers().get(35), 
                                                                       testToRegister.get_answers().get(36), testToRegister.get_answers().get(37), testToRegister.get_answers().get(38));
        annCmd.execute();
        ArrayList<double[]> neuralNetworkResponses = annCmd.getResponses();
        String neuralNetworkAnswers = "";
        for (double[] neuralNetworkResponse : neuralNetworkResponses) {
            neuralNetworkAnswers += neuralNetworkResponse[0] + "/";
        }
        TextAnalyzerCommand pdCmd = new TextAnalyzerCommand(testToRegister.get_answer40());
        pdCmd.execute();
        ArrayList<String> parallelDotsAnswers = pdCmd.getResponses();
        DAOTest daoTest = new DAOTest();
        response = daoTest.registrationTest(testToRegister, neuralNetworkAnswers, parallelDotsAnswers.get(0), parallelDotsAnswers.get(1));
        
    }
    
    public Test getResponse(){
        return response;
    }
}
    