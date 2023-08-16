package com.assembledemo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.assembledemo.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'assembledemo' library on application startup.
    static {
        System.loadLibrary("assembledemo");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        // Example of a call to a native method
        TextView tv = binding.sampleText;
        tv.setText(stringFromJNI());

        binding.btnStringPointerArray.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.i("MainActivity", "onClick: bindStringPointerArray start");
                try {
                    bindStringPointerArray();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Log.i("MainActivity", "onClick: bindStringPointerArray end");
            }
        });
    }

    /**
     * A native method that is implemented by the 'assembledemo' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();
    public native void  bindStringPointerArray();
}