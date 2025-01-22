package com.example.flutter_sample

import org.gradle.api.JavaVersion
import org.gradle.api.Project
import org.gradle.kotlin.dsl.dependencies
import org.gradle.kotlin.dsl.withType
import org.jetbrains.kotlin.gradle.dsl.JvmTarget
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile


internal fun Project.configureFlutterAndroid() {

    pluginManager.apply("org.jetbrains.kotlin.android")

    androidExtension.apply {

        compileSdk = Versions.compileSdk
        ndkVersion = Versions.ndkVersion

        compileOptions {
            sourceCompatibility = JavaVersion.VERSION_17
            targetCompatibility = JavaVersion.VERSION_17
        }

        defaultConfig {
            minSdk = Versions.minSdk
        }
    }

    tasks.withType<KotlinCompile>().configureEach {
        compilerOptions {
            jvmTarget.set(JvmTarget.JVM_17)
        }
    }

    val libs = extensions.libs
    dependencies {
        add("coreLibraryDesugaring", libs.findLibrary("android.desugar.jdk").get())
    }
}