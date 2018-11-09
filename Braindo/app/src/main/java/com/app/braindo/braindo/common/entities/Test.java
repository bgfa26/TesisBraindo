package com.app.braindo.braindo.common.entities;


import java.util.ArrayList;

public class Test {
    private ArrayList<Integer> answers;
    private Patient patient;

    public Test(){}

    public Test(ArrayList<Integer> _answers, Patient _patient){
        setAnswers(_answers);
        setPatient(_patient);
    }

    public ArrayList<Integer> getAnswers() {
        return answers;
    }

    public void setAnswers(ArrayList<Integer> answers) {
        this.answers = answers;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
