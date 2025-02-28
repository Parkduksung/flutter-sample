plugins {
    id("flutter.android.library")
    id("flutter.sample.hilt")
    id("org.jetbrains.kotlin.plugin.serialization")
}

android {
    namespace = "flutter.sample.api"
}

dependencies {
    implementation(project(":common:model"))

    implementation(libs.retrofit)
    implementation(libs.retrofit.serialization)
    implementation(libs.kotlin.serialization)
}
