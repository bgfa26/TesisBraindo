/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;
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
                JSONObject jsonObject = new JSONObject(emotion);
                JSONObject emotionObj = (JSONObject) jsonObject.get("emotion");
                JSONObject emotionProbObj = (JSONObject) emotionObj.get("probabilities");
                String fear = String.valueOf(emotionProbObj.get("Fear"));
                String sad = String.valueOf(emotionProbObj.get("Sad"));
                String happy = String.valueOf(emotionProbObj.get("Happy"));
                String angry = String.valueOf(emotionProbObj.get("Angry"));
                String excited = String.valueOf(emotionProbObj.get("Excited"));
                String bored = String.valueOf(emotionProbObj.get("Bored"));
                String emotions = fear + ";" + sad + ";" + happy + ";" + angry + ";" + excited + ";" + bored;
                return emotions;
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
            if (sentiment.contains("200")){                
                JSONObject jsonObject = new JSONObject(sentiment);
                JSONObject sentimentProbObj = (JSONObject) jsonObject.get("probabilities");
                String negative = String.valueOf(sentimentProbObj.get("negative"));
                String neutral = String.valueOf(sentimentProbObj.get("neutral"));
                String positive = String.valueOf(sentimentProbObj.get("positive"));
                sentiment = sentiment.replace("},\"code\":200}", "");
                String sentiments = negative + ";" + neutral + ";" + positive;
                return sentiments;
            }else{
                return "NotAnalyzedSentiments";
            }
        } catch (Exception ex) {
            return "NotAnalyzedSentiments";
        }
    }
}
