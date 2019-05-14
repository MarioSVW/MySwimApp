package com.example.myswimapp;

import android.content.Intent;
import android.graphics.Color;
import android.os.AsyncTask;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.LinearLayout;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class ShowActivity extends AppCompatActivity {
int User_id = 1;
String urlrequest = "http://192.168.0.27/Webservice/";
String finalrequest;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show);

        Toolbar myToolbar = (Toolbar) findViewById(R.id.my_toolbar);
        setSupportActionBar(myToolbar);

        // Get a support ActionBar corresponding to this toolbar
        ActionBar ab = getSupportActionBar();

        // Enable the Up button
        ab.setDisplayHomeAsUpEnabled(true);


        String urlrequestpartone = "index.php?activityid=";
        finalrequest = urlrequest + urlrequestpartone + User_id;
        getJSON(finalrequest);

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

    public void CreateActivityButtons (String json) throws JSONException {
        JSONArray jsonArray = new JSONArray(json);
        Integer[] Overview_id = new Integer[jsonArray.length()];
        String[] Overview_Bezeichnung = new String[jsonArray.length()];
        String [] Overview_Distanz = new String[jsonArray.length()];
        Integer Color_Counter = 1;

        for (int i = 0; i < jsonArray.length(); i++) {
            JSONObject obj = jsonArray.getJSONObject(i);
            Overview_id[i] = obj.getInt("id");
            Overview_Bezeichnung[i] = obj.getString("Bezeichnung");
            Overview_Distanz[i] = obj.getString("Distanz");
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT);
            Button btn = new Button(this);
            btn.setId(Overview_id[i]);
            params.setMargins(0,15,0,15);

            String ButtonText = Overview_id[i] + "   " + Overview_Bezeichnung[i] + "   Distance:  " + Overview_Distanz[i] + " Meter";
            btn.setText(ButtonText);

                switch (Color_Counter) {
                    case 1:

                        btn.setBackgroundColor(Color.rgb(232, 244, 133));
                        Color_Counter = Color_Counter + 1;
                        break;
                    case 2:
                        btn.setBackgroundColor(Color.rgb(20, 70, 140));
                        Color_Counter = Color_Counter + 1;
                        break;
                    case 3:
                        btn.setBackgroundColor(Color.rgb(112, 210, 140));
                        Color_Counter = 1;
                        break;
                }
            LinearLayout lclLayout = findViewById(R.id.linearlayout);
            lclLayout.addView(btn, params);
            }
        }



    private void getJSON(final String urlWebService) {
        //* Void -> We are not passing anything
        //* Void -> Nothing at progress update as well
        //* String -> After completion it should return a string and it will be the json string

        class GetJSON extends AsyncTask<Void, Void, String> {

            //this method will be called before execution(Maybe a Progress Bar)
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
            }

            //this method will be called after execution(Display The String after execution)
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                try {
                        CreateActivityButtons(s);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            //in this method we are fetching the json string
            @Override
            protected String doInBackground(Void... voids) {
                try {
                    //creating a URL (urlWebService = übergeben bei Parameter)
                    URL url = new URL(urlWebService);

                    //Opening the URL using HttpURLConnection
                    HttpURLConnection con = (HttpURLConnection) url.openConnection();

                    //StringBuilder object to read the string from the service
                    StringBuilder sb = new StringBuilder();

                    //We will use a buffered reader to read the string from service
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(con.getInputStream()));

                    //A simple string to read values from each line
                    String json;

                    //reading until we don't find null
                    while ((json = bufferedReader.readLine()) != null) {
                        //appending it to string builder
                        sb.append(json + "\n");
                    }

                    //finally returning the read string
                    return sb.toString().trim();
                } catch (Exception e) {
                    return null;
                }

            }
        }
        //creating asynctask object and executing it
        GetJSON getJSON = new GetJSON();
        getJSON.execute();
    }

}




