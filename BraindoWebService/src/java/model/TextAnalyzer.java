/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.logging.Level;
import java.util.logging.Logger;
import paralleldots.ParallelDots;

/**
 *
 * @author LuisAlejandro
 */
public class TextAnalyzer {
    private static ParallelDots pd = new ParallelDots("WdQfm5fsUWOAzhKDynb00nOcqLy0L19VKAG2Q2GZvNU"); 
    
    public String analizeEmotions(String text){
        try {
            Translator translate = new Translator();
            String translatedText = translate.translate("es", "en", text);
            return pd.emotion(translatedText);
        } catch (Exception ex) {
            return "NotAnalyzedEmotions";
        }
    }
    
    public String analizeSentiments(String text){
        try {
            Translator translate = new Translator();
            String translatedText = translate.translate("es", "en", text);
            return pd.sentiment(translatedText);
        } catch (Exception ex) {
            return " ";
        }
    }
}
