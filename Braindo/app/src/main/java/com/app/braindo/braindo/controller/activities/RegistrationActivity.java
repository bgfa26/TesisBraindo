package com.app.braindo.braindo.controller.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Municipality;
import com.app.braindo.braindo.common.entities.Parish;
import com.app.braindo.braindo.common.entities.Patient;
import com.app.braindo.braindo.model.RestCommunication;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class RegistrationActivity extends AppCompatActivity{
    private RegistrationActivity.PatientSignUpTask authTask = null;
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button registrationButton;

    // UI references.
    private TextView tvRegistrationSubtittle1;
    private TextView tvRegistrationSubtittle2;
    private TextView tvRegistrationEmail;
    private TextView tvRegistrationCareer;
    private TextView tvRegistrationAge;
    private TextView tvRegistrationState;
    private TextView tvRegistrationMunicipality;
    private TextView tvRegistrationParish;
    private EditText etRegistrationID;
    private EditText etRegistrationFirstName;
    private EditText etRegistrationLastName;
    private Spinner spRegistrationCareer;
    private Spinner spRegistrationAge;
    private Spinner spRegistrationState;
    private Spinner spRegistrationMunicipality;
    private Spinner spRegistrationParish;
    private EditText etRegistrationEmail;

    @Override
    protected void attachBaseContext(Context newBase) {
         super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }


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
            CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                    .setDefaultFontPath("fonts/Raleway/Raleway-Regular.ttf")
                    .setFontAttrId(R.attr.fontPath)
                    .build()
            );
            setContentView(R.layout.activity_registration);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);

            // Set up the login form.
            tvRegistrationSubtittle1 = (TextView) findViewById(R.id.tvRegistrationSubtittle1);
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

            final Activity activity = this;

            spRegistrationState.setOnItemSelectedListener(new Spinner.OnItemSelectedListener() {
                @Override
                public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                    try {
                        String state = spRegistrationState.getSelectedItem().toString();
                        Municipality municipality = new Municipality();
                        ArrayList<String> munipalities = new ArrayList<String>();
                        if (state.equals("Distrito Capital")) {
                            munipalities = municipality.getMunicipalityDistritoCapital();
                        } else if (state.equals("Miranda")) {
                            munipalities = municipality.getMunicipalityMiranda();
                        } else if (state.equals("Vargas")) {
                            munipalities = municipality.getMunicipalityVargas();
                        }
                        String[] munipalitiesList = new String[munipalities.size()];
                        munipalitiesList = munipalities.toArray(munipalitiesList);
                        ArrayAdapter<CharSequence> adapter = new ArrayAdapter<CharSequence>(activity, android.R.layout.simple_spinner_item, munipalitiesList);
                        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        spRegistrationMunicipality.setAdapter(adapter);
                    } catch (Exception e){
                        e.printStackTrace();
                    }
                }

                @Override
                public void onNothingSelected(AdapterView<?> parent) {

                }
            });

            spRegistrationMunicipality.setOnItemSelectedListener(new Spinner.OnItemSelectedListener() {
                @Override
                public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                    try {
                        String munipality = spRegistrationMunicipality.getSelectedItem().toString();
                        Parish parish = new Parish();
                        ArrayList<String> parishes = new ArrayList<String>();
                        if (munipality.equals("Libertador")) {
                            parishes = parish.getParishLibertador();
                        } else if (munipality.equals("Vargas")) {
                            parishes = parish.getParishVargas();
                        } else if (munipality.equals("Acevedo")) {
                            parishes = parish.getParishAcevedo();
                        } else if (munipality.equals("Andrés Bello")) {
                            parishes = parish.getParishAndresBello();
                        } else if (munipality.equals("Baruta")) {
                            parishes = parish.getParishBaruta();
                        } else if (munipality.equals("Brión")) {
                            parishes = parish.getParishBrion();
                        } else if (munipality.equals("Buroz")) {
                            parishes = parish.getParishBuroz();
                        } else if (munipality.equals("Carrizal")) {
                            parishes = parish.getParishCarrizal();
                        } else if (munipality.equals("Chacao")) {
                            parishes = parish.getParishChacao();
                        } else if (munipality.equals("Cristóbal Rojas")) {
                            parishes = parish.getParishCristobalRojas();
                        } else if (munipality.equals("El Hatillo")) {
                            parishes = parish.getParishElHatillo();
                        } else if (munipality.equals("Guaicaipuro")) {
                            parishes = parish.getParishGuaicaipuro();
                        } else if (munipality.equals("Independencia")) {
                            parishes = parish.getParishIndependencia();
                        } else if (munipality.equals("Los Salias")) {
                            parishes = parish.getParishLosSalias();
                        } else if (munipality.equals("Paez")) {
                            parishes = parish.getParishPaez();
                        } else if (munipality.equals("Paz Castillo")) {
                            parishes = parish.getParishPazCastillo();
                        } else if (munipality.equals("Pedro Gual")) {
                            parishes = parish.getParishPedroGual();
                        } else if (munipality.equals("Plaza")) {
                            parishes = parish.getParishPlaza();
                        } else if (munipality.equals("Simón Bolívar")) {
                            parishes = parish.getParishSimonBolivar();
                        } else if (munipality.equals("Sucre")) {
                            parishes = parish.getParishSucre();
                        } else if (munipality.equals("Tomás Lander")) {
                            parishes = parish.getParishTomasLander();
                        } else if (munipality.equals("Urdaneta")) {
                            parishes = parish.getParishUrdaneta();
                        }else if (munipality.equals("Zamora")) {
                            parishes = parish.getParishZamora();
                        }

                        String[] parishesList = new String[parishes.size()];
                        parishesList = parishes.toArray(parishesList);
                        ArrayAdapter<CharSequence> adapter = new ArrayAdapter<CharSequence>(activity, android.R.layout.simple_spinner_item, parishesList);
                        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                        spRegistrationParish.setAdapter(adapter);
                    } catch (Exception e){
                        e.printStackTrace();
                    }
                }

                @Override
                public void onNothingSelected(AdapterView<?> parent) {

                }
            });
            Typeface ralewayBoldFont = Typeface.createFromAsset(getAssets(),"fonts/Raleway/Raleway-Bold.ttf");
            registrationButton.setTypeface(ralewayBoldFont);


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
            String municipality = spRegistrationMunicipality.getSelectedItem().toString();
            String parish = spRegistrationParish.getSelectedItem().toString();
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
            patientToRegister = new Patient(Integer.valueOf(id), firstname, lastname, Integer.valueOf(age), career, state, municipality, parish, email);
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.

            try {
                RestCommunication con = new RestCommunication();
                response = con.callMethodPatientRegistration(patientToRegister);
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
                if (response.get_error() == 201){
                    Intent myintent = new Intent(RegistrationActivity.this, TestActivity.class);
                    finish();
                    myintent.putExtra("patient", response);
                    startActivity(myintent);
                    Context context = getApplicationContext();
                }else if(response.get_error() == 500){
                    etRegistrationID.setError(getString(R.string.error_id_registered));
                    focusView = etRegistrationID;
                    focusView.requestFocus();
                }else if(response.get_error() == 300){
                    etRegistrationEmail.setError(getString(R.string.error_not_registered_email));
                    focusView = etRegistrationEmail;
                    focusView.requestFocus();
                }else {
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
