package com.example.myswimapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class SettingsActivity extends AppCompatActivity {
    public static final String
            KEY_PREF_50mCheckbox = "Checkbox_50m";
    public static final String
            KEY_PREF_25mCheckbox = "Checkbox_25m";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportFragmentManager().beginTransaction()
                .replace(android.R.id.content, new SettingsFragment())
                .commit();
    }
}
