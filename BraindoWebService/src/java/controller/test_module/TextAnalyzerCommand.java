/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.test_module;

import controller.Command;
import java.util.ArrayList;
import model.TextAnalyzer;

/**
 *
 * @author LuisAlejandro
 */
public class TextAnalyzerCommand extends Command{
    private String text;
    private ArrayList<String> parallelDotsAnswers = new ArrayList<String>();
    
    public TextAnalyzerCommand(String _text){
        text = _text;
    } 
    
    @Override
    public void execute() throws Exception {
        TextAnalyzer analyzer = new TextAnalyzer();
        parallelDotsAnswers.add(analyzer.analizeEmotions(text));
        parallelDotsAnswers.add(analyzer.analizeSentiments(text));
    }
    
    public ArrayList<String> getResponses(){
        return parallelDotsAnswers;
    }
}
