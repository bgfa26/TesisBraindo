package com.app.braindo.braindo.controller.activities;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Patient;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class RegistrationActivity extends AppCompatActivity{
    private RegistrationActivity.PatientSignUpTask authTask = null;
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

    public static final String VALID_NAME_REGEX = "^((?=[A-Za-zñÑáéíóúÁÉÍÓÚ ])(?![_\\\\-]).)*$";

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
            spRegistrationState = (Spinner) findViewById(R.id.spRegistrationState);
            spRegistrationMunicipality = (Spinner) findViewById(R.id.spRegistrationMunicipality);
            spRegistrationParish = (Spinner) findViewById(R.id.spRegistrationParish);
            etRegistrationEmail = (EditText) findViewById(R.id.etRegistrationEmail);
            registrationButton = (Button) findViewById(R.id.btnRegistration);

            registrationButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    attemptSignUp();
                }

            });

        }catch(Exception ex){
            ex.getStackTrace();
        }
    }

    private void attemptSignUp() {
        if (authTask != null) {
            return;
        }

        // Reset errors.
        etRegistrationID.setError(null);
        etRegistrationFirstName.setError(null);
        etRegistrationLastName.setError(null);
        etRegistrationEmail.setError(null);

        // Store values at the time of the sign up attempt.
        String id = etRegistrationID.getText().toString();
        String firstname = etRegistrationFirstName.getText().toString();
        String lastname = etRegistrationLastName.getText().toString();
        String email = etRegistrationEmail.getText().toString();
        String career = spRegistrationCareer.getSelectedItem().toString();
        String age = spRegistrationAge.getSelectedItem().toString();



        boolean cancel = false;
        View focusView = null;

        try {
            int patientID = Integer.valueOf(etRegistrationID.getText().toString());

            if (TextUtils.isEmpty(id)) {
                etRegistrationID.setError(getString(R.string.error_field_required));
                focusView = etRegistrationID;
                cancel = true;
            }
        }catch (Exception e){
            etRegistrationID.setError(getString(R.string.error_special_char));
            focusView = etRegistrationID;
            cancel = true;
        }

        // Check for a valid name
        if (TextUtils.isEmpty(firstname)) {
            etRegistrationFirstName.setError(getString(R.string.error_field_required));
            focusView = etRegistrationFirstName;
            cancel = true;

        }else if (!validateName(firstname)) {
            etRegistrationFirstName.setError(getString(R.string.error_special_char));
            focusView = etRegistrationFirstName;
            cancel = true;

        }else if (firstname.startsWith(" ")) {
            etRegistrationFirstName.setError(getString(R.string.error_starts_with_space));
            focusView = etRegistrationFirstName;
            cancel = true;
        }

        if (TextUtils.isEmpty(lastname)) {
            etRegistrationLastName.setError(getString(R.string.error_field_required));
            focusView = etRegistrationLastName;
            cancel = true;

        }else if (!validateName(lastname)) {
            etRegistrationLastName.setError(getString(R.string.error_special_char));
            focusView = etRegistrationLastName;
            cancel = true;

        }else if (lastname.startsWith(" ")) {
            etRegistrationLastName.setError(getString(R.string.error_starts_with_space));
            focusView = etRegistrationLastName;
            cancel = true;
        }

        // Check for a valid email address.
        if (TextUtils.isEmpty(email)) {
            etRegistrationEmail.setError(getString(R.string.error_field_required));
            focusView = etRegistrationEmail;
            cancel = true;
        } else if (!isEmailValid(email)) {
            etRegistrationEmail.setError(getString(R.string.error_invalid_email));
            focusView = etRegistrationEmail;
            cancel = true;
        }

        if (cancel) {
            // There was an error; don't attempt login and focus the first
            // form field with an error.
            focusView.requestFocus();
        } else {
            // Show a progress spinner, and kick off a background task to
            // perform the user login attempt.
            //showProgress(true);
            String state = spRegistrationState.getSelectedItem().toString();
            /*String municipality = spRegistrationMunicipality.getSelectedItem().toString();
            String parish = spRegistrationParish.getSelectedItem().toString();*/
            String municipality = "municipio";
            String parish = "parroquia";
            authTask = new RegistrationActivity.PatientSignUpTask(id, firstname, lastname, age, career, state, municipality, parish, email);
            authTask.execute((Void) null);
        }
    }

    private boolean isEmailValid(String email) {
        return validateEmail(email);
    }

    public class PatientSignUpTask extends AsyncTask<Void, Void, Boolean> {
        private final Patient patientToRegister;
        private Patient response;

        PatientSignUpTask(String id, String firstname, String lastname, String age, String career, String state, String municipality, String parish, String email) {
            patientToRegister = new Patient(id, firstname, lastname, Integer.valueOf(age), career, state, municipality, parish, email);
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.

            try {
                /*RestCommunication con = new RestCommunication();
                response = con.callMethodPatientRegistration(patientToRegister);*/
                response = patientToRegister;
                return true;
            } catch (Exception e) {
                return false;
            }

        }

        @Override
        protected void onPostExecute(final Boolean success) {
            authTask = null;
            //showProgress(false);
            View focusView = null;

            if (success) {
                finish();
                if (!response.get_id().equals("duplicated")){
                    Intent myintent = new Intent(RegistrationActivity.this, TestActivity.class);
                    finish();
                    myintent.putExtra("patient", response);
                    startActivity(myintent);
                    Context context = getApplicationContext();
                }else if((!response.get_id().equals("duplicated"))){
                    etRegistrationID.setError(getString(R.string.error_id_registered));
                    focusView = etRegistrationID;
                    focusView.requestFocus();
                }else if (response.get_error() == 500){
                    Context context = getApplicationContext();
                    CharSequence text = getString(R.string.error_bad_communication);
                    int duration = Toast.LENGTH_SHORT;
                    Toast toast = Toast.makeText(context, text, duration);
                    toast.show();
                }

            } else {
                Context context = getApplicationContext();
                CharSequence text = getString(R.string.error_bad_communication);
                int duration = Toast.LENGTH_SHORT;
                Toast toast = Toast.makeText(context, text, duration);
                toast.show();
            }
        }

        @Override
        protected void onCancelled() {
            authTask = null;
            //showProgress(false);
            Context context = getApplicationContext();
            CharSequence text = getString(R.string.operation_cancelled);
            int duration = Toast.LENGTH_SHORT;
            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
    }

    private void moveToTest(){
        Intent myintent = new Intent (RegistrationActivity.this, TestActivity.class);
        finish();
        startActivity(myintent);
    }

}
