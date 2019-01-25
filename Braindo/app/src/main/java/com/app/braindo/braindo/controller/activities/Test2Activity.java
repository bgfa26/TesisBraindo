package com.app.braindo.braindo.controller.activities;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;

import com.app.braindo.braindo.R;
import com.app.braindo.braindo.common.entities.Patient;
import com.app.braindo.braindo.common.entities.Test;

import java.util.ArrayList;
import java.util.List;

import uk.co.chrisjenx.calligraphy.CalligraphyConfig;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/**
 * Created by LuisAlejandro on 29-10-2018.
 */

public class Test2Activity extends AppCompatActivity {
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";
    private Patient patient;
    private Button testButton;
    private Test test;

    // UI references.
    private Spinner spTestOp16;
    private Spinner spTestOp17;
    private Spinner spTestOp18;
    private Spinner spTestOp19;
    private Spinner spTestOp20;
    private Spinner spTestOp21;
    private Spinner spTestOp22;
    private Spinner spTestOp23;
    private Spinner spTestOp24;
    private Spinner spTestOp25;
    private Spinner spTestOp26;
    private Spinner spTestOp27;
    private Spinner spTestOp28;
    private Spinner spTestOp29;
    private Spinner spTestOp30;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            test = (Test) getIntent().getSerializableExtra("test");
            super.onCreate(savedInstanceState);
            CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                    .setDefaultFontPath("fonts/Raleway/Raleway-Regular.ttf")
                    .setFontAttrId(R.attr.fontPath)
                    .build()
            );
            setContentView(R.layout.activity_test2);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
            spTestOp16 = (Spinner) findViewById(R.id.spTestOp16);
            spTestOp17 = (Spinner) findViewById(R.id.spTestOp17);
            spTestOp18 = (Spinner) findViewById(R.id.spTestOp18);
            spTestOp19 = (Spinner) findViewById(R.id.spTestOp19);
            spTestOp20 = (Spinner) findViewById(R.id.spTestOp20);
            spTestOp21 = (Spinner) findViewById(R.id.spTestOp21);
            spTestOp22 = (Spinner) findViewById(R.id.spTestOp22);
            spTestOp23 = (Spinner) findViewById(R.id.spTestOp23);
            spTestOp24 = (Spinner) findViewById(R.id.spTestOp24);
            spTestOp25 = (Spinner) findViewById(R.id.spTestOp25);
            spTestOp26 = (Spinner) findViewById(R.id.spTestOp26);
            spTestOp27 = (Spinner) findViewById(R.id.spTestOp27);
            spTestOp28 = (Spinner) findViewById(R.id.spTestOp28);
            spTestOp29 = (Spinner) findViewById(R.id.spTestOp29);
            spTestOp30 = (Spinner) findViewById(R.id.spTestOp30);

            testButton = (Button) findViewById(R.id.btnContinue2);

            testButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    moveToTest();
                }

            });

            Typeface ralewayBoldFont = Typeface.createFromAsset(getAssets(),"fonts/Raleway/Raleway-Bold.ttf");
            testButton.setTypeface(ralewayBoldFont);

        }catch(Exception ex){
            ex.getStackTrace();
        }
    }
    private void moveToTest(){
        int answer16 = spTestOp16.getSelectedItemPosition() + 1;
        int answer17 = spTestOp17.getSelectedItemPosition() + 1;
        int answer18 = spTestOp18.getSelectedItemPosition() + 1;
        int answer19 = spTestOp19.getSelectedItemPosition() + 1;
        int answer20 = spTestOp20.getSelectedItemPosition() + 1;
        int answer21 = spTestOp21.getSelectedItemPosition() + 1;
        int answer22 = spTestOp22.getSelectedItemPosition() + 1;
        int answer23 = spTestOp23.getSelectedItemPosition() + 1;
        int answer24 = spTestOp24.getSelectedItemPosition() + 1;
        int answer25 = spTestOp25.getSelectedItemPosition() + 1;
        int answer26 = spTestOp26.getSelectedItemPosition() + 1;
        int answer27 = spTestOp27.getSelectedItemPosition() + 1;
        int answer28 = spTestOp28.getSelectedItemPosition() + 1;
        int answer29 = spTestOp29.getSelectedItemPosition() + 1;
        int answer30 = spTestOp30.getSelectedItemPosition() + 1;

        test.addAnswer(answer16);
        test.addAnswer(answer17);
        test.addAnswer(answer18);
        test.addAnswer(answer19);
        test.addAnswer(answer20);
        test.addAnswer(answer21);
        test.addAnswer(answer22);
        test.addAnswer(answer23);
        test.addAnswer(answer24);
        test.addAnswer(answer25);
        test.addAnswer(answer26);
        test.addAnswer(answer27);
        test.addAnswer(answer28);
        test.addAnswer(answer29);
        test.addAnswer(answer30);
        Intent myintent = new Intent (Test2Activity.this, Test3Activity.class);
        myintent.putExtra("test", test);
        finish();
        startActivity(myintent);
    }
}
