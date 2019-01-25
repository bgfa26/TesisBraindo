package com.app.braindo.braindo.controller.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
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
import com.app.braindo.braindo.common.entities.Test;
import com.app.braindo.braindo.model.RestCommunication;

import java.util.ArrayList;
import java.util.List;

import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/**
 * Created by LuisAlejandro on 30-10-2018.
 */

public class Test3Activity extends AppCompatActivity {
    private Test3Activity.SendTestTask testTask = null;
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Button testButton;
    private Test test;

    // UI references.
    private Spinner spTestOp31;
    private Spinner spTestOp32;
    private Spinner spTestOp33;
    private Spinner spTestOp34;
    private Spinner spTestOp35;
    private Spinner spTestOp36;
    private Spinner spTestOp37;
    private Spinner spTestOp38;
    private Spinner spTestOp39;
    private EditText etTestOp40;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    public static final String VALID_ANSWER_REGEX = "^((?=[A-Za-zñÑáéíóúÁÉÍÓÚ ])(?![_\\\\-]).)*$";

    public static boolean validateAnswer(String name) {
        return name.matches(VALID_ANSWER_REGEX);
    }

    private boolean addAnswers = true;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try {
            test = (Test) getIntent().getSerializableExtra("test");
            super.onCreate(savedInstanceState);
            CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                    .setDefaultFontPath("fonts/Raleway/Raleway-Regular.ttf")
                    .setFontAttrId(R.attr.fontPath)
                    .build()
            );
            setContentView(R.layout.activity_test3);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
            spTestOp31 = (Spinner) findViewById(R.id.spTestOp31);
            spTestOp32 = (Spinner) findViewById(R.id.spTestOp32);
            spTestOp33 = (Spinner) findViewById(R.id.spTestOp33);
            spTestOp34 = (Spinner) findViewById(R.id.spTestOp34);
            spTestOp35 = (Spinner) findViewById(R.id.spTestOp35);
            spTestOp36 = (Spinner) findViewById(R.id.spTestOp36);
            spTestOp37 = (Spinner) findViewById(R.id.spTestOp37);
            spTestOp38 = (Spinner) findViewById(R.id.spTestOp38);
            spTestOp39 = (Spinner) findViewById(R.id.spTestOp39);
            etTestOp40 = (EditText) findViewById(R.id.etTestOp40);

            testButton = (Button) findViewById(R.id.btnSend);

            testButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    attemptSendTest();
                }

            });

            Typeface ralewayBoldFont = Typeface.createFromAsset(getAssets(),"fonts/Raleway/Raleway-Bold.ttf");
            testButton.setTypeface(ralewayBoldFont);

        } catch (Exception ex) {
            ex.getStackTrace();
        }
    }


    private void attemptSendTest(){
        if (testTask != null) {
            return;
        }
        int answer31 = spTestOp31.getSelectedItemPosition() + 1;
        int answer32 = spTestOp32.getSelectedItemPosition() + 1;
        int answer33 = spTestOp33.getSelectedItemPosition() + 1;
        int answer34 = spTestOp34.getSelectedItemPosition() + 1;
        int answer35 = spTestOp35.getSelectedItemPosition() + 1;
        int answer36 = spTestOp36.getSelectedItemPosition() + 1;
        int answer37 = spTestOp37.getSelectedItemPosition() + 1;
        int answer38 = spTestOp38.getSelectedItemPosition() + 1;
        int answer39 = spTestOp39.getSelectedItemPosition() + 1;

        etTestOp40.setError(null);
        String respuesta40 = etTestOp40.getText().toString();
        boolean cancel = false;
        View focusView = null;
        if (TextUtils.isEmpty(respuesta40)) {
            etTestOp40.setError(getString(R.string.error_field_required));
            focusView = etTestOp40;
            cancel = true;

        }else if (!validateAnswer(respuesta40)) {
            etTestOp40.setError(getString(R.string.error_special_char));
            focusView = etTestOp40;
            cancel = true;

        }else if (respuesta40.startsWith(" ")) {
            etTestOp40.setError(getString(R.string.error_starts_with_space));
            focusView = etTestOp40;
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
            if (addAnswers) {
                test.addAnswer(answer31);
                test.addAnswer(answer32);
                test.addAnswer(answer33);
                test.addAnswer(answer34);
                test.addAnswer(answer35);
                test.addAnswer(answer36);
                test.addAnswer(answer37);
                test.addAnswer(answer38);
                test.addAnswer(answer39);
                test.setAnswer40(etTestOp40.getText().toString());
                addAnswers = false;
            }
            testTask = new Test3Activity.SendTestTask(test);
            testTask.execute((Void) null);
        }
    }

    public class SendTestTask extends AsyncTask<Void, Void, Boolean>{
        private final Test testToRegister;
        private Test response;

        SendTestTask(Test test) {
            testToRegister = test;
        }

        @Override
        protected Boolean doInBackground(Void... params) {
            // TODO: attempt authentication against a network service.

            try {
                RestCommunication con = new RestCommunication();
                response = con.callMethodTestRegistration(testToRegister);
                //response = testToRegister;
                return true;
            } catch (Exception e) {
                return false;
            }

        }

        @Override
        protected void onPostExecute(final Boolean success) {
            testTask = null;
           //showProgress(false);
            View focusView = null;

            if (success) {
                if (response.get_error() == 201){
                    Intent myintent = new Intent(Test3Activity.this, CloseActivity.class);
                    finish();
                    startActivity(myintent);
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
            testTask = null;
            //showProgress(false);
            Context context = getApplicationContext();
            CharSequence text = getString(R.string.operation_cancelled);
            int duration = Toast.LENGTH_SHORT;
            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        }
    }

}
