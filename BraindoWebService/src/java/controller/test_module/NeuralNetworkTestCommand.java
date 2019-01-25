/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.test_module;

import controller.Command;
import java.util.ArrayList;
import model.test_model.BraindoNN;

public class NeuralNetworkTestCommand extends Command{
    private float ans1;
    private float ans2;
    private float ans3;
    private float ans4;
    private float ans5;
    private float ans6;
    private float ans7;
    private float ans8;
    private float ans9;
    private float ans10;
    private float ans11;
    private float ans12;
    private float ans13;
    private float ans14;
    private float ans15;
    private float ans16;
    private float ans17;
    private float ans18;
    private float ans19;
    private float ans20;
    private float ans21;
    private float ans22;
    private float ans23;
    private float ans24;
    private float ans25;
    private float ans26;
    private float ans27;
    private float ans28;
    private float ans29;
    private float ans30;
    private float ans31;
    private float ans32;
    private float ans33;
    private float ans34;
    private float ans35;
    private float ans36;
    private float ans37;
    private float ans38;
    private float ans39;
    
    private ArrayList<double[]> responses;
    
    public NeuralNetworkTestCommand(int ans1, int ans2, int ans3, int ans4, int ans5, int ans6, int ans7, int ans8, int ans9, int ans10, 
                                    int ans11, int ans12, int ans13, int ans14, int ans15, int ans16, int ans17, int ans18, int ans19, int ans20, 
                                    int ans21, int ans22, int ans23, int ans24, int ans25, int ans26, int ans27, int ans28, int ans29, int ans30, 
                                    int ans31, int ans32, int ans33, int ans34, int ans35, int ans36, int ans37, int ans38, int ans39){
        this.ans1 = (float)(ans1 - 1) / 4;
        this.ans2 = (float)(ans2 - 1) / 4;
        this.ans3 = (float)(ans3 - 1) / 4;
        this.ans4 = (float)(ans4 - 1) / 4;
        this.ans5 = (float)(ans5 - 1) / 4;
        this.ans6 = (float)(ans6 - 1) / 4;
        this.ans7 = (float)(ans7 - 1) / 4;
        this.ans8 = (float)(ans8 - 1) / 4;
        this.ans9 = (float)(ans9 - 1) / 4;
        this.ans10 = (float)(ans10 - 1) / 4;
        this.ans11 = (float)(ans11 - 1) / 4;
        this.ans12 = (float)(ans12 - 1) / 4;
        this.ans13 = (float)(ans13 - 1) / 4;
        this.ans14 = (float)(ans14 - 1) / 4;
        this.ans15 = (float)(ans15 - 1) / 4;
        this.ans16 = (float)(ans16 - 1) / 4;
        this.ans17 = (float)(ans17 - 1) / 4;
        this.ans18 = (float)(ans18 - 1) / 4;
        this.ans19 = (float)(ans19 - 1) / 4;
        this.ans20 = (float)(ans20 - 1) / 4;
        this.ans21 = (float)(ans21 - 1) / 4;
        this.ans22 = (float)(ans22 - 1) / 4;
        this.ans23 = (float)(ans23 - 1) / 4;
        this.ans24 = (float)(ans24 - 1) / 4;
        this.ans25 = (float)(ans25 - 1) / 4;
        this.ans26 = (float)(ans26 - 1) / 4;
        this.ans27 = (float)(ans27 - 1) / 4;
        this.ans28 = (float)(ans28 - 1) / 4;
        this.ans29 = (float)(ans29 - 1) / 4;
        this.ans30 = (float)(ans30 - 1) / 4;
        this.ans31 = (float)(ans31 - 1) / 4;
        this.ans32 = (float)(ans32 - 1) / 4;
        this.ans33 = (float)(ans33 - 1) / 4;
        this.ans34 = (float)(ans34 - 1) / 4;
        this.ans35 = (float)(ans35 - 1) / 4;
        this.ans36 = (float)(ans36 - 1) / 4;
        this.ans37 = (float)(ans37 - 1) / 4;
        this.ans38 = (float)(ans38 - 1) / 4;
        this.ans39 = (float)(ans39 - 1) / 4;
    
    } 
    
    @Override
    public void execute() throws Exception {
        try{
            responses = new ArrayList<double[]>();
            BraindoNN ann = new BraindoNN();
            double[] avoidanceResponse = ann.avoidanceNeuralNetwork(ans2, ans10, ans12, ans15, ans19, ans20, ans22, ans23, ans25, ans27);
            double [] experienceResponse = ann.experienceNeuralNetwork(ans3, ans5, ans6, ans7, ans11, ans13, ans16, ans17, ans18, ans21, ans24);
            double [] flexibilityResponse = ann.flexibilityNeuralNetwork(ans36, ans37, ans38, ans39);
            double [] fusionResponse = ann.fusionNeuralNetwork(ans1, ans4, ans8, ans9, ans14, ans26, ans28);
            double [] rigidityResponse = ann.rigidityNeuralNetwork(ans29, ans30, ans31, ans32, ans33, ans34, ans35);
            double [] socialAnxietyResponse = ann.socialAnxietyNeuralNetwork(ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11, 
                                                                             ans12, ans13, ans14, ans15, ans16, ans17, ans18, ans19, ans20, ans21, 
                                                                             ans22, ans23, ans24, ans25, ans26, ans27, ans28, ans29, ans30, ans31, 
                                                                             ans32, ans33, ans34, ans35);
            responses.add(avoidanceResponse);
            responses.add(experienceResponse);
            responses.add(flexibilityResponse);
            responses.add(fusionResponse);
            responses.add(rigidityResponse);
            responses.add(socialAnxietyResponse);
        }catch (Exception ex){
            throw ex;
        }
    }
    
    public ArrayList<double[]> getResponses(){
        return responses;
    }
}
