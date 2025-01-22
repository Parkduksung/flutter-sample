plugins {
    id("flutter.android.library")
    id("flutter.sample.hilt")
}

android {
    namespace = "flutter.sample.data"
}

dependencies {
    implementation(project(":common:model"))
    implementation(project(":core:network:api"))
}
