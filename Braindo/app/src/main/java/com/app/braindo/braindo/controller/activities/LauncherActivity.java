package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;

public class LauncherActivity extends AppCompatActivity {

    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launcher);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        new CountDownTimer(3000,1000){
            @Override
            public void onTick(long millisUntilFinished){}

            @Override
            public void onFinish(){
                //set the new Content of your activity
                    try {
                        final Intent myintent = new Intent(LauncherActivity.this, StartUpActivity.class);
                        boolean connected = false;
                        finish();
                        startActivity(myintent);
                    }catch(Exception ex){
                        ex.getStackTrace();
                    }
            }
        }.start();
    }
}
