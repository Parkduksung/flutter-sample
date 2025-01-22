import com.example.flutter_sample.configureFlutterAndroid
import com.example.flutter_sample.configureHiltAndroid


plugins {
    id("com.android.application")
    id("kotlin-android")
}

configureHiltAndroid()
configureFlutterAndroid()