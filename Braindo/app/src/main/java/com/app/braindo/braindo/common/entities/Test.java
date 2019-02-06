package com.app.braindo.braindo.common.entities;


import java.io.Serializable;
import java.util.ArrayList;

public class Test implements Serializable {
    private ArrayList<Integer> answers;
    private String answer40;
    private EncryptedPatient patient;
    private int _error;

    public Test(){}

    public Test(EncryptedPatient _patient){
        answers = new ArrayList<Integer>();
        setPatient(_patient);
    }

    public ArrayList<Integer> getAnswers() {
        return answers;
    }

    public EncryptedPatient getPatient() {
        return patient;
    }

    public void setPatient(EncryptedPatient patient) {
        this.patient = patient;
    }

    public void addAnswer(int answer){
        getAnswers().add(answer);
    }

    public String getAnswer40() {
        return answer40;
    }

    public void setAnswer40(String answer40) {
        this.answer40 = answer40;
    }

    public int get_error() {
        return _error;
    }

    public void set_error(int _error) {
        this._error = _error;
    }

    public void setAnswers(ArrayList<Integer> answers) {
        this.answers = answers;
    }
}
