package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LuisAlejandro on 30-10-2018.
 */

public class Test3Activity extends AppCompatActivity {
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button testButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_test3);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
            testButton = (Button) findViewById(R.id.btnSend);

            testButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    moveToTest();
                }

            });

        } catch (Exception ex) {
            ex.getStackTrace();
        }
    }

    private void moveToTest(){
        Intent myintent = new Intent (Test3Activity.this, CloseActivity.class);
        finish();
        startActivity(myintent);
    }
}
