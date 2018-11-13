package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Patient;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LuisAlejandro on 11-10-2018.
 */

public class TestActivity extends AppCompatActivity {
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button testButton;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            Patient patient = (Patient) getIntent().getSerializableExtra("patient");
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_test);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
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
        Intent myintent = new Intent (TestActivity.this, Test2Activity.class);
        finish();
        startActivity(myintent);
    }
}

