package com.stumagz.rock_paper_scissor

import android.os.Bundle
import com.google.firebase.FirebaseApp
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    FirebaseApp.initializeApp(this.applicationContext)
    GeneratedPluginRegistrant.registerWith(this)
  }
}
