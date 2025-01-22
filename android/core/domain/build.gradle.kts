plugins {
    id("flutter.android.library")
}

android {
    namespace = "flutter.sample.domain"
}
dependencies {
    implementation(project(":common:model"))
}
