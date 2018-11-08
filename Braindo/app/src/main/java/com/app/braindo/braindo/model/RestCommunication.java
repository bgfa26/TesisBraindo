package com.app.braindo.braindo.model;

import com.app.braindo.braindo.common.entities.Pacient;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by LuisAlejandro on 07-11-2018.
 */

public class RestCommunication {
    private String ip = "192.168.0.109";
    private static HttpURLConnection conn;

    private BufferedReader communicate(String _requetMethod, String _restfulMethod) throws IOException {
        try {
            URL url = new URL("http://"+ip+":8084/BraindoWS/webresources/braindows/" + _restfulMethod);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod(_requetMethod);
            conn.setRequestProperty("Accept", "application/json");
            conn.setConnectTimeout(3000); //set timeout to 5 seconds

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));

            return br;
        }
        catch (Exception ex){
            throw ex;
        }
    }

    private BufferedReader communicateLocation(String _requetMethod, String _restfulMethod) throws IOException {
        try {
            URL url = new URL("http://"+ip+":8084/HeyDriverWS/webresources/heydriverws/" + _restfulMethod);
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod(_requetMethod);
            conn.setRequestProperty("Accept", "application/json");
            conn.setConnectTimeout(9000); //set timeout to 5 seconds

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));

            return br;
        }
        catch (Exception ex){
            throw ex;
        }
    }

    public Pacient callMethodPrueba() throws Exception {
        try {
            conn = null;
            BufferedReader br = communicate("GET", "prueba");
            String output;
            Pacient _pacient = new Pacient();
            while ((output = br.readLine()) != null) {
                Gson gson = new GsonBuilder().create();
                _pacient = gson.fromJson(output, Pacient.class);
            }
            conn.disconnect();
            return _pacient;
        }
        catch (Exception ex){
            throw ex;
        }
    }
}
