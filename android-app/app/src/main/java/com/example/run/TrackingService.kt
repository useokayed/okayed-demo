package com.example.run

import android.app.Service
import com.google.android.gms.location.LocationServices

class TrackingService : Service() {
    private val locations by lazy { LocationServices.getFusedLocationProviderClient(this) }

    override fun onCreate() {
        startForeground(1, buildNotification())
        locations.requestLocationUpdates(runRequest(), callback, mainLooper)
    }
}
