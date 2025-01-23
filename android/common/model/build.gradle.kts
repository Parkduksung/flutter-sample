plugins {
    id("flutter.android.library")
    id("flutter.sample.hilt")
    id("org.jetbrains.kotlin.plugin.serialization")
}

android {
    namespace = "flutter.sample.model"
}


dependencies {
    implementation(libs.retrofit.serialization)
}