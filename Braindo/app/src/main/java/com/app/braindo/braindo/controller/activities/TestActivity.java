package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Patient;
import com.app.braindo.braindo.common.entities.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LuisAlejandro on 11-10-2018.
 */

public class TestActivity extends AppCompatActivity {
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Patient patient;
    private Button testButton;

    // UI references.
    private Spinner spTestOp1;
    private Spinner spTestOp2;
    private Spinner spTestOp3;
    private Spinner spTestOp4;
    private Spinner spTestOp5;
    private Spinner spTestOp6;
    private Spinner spTestOp7;
    private Spinner spTestOp8;
    private Spinner spTestOp9;
    private Spinner spTestOp10;
    private Spinner spTestOp11;
    private Spinner spTestOp12;
    private Spinner spTestOp13;
    private Spinner spTestOp14;
    private Spinner spTestOp15;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            patient = (Patient) getIntent().getSerializableExtra("patient");
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_test);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
            spTestOp1 = (Spinner) findViewById(R.id.spTestOp1);
            spTestOp2 = (Spinner) findViewById(R.id.spTestOp2);
            spTestOp3 = (Spinner) findViewById(R.id.spTestOp3);
            spTestOp4 = (Spinner) findViewById(R.id.spTestOp4);
            spTestOp5 = (Spinner) findViewById(R.id.spTestOp5);
            spTestOp6 = (Spinner) findViewById(R.id.spTestOp6);
            spTestOp7 = (Spinner) findViewById(R.id.spTestOp7);
            spTestOp8 = (Spinner) findViewById(R.id.spTestOp8);
            spTestOp9 = (Spinner) findViewById(R.id.spTestOp9);
            spTestOp10 = (Spinner) findViewById(R.id.spTestOp10);
            spTestOp11 = (Spinner) findViewById(R.id.spTestOp11);
            spTestOp12 = (Spinner) findViewById(R.id.spTestOp12);
            spTestOp13 = (Spinner) findViewById(R.id.spTestOp13);
            spTestOp14 = (Spinner) findViewById(R.id.spTestOp14);
            spTestOp15 = (Spinner) findViewById(R.id.spTestOp15);

            testButton = (Button) findViewById(R.id.btnContinue);

            testButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    moveToTest();
                }

            });

        }catch(Exception ex){
            ex.getStackTrace();
        }
    }
    private void moveToTest(){
        int answer1 = spTestOp1.getSelectedItemPosition() + 1;
        int answer2 = spTestOp2.getSelectedItemPosition() + 1;
        int answer3 = spTestOp3.getSelectedItemPosition() + 1;
        int answer4 = spTestOp4.getSelectedItemPosition() + 1;
        int answer5 = spTestOp5.getSelectedItemPosition() + 1;
        int answer6 = spTestOp6.getSelectedItemPosition() + 1;
        int answer7 = spTestOp7.getSelectedItemPosition() + 1;
        int answer8 = spTestOp8.getSelectedItemPosition() + 1;
        int answer9 = spTestOp9.getSelectedItemPosition() + 1;
        int answer10 = spTestOp10.getSelectedItemPosition() + 1;
        int answer11 = spTestOp11.getSelectedItemPosition() + 1;
        int answer12 = spTestOp12.getSelectedItemPosition() + 1;
        int answer13 = spTestOp13.getSelectedItemPosition() + 1;
        int answer14 = spTestOp14.getSelectedItemPosition() + 1;
        int answer15 = spTestOp15.getSelectedItemPosition() + 1;
        Test test = new Test(patient);
        test.addAnswer(answer1);
        test.addAnswer(answer2);
        test.addAnswer(answer3);
        test.addAnswer(answer4);
        test.addAnswer(answer5);
        test.addAnswer(answer6);
        test.addAnswer(answer7);
        test.addAnswer(answer8);
        test.addAnswer(answer9);
        test.addAnswer(answer10);
        test.addAnswer(answer11);
        test.addAnswer(answer12);
        test.addAnswer(answer13);
        test.addAnswer(answer14);
        test.addAnswer(answer15);
        Intent myintent = new Intent (TestActivity.this, Test2Activity.class);
        myintent.putExtra("test", test);
        finish();
        startActivity(myintent);
    }
}

