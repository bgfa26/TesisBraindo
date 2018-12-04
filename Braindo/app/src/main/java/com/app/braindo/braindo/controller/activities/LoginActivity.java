package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.app.braindo.braindo.R;

public class LoginActivity extends AppCompatActivity {

    @Override
    public void onBackPressed() {
        Intent myintent = new Intent(LoginActivity.this, StartUpActivity.class);
        finish();
        startActivity(myintent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_login);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
