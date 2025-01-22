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
    id("com.google.dagger.hilt.android") version "2.51" apply  false
    id("com.google.devtools.ksp") version "2.0.0-1.0.22" apply  false
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
    }
}

include(":app")
include(
    ":common:model"
)

include(
    ":core:data",
    ":core:domain",
    ":core:network:api"
)

