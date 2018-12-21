package com.app.braindo.braindo.model;

import com.app.braindo.braindo.common.entities.Patient;
import com.app.braindo.braindo.common.entities.Test;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;


public class RestCommunication {
    private String ip = "192.168.0.110";
    private static HttpURLConnection conn;

    private BufferedReader communicate(String _requetMethod, String _restfulMethod) throws IOException {
        try {
            URL url = new URL("http://"+ip+":8085/BraindoWebService/webresources/braindo/" + _restfulMethod);
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

    public Patient callMethodPrueba() throws Exception {
        try {
            conn = null;
            BufferedReader br = communicate("GET", "prueba");
            String output;
            Patient _patient = new Patient();
            while ((output = br.readLine()) != null) {
                Gson gson = new GsonBuilder().create();
                _patient = gson.fromJson(output, Patient.class);
            }
            conn.disconnect();
            return _patient;
        }
        catch (Exception ex){
            throw ex;
        }
    }

    public Patient callMethodPatientRegistration(Patient p) throws Exception {
        try {
            conn = null;
            Gson gson = new GsonBuilder().create();
            BufferedReader br = communicate("GET", "patientRegistration?patient=" + URLEncoder.encode(gson.toJson( p ).toString(), "UTF-8"));
            String output;
            Patient _patient = new Patient();
            while ((output = br.readLine()) != null) {
                _patient = gson.fromJson(output, Patient.class);
            }
            conn.disconnect();
            return _patient;
        }
        catch (Exception ex){
            throw ex;
        }
    }

    public Test callMethodTestRegistration(Test t) throws Exception {
        try {
            conn = null;
            Gson gson = new GsonBuilder().create();
            BufferedReader br = communicate("GET", "testRegistration?test=" + URLEncoder.encode(gson.toJson( t ).toString(), "UTF-8"));
            String output;
            Test _test = new Test();
            while ((output = br.readLine()) != null) {
                _test = gson.fromJson(output, Test.class);
            }
            conn.disconnect();
            return _test;
        }
        catch (Exception ex){
            throw ex;
        }
    }

    public Patient callMethodPatientLogin(Patient p) throws Exception {
        try {
            conn = null;
            Gson gson = new GsonBuilder().create();
            BufferedReader br = communicate("GET", "patientValidation?patient=" + URLEncoder.encode(gson.toJson( p ).toString(), "UTF-8"));
            String output;
            Patient _patient = new Patient();
            while ((output = br.readLine()) != null) {
                _patient = gson.fromJson(output, Patient.class);
            }
            conn.disconnect();
            return _patient;
        }
        catch (Exception ex){
            throw ex;
        }
    }
}
