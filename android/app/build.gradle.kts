plugins {
    id("flutter.android.application")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutter_sample"

    defaultConfig {
        targetSdk = flutter.targetSdkVersion
        versionCode = libs.versions.versionCode.get().toInt()
        versionName = libs.versions.versionName.get()
    }
    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    dependencies {
        implementation(project(":common:model"))
        implementation(project(":core:data"))
        implementation(project(":core:domain"))
    }
}

flutter {
    source = "../.."
}