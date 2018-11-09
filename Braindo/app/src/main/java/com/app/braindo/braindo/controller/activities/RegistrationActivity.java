package com.app.braindo.braindo.controller.activities;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class RegistrationActivity extends AppCompatActivity{
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button registrationButton;

    // UI references.
    private EditText etRegistrationID;
    private EditText etRegistrationFirstName;
    private EditText etRegistrationLastName;
    private Spinner spRegistrationCareer;
    private Spinner spRegistrationAge;
    private Spinner spRegistrationState;
    private Spinner spRegistrationMunicipality;
    private Spinner spRegistrationParish;
    private EditText etRegistrationEmail;


    public static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static final String VALID_NAME_REGEX = "^((?=[A-Za-z0-9ñÑáéíóúÁÉÍÓÚ ])(?![_\\\\-]).)*$";

    public static boolean validateEmail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
        return matcher.find();
    }

    public static boolean validateName(String name) {
        return name.matches(VALID_NAME_REGEX);
    }

    @Override
    public void onBackPressed() {
        Intent myintent = new Intent(RegistrationActivity.this, StartUpActivity.class);
        finish();
        startActivity(myintent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_registration);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);

            // Set up the login form.
            etRegistrationID = (EditText) findViewById(R.id.etRegistrationID);
            etRegistrationFirstName = (EditText) findViewById(R.id.etRegistrationFirstName);
            etRegistrationLastName = (EditText) findViewById(R.id.etRegistrationLastName);
            spRegistrationCareer = (Spinner) findViewById(R.id.spRegistrationCareer);
            spRegistrationAge = (Spinner) findViewById(R.id.spRegistrationAge);
            spRegistrationCareer = (Spinner) findViewById(R.id.spRegistrationCareer);
            spRegistrationState = (Spinner) findViewById(R.id.spRegistrationState);
            spRegistrationMunicipality = (Spinner) findViewById(R.id.spRegistrationMunicipality);
            spRegistrationParish = (Spinner) findViewById(R.id.spRegistrationParish);
            registrationButton = (Button) findViewById(R.id.btnRegistration);

            registrationButton.setOnClickListener(new View.OnClickListener() {
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
        Intent myintent = new Intent (RegistrationActivity.this, TestActivity.class);
        finish();
        startActivity(myintent);
    }

}
