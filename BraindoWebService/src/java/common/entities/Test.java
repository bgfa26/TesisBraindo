/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common.entities;

import java.sql.Date;
import java.util.ArrayList;

public class Test {
    private ArrayList<Integer> answers;
    private String answer40;
    private Patient patient;
    private int _error;

    public Test(){}

    public Test(Patient _patient){
        set_answers();
        set_patient(_patient);
    }

    public ArrayList<Integer> get_answers() {
        return answers;
    }

    public void set_answers() {
        this.answers = new ArrayList<Integer>();
    }

    public Patient get_patient() {
        return patient;
    }

    public void set_patient(Patient patient) {
        this.patient = patient;
    }

    public void add_answer(int answer){
        answers.add(answer);
    }

    public String get_answer40() {
        return answer40;
    }

    public void set_answer40(String answer40) {
        this.answer40 = answer40;
    }
    
    public int get_error() {
        return _error;
    }

    public void set_error(int _error) {
        this._error = _error;
    }
}
