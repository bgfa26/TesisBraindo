package com.app.braindo.braindo.controller.activities;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;

import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/**
 * Created by LuisAlejandro on 10-10-2018.
 */

public class StartUpActivity extends AppCompatActivity {

    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button registrationButton;
    private Button loginButton;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            super.onCreate(savedInstanceState);
            CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                    .setDefaultFontPath("fonts/Raleway/Raleway-Regular.ttf")
                    .setFontAttrId(R.attr.fontPath)
                    .build()
            );
            setContentView(R.layout.activity_startup);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
            registrationButton = (Button) findViewById(R.id.btnRegistry);

            registrationButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    moveToRegistration();
                }
            });

            loginButton = (Button) findViewById(R.id.btnLogin);

            loginButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    moveToLogin();
                }
            });
            Typeface ralewayBoldFont = Typeface.createFromAsset(getAssets(),"fonts/Raleway/Raleway-Bold.ttf");
            registrationButton.setTypeface(ralewayBoldFont);
            loginButton.setTypeface(ralewayBoldFont);

        }catch(Exception ex){
            ex.getStackTrace();
        }

    }

    private void moveToRegistration() {
        Intent myintent = new Intent(StartUpActivity.this, RegistrationActivity.class);
        finish();
        startActivity(myintent);
    }

    private void moveToLogin() {
            Intent myintent = new Intent(StartUpActivity.this, LoginActivity.class);
            finish();
            startActivity(myintent);
    }
}
