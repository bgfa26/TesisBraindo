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
        NeuralNetworkTestCommand annCmd = new NeuralNetworkTestCommand(testToRegister.getAnswers().get(0), testToRegister.getAnswers().get(1), testToRegister.getAnswers().get(2), 
                                                                       testToRegister.getAnswers().get(3), testToRegister.getAnswers().get(4), testToRegister.getAnswers().get(5), 
                                                                       testToRegister.getAnswers().get(6), testToRegister.getAnswers().get(7), testToRegister.getAnswers().get(8), 
                                                                       testToRegister.getAnswers().get(9), testToRegister.getAnswers().get(10), testToRegister.getAnswers().get(11), 
                                                                       testToRegister.getAnswers().get(12), testToRegister.getAnswers().get(13), testToRegister.getAnswers().get(14), 
                                                                       testToRegister.getAnswers().get(15), testToRegister.getAnswers().get(16), testToRegister.getAnswers().get(17), 
                                                                       testToRegister.getAnswers().get(18), testToRegister.getAnswers().get(19), testToRegister.getAnswers().get(20), 
                                                                       testToRegister.getAnswers().get(21), testToRegister.getAnswers().get(22), testToRegister.getAnswers().get(23), 
                                                                       testToRegister.getAnswers().get(24), testToRegister.getAnswers().get(25), testToRegister.getAnswers().get(26), 
                                                                       testToRegister.getAnswers().get(27), testToRegister.getAnswers().get(28), testToRegister.getAnswers().get(29), 
                                                                       testToRegister.getAnswers().get(30), testToRegister.getAnswers().get(31), testToRegister.getAnswers().get(32), 
                                                                       testToRegister.getAnswers().get(33), testToRegister.getAnswers().get(34), testToRegister.getAnswers().get(35), 
                                                                       testToRegister.getAnswers().get(36), testToRegister.getAnswers().get(37), testToRegister.getAnswers().get(38));
        annCmd.execute();
        ArrayList<double[]> neuralNetworkResponses = annCmd.getResponses();
        String neuralNetworkAnswers = "";
        for (double[] neuralNetworkResponse : neuralNetworkResponses) {
            neuralNetworkAnswers += neuralNetworkResponse[0] + "/";
        }
        TextAnalyzerCommand pdCmd = new TextAnalyzerCommand(testToRegister.getAnswer40());
        pdCmd.execute();
        ArrayList<String> parallelDotsAnswers = pdCmd.getResponses();
        DAOTest daoTest = new DAOTest();
        response = daoTest.registrationTest(testToRegister, neuralNetworkAnswers, parallelDotsAnswers.get(0), parallelDotsAnswers.get(1));
        
    }
    
    public Test getResponse(){
        return response;
    }
}
    