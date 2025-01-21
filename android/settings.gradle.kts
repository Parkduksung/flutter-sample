pluginManagement {
    val flutterSdkPath: String = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use {
            properties.load(it)
        }
        val sdkPath = properties.getProperty("flutter.sdk")
        requireNotNull(sdkPath) { "flutter.sdk not set in local.properties" }
        sdkPath
    }

    includeBuild("build-logic")
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}


plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.7.3" apply false
    id("org.jetbrains.kotlin.android") version "2.0.0" apply false
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
    }
}

include(":app")