package com.example.myswimapp;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.preference.PreferenceManager;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button Bt_ShowActivity;
    Button Bt_ShowRecords;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        PreferenceManager.setDefaultValues(this, R.xml.preferences, false);

        Bt_ShowActivity = findViewById(R.id.button);
        Bt_ShowActivity.setOnClickListener(OpenIntentShowActivity);

        Bt_ShowRecords = findViewById(R.id.button2);
        Bt_ShowRecords.setOnClickListener(OpenIntentShowRecords);

        Toolbar myToolbar = findViewById(R.id.my_toolbar);
        setSupportActionBar(myToolbar);

    // Save Settings in Toolbar
        SharedPreferences sharedPref =
                PreferenceManager.getDefaultSharedPreferences(this);
        sharedPref.getBoolean(SettingsActivity.KEY_PREF_50mCheckbox, false);
        sharedPref.getBoolean(SettingsActivity.KEY_PREF_25mCheckbox, false);

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_settings:
                Intent intent = new Intent(this, SettingsActivity.class);
                startActivity(intent);
                return true;

            default:
                // If we got here, the user's action was not recognized.
                // Invoke the superclass to handle it.
                return super.onOptionsItemSelected(item);

        }
    }

    View.OnClickListener OpenIntentShowActivity = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(MainActivity.this, ShowActivity.class);

            startActivity(intent);
        }
    };

    View.OnClickListener OpenIntentShowRecords = new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(MainActivity.this, ShowRecords.class);

            startActivity(intent);
        }
    };


}
