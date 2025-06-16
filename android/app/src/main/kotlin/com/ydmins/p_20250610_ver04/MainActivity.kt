package com.ydmins.p_20250610_ver04

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.ydmins.battery/status"

    override fun configureFlutterEngine(flutterEingine io.flutter.embedding.engine.FlutterEngine){
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if (call.method == "getBatteryLevel") {
                val batteryLevel = getBaterryLevel()

                if (batteryLevel != -1) {
                    result.success(batteryLevel)
                } else {
                    return.error("UNAVAILABLE", "Battery level not available.", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getBatteryLevel(): Int {
        val batteryIntent = registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
        return batteryIntent?getIntExtra(BatteryManager.EXTRA_LEVEL, -1) ?: -1
    }
}
