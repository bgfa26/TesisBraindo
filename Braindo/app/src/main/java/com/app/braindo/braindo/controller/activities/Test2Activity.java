package com.app.braindo.braindo.controller.activities;

import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LuisAlejandro on 29-10-2018.
 */

public class Test2Activity extends AppCompatActivity {
    public static List<Integer> itemPositionStacks = new ArrayList<>();
    public TextView status_message;
    static String str_result = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try{
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_test2);
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);

        }catch(Exception ex){
            ex.getStackTrace();
        }
    }
}
