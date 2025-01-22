
plugins {
    `kotlin-dsl`
    `kotlin-dsl-precompiled-script-plugins`
}

group = "flutter.sample.buildlogic"

java {
    sourceCompatibility = JavaVersion.VERSION_21
    targetCompatibility = JavaVersion.VERSION_21
}


dependencies {
    implementation(libs.android.gradlePlugin)
    implementation(libs.kotlin.gradlePlugin)
    implementation(libs.ksp.gradlePlugin)
}

gradlePlugin {
    plugins {
        register("androidHilt") {
            id = "flutter.sample.hilt"
            implementationClass = "com.example.flutter_sample.HiltAndroidPlugin"
        }
    }
}
