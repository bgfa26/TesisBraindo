/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.test_model;

import org.neuroph.core.NeuralNetwork;

public class BraindoNN {
     public double[] avoidanceNeuralNetwork (float ans1, float ans2, float ans3, float ans4, float ans5, float ans6, float ans7, float ans8, float ans9, float ans10){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\Avoidance.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
     
     public double[] experienceNeuralNetwork (float ans1, float ans2, float ans3, float ans4, float ans5, float ans6, float ans7, float ans8, float ans9, float ans10, float ans11){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\Experience.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
     
     public double[] flexibilityNeuralNetwork (float ans1, float ans2, float ans3, float ans4){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\Flexibility.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
    
     public double[] fusionNeuralNetwork (float ans1, float ans2, float ans3, float ans4, float ans5, float ans6, float ans7){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\Fusion.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4, ans5, ans6, ans7);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
     
     public double[] rigidityNeuralNetwork (float ans1, float ans2, float ans3, float ans4, float ans5, float ans6, float ans7){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\Rigidity.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4, ans5, ans6, ans7);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
     
     public double[] socialAnxietyNeuralNetwork (float ans1, float ans2, float ans3, float ans4, float ans5, float ans6, float ans7, float ans8, float ans9, float ans10, float ans11, float ans12, float ans13,
                                                 float ans14, float ans15, float ans16, float ans17, float ans18, float ans19, float ans20, float ans21, float ans22, float ans23,  float ans24,  float ans25, 
                                                 float ans26, float ans27, float ans28, float ans29, float ans30, float ans31, float ans32, float ans33, float ans34, float ans35){
        NeuralNetwork neuralNetwork = NeuralNetwork.createFromFile("C:\\Users\\LuisAlejandro\\Documents\\GitHub\\TesisBraindo\\BraindoWebService\\src\\java\\model\\test_model\\NeuralNetworkFiles\\SocialAnxiety.nnet");
        // set network input 
        neuralNetwork.setInput(ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11, ans12, ans13, ans14, ans15, ans16, ans17, ans18, ans19, 
                               ans20, ans21, ans22, ans23, ans24, ans25, ans26, ans27, ans28, ans29, ans30, ans31, ans32, ans33, ans34, ans35);
        neuralNetwork.calculate();
        double[] networkOutput = neuralNetwork.getOutput();
        return networkOutput;
    }
}
