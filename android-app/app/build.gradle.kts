plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.example.run"
    compileSdk = 36
    defaultConfig {
        applicationId = "com.example.run"
        minSdk = 26
        targetSdk = 36
        versionCode = 12
        versionName = "3.1.0"
    }
}

dependencies {
    implementation("com.android.billingclient:billing-ktx:8.0.0")
    implementation("com.google.firebase:firebase-crashlytics:19.4.0")
}
