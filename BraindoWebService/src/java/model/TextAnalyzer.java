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
            String emotion = pd.emotion(translatedText);
            if (emotion.contains("200")){
                emotion = emotion.replace("\"", "");
                emotion = emotion.replace("{code: 200, emotion: {probabilities: {Fear: ", "");
                emotion = emotion.replace("}, emotion: ", "%");
                emotion = emotion.split("%")[0];
                emotion = emotion.replace(" Sad: ", "");
                emotion = emotion.replace(" Happy: ", "");
                emotion = emotion.replace(" Angry: ", "");
                emotion = emotion.replace(" Excited: ", "");
                emotion = emotion.replace(" Bored: ", "");
                emotion = emotion.replace(",", ";");
                return emotion;
            }else{
                return "NotAnalyzedEmotions";
            }
        } catch (Exception ex) {
            return "NotAnalyzedEmotions";
        }
    }
    
    public String analizeSentiments(String text){
        try {
            Translator translate = new Translator();
            String translatedText = translate.translate("es", "en", text);
            String sentiment = pd.sentiment(translatedText);
            if (sentiment.contains("\"code\":200")){
                sentiment = sentiment.replace("},\"code\":200}", "");
                sentiment = sentiment.replace("\"probabilities\"", "\"%probabilities\"");
                sentiment = sentiment.split("%")[1];
                sentiment = sentiment.replace("probabilities\":{", "");
                sentiment = sentiment.replace("\"negative\":", "");
                sentiment = sentiment.replace("\"neutral\":", "");
                sentiment = sentiment.replace("\"positive\":", "");
                sentiment = sentiment.replace(",", ";");
                sentiment = sentiment.replace("\"", "");
                return sentiment;
            }else{
                return "NotAnalyzedSentiments";
            }
        } catch (Exception ex) {
            return "NotAnalyzedSentiments";
        }
    }
}
