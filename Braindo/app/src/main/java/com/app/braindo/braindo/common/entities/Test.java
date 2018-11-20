package com.app.braindo.braindo.common.entities;


import java.io.Serializable;
import java.util.ArrayList;

public class Test implements Serializable {
    private ArrayList<Integer> answers;
    private Patient patient;

    public Test(){}

    public Test(Patient _patient){
        setAnswers();
        setPatient(_patient);
    }

    public ArrayList<Integer> getAnswers() {
        return answers;
    }

    public void setAnswers() {
        this.answers = new ArrayList<Integer>();
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public void addAnswer(int answer){
        answers.add(answer);
    }
}

