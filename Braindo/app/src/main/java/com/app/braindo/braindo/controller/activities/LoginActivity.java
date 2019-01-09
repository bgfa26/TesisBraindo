package com.app.braindo.braindo.controller.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Patient;
import com.app.braindo.braindo.model.RestCommunication;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LoginActivity extends AppCompatActivity {
    private LoginActivity.PatientLoginTask logTask = null;

    // UI references.
    private EditText etLoginID;
    private EditText etLoginEmail;
    private Button btnLogin;

    private View progressView;
    private View loginFormView;

    public static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validateEmail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }

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

            // Set up the login form.
            etLoginID = (EditText) findViewById(R.id.etLoginID);
            etLoginEmail = (EditText) findViewById(R.id.etLoginEmail);
            btnLogin = (Button) findViewById(R.id.btnLogin);
            loginFormView = findViewById(R.id.login_form);
            progressView = findViewById(R.id.login_progress);

            btnLogin.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    attemptSignUp();
                }

            });

            final Activity activity = this;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Shows the progress UI and hides the login form.
     */
    @TargetApi(Build.VERSION_CODES.HONEYCOMB_MR2)
    private void showProgress(final boolean show) {
        // On Honeycomb MR2 we have the ViewPropertyAnimator APIs, which allow
        // for very easy animations. If available, use these APIs to fade-in
        // the progress spinner.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB_MR2) {
            int shortAnimTime = getResources().getInteger(android.R.integer.config_shortAnimTime);

            loginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
            loginFormView.animate().setDuration(shortAnimTime).alpha(
                    show ? 0 : 1).setListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation) {
                    loginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
                }
            });

            progressView.setVisibility(show ? View.VISIBLE : View.GONE);
            progressView.animate().setDuration(shortAnimTime).alpha(
                    show ? 1 : 0).setListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation) {
                    progressView.setVisibility(show ? View.VISIBLE : View.GONE);
                }
            });
        } else {
            // The ViewPropertyAnimator APIs are not available, so simply show
            // and hide the relevant UI components.
            progressView.setVisibility(show ? View.VISIBLE : View.GONE);
            loginFormView.setVisibility(show ? View.GONE : View.VISIBLE);
        }
    }

    private void attemptSignUp() {
        if (logTask != null) {
            return;
        }

        // Reset errors.
        etLoginID.setError(null);
        etLoginEmail.setError(null);

        // Store values at the time of the login attempt.
        String id = etLoginID.getText().toString();
        String email = etLoginEmail.getText().toString();

        boolean cancel = false;
        View focusView = null;

        try {
            int patientID = Integer.valueOf(etLoginID.getText().toString());

            if (TextUtils.isEmpty(id)) {
                etLoginID.setError(getString(R.string.error_field_required));
                focusView = etLoginID;
                cancel = true;
            }
        }catch (Exception e){
            etLoginID.setError(getString(R.string.error_special_char));
            focusView = etLoginID;
            cancel = true;
        }

        // Check for a valid email address.
        if (TextUtils.isEmpty(email)) {
            etLoginEmail.setError(getString(R.string.error_field_required));
            focusView = etLoginEmail;
            cancel = true;
        } else if (!isEmailValid(email)) {
            etLoginEmail.setError(getString(R.string.error_invalid_email));
            focusView = etLoginEmail;
            cancel = true;
        }

        if (cancel) {
            // There was an error; don't attempt login and focus the first
            // form field with an error.
            focusView.requestFocus();
        } else {
            // Show a progress spinner, and kick off a background task to
            // perform the user login attempt.
            showProgress(true);
            logTask = new LoginActivity.PatientLoginTask(id, email);
            logTask.execute((Void) null);
        }
    }

    private boolean isEmailValid(String email) {
        return validateEmail(email);
    }

    public class PatientLoginTask extends AsyncTask<Void, Void, Boolean> {
        private final Patient patientToLogin;
        private Patient response;

        PatientLoginTask(String id, String email) {
            patientToLogin = new Patient(Integer.valueOf(id), email);
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.

            try {
                RestCommunication con = new RestCommunication();
                response = con.callMethodPatientLogin(patientToLogin);
                //response = patientToRegister;
                return true;
            } catch (Exception e) {
                return false;
            }

        }

        @Override
        protected void onPostExecute(final Boolean success) {
            logTask = null;
            showProgress(false);
            View focusView = null;

            if (success) {
                if (response.get_error() == 200){
                    Intent myintent = new Intent(LoginActivity.this, TestActivity.class);
                    finish();
                    myintent.putExtra("patient", response);
                    startActivity(myintent);
                    Context context = getApplicationContext();
                }else if(response.get_error() == 400){
                    etLoginID.setError(getString(R.string.error_id_not_registered));
                    focusView = etLoginID;
                    focusView.requestFocus();
                }else if(response.get_error() == 300){
                    etLoginEmail.setError(getString(R.string.error_invalid_email));
                    focusView = etLoginEmail;
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
            logTask = null;
            showProgress(false);
            Context context = getApplicationContext();
            CharSequence text = getString(R.string.operation_cancelled);
            int duration = Toast.LENGTH_SHORT;
            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
    }

    private void moveToTest(){
        Intent myintent = new Intent (LoginActivity.this, TestActivity.class);
        finish();
        startActivity(myintent);
    }
}
