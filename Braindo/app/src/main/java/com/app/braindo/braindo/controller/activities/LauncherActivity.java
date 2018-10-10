package com.app.braindo.braindo.controller.activities;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.app.braindo.braindo.R;

import java.util.ArrayList;
import java.util.List;

public class LauncherActivity extends AppCompatActivity {

    public static List<Integer> itemPositionStacks = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launcher);
    }
}
