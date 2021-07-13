package com.example.flutter_examples

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun OnCreate(savedInstanceState: Bundle?){
        super.OnCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        this.getWindow().SetStatusBarColor(android.graphics.Color.TRANSPARENT);
    }
}
