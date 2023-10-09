package com.example.vnpt_ekyc

import android.app.Activity
import android.content.Intent
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat.startActivityForResult
import com.vnptit.idg.sdk.activity.VnptIdentityActivity
import com.vnptit.idg.sdk.utils.KeyIntentConstants.*
import com.vnptit.idg.sdk.utils.KeyResultConstants.FRONT_IMAGE
import com.vnptit.idg.sdk.utils.KeyResultConstants.INFO_RESULT
import com.vnptit.idg.sdk.utils.KeyResultConstants.PORTRAIT_IMAGE
import com.vnptit.idg.sdk.utils.KeyResultConstants.REAR_IMAGE
import com.vnptit.idg.sdk.utils.SDKEnum
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** VnptEkycPlugin */
class VnptEkycPlugin :
    FlutterPlugin, MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var result: MethodChannel.Result
    private var activity: Activity? = null
    private var tokenId: String? = null
    private var tokenKey: String? = null
    private var accessToken: String? = null

    override fun onAttachedToEngine(
        @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
    ) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "vnpt_ekyc")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        if (call.method == "getEkycVNPT") {
            val hashMap = call.arguments as HashMap<*,*>
            this.result = result
            this.tokenId = hashMap["tokenId"] as? String
            this.tokenKey = hashMap["tokenKey"] as? String
            this.accessToken = hashMap["accessToken"] as? String
            openEKYC(call, result)
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        this.activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
        this.activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        this.activity = binding.activity
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {
        this.activity = null
    }

    private fun openEKYC(call: MethodCall, result: MethodChannel.Result) {
        if (activity == null) {
            result.error(
                "ACTIVITY_NOT_AVAILABLE",
                "Browser cannot be opened " + "without foreground activity",
                null
            )
            return
        }
        val intent = Intent(activity, VnptIdentityActivity::class.java)
        if (intent != null) {
            intent.putExtra(
                ACCESS_TOKEN,
                accessToken ?: "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwNjY3MmIxZC1kMjcwLTFjMWUtZTA2My02MzE5OWYwYWJjMDUiLCJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoib25ndGV1MzNAZ21haWwuY29tIiwic2NvcGUiOlsicmVhZCJdLCJpc3MiOiJodHRwczovL2xvY2FsaG9zdCIsIm5hbWUiOiJvbmd0ZXUzM0BnbWFpbC5jb20iLCJ1dWlkX2FjY291bnQiOiIwNjY3MmIxZC1kMjcwLTFjMWUtZTA2My02MzE5OWYwYWJjMDUiLCJhdXRob3JpdGllcyI6WyJVU0VSIl0sImp0aSI6Ijc2MTgyZWY2LWRlODYtNDNhZC1iZDNkLTUxZWM3ODYxNjdlYSIsImNsaWVudF9pZCI6ImFkbWluYXBwIn0.J-309207sJWfG1xkSAI8ZBK6O8PBMmGgAS403PwYSqTxXTMRpU3Gqg5jc4ycZM3rLEbJzKNi58-rDuWSLUjG2UyNpFhj6jR8d7ZmifpBOPs56kOqwCzN821xO8lFU_SlgLwUx8qyKdvsZG9VxRINHVldrg5zs0OHBFru52ePTKWMUoBoS6669xrNrCw-JDb_CucXxKAnGUrqwWNECWv72Vj66E1ave3BAItQaGAuD33_6gqzsmtSC1-PhOatCv9RlK3UaI0G8Kn9vQTNAoo1dY8O8qSKZfUqsxAl2p1-5jLr0IzzaqX9UoYqHOxsWVCENKTmT2cdlJ2vPZz5dVBmgw"
            )
            intent.putExtra(TOKEN_ID,tokenId ?: "06673ea5-d1d2-6598-e063-62199f0ab8a7")
            intent.putExtra(
                TOKEN_KEY,tokenKey ?:
                "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAIPgyURtmC7HgvOFtopGgKAsCTFImoChamIgbix80gnuizkIzcuC4wbZvt/74oZn0MxeX94BxTFlsEg2g153Qn8CAwEAAQ=="
            )
            intent.putExtra(DOCUMENT_TYPE, SDKEnum.DocumentTypeEnum.IDENTITY_CARD.getValue())
            intent.putExtra(SELECT_DOCUMENT, false)
            intent.putExtra(VERSION_SDK, SDKEnum.VersionSDKEnum.ADVANCED.getValue())
            intent.putExtra(SHOW_RESULT, false)
            intent.putExtra(SHOW_DIALOG_SUPPORT, false)
            intent.putExtra(CAMERA_FOR_PORTRAIT, SDKEnum.CameraTypeEnum.FRONT.getValue())
            intent.putExtra(SHOW_SWITCH, false)
            intent.putExtra(CALL_ADD_FACE, false)
            intent.putExtra(LIVENESS_ADVANCED, true)
            intent.putExtra(CHECK_MASKED_FACE, true)
            intent.putExtra(CHECK_LIVENESS_CARD, true)
            intent.putExtra(CHALLENGE_CODE, "AneedKYC")
            activity?.startActivityForResult(intent, 1)
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode == 1) {
            if (resultCode == Activity.RESULT_OK) {
                val strDataInfo = data?.getStringExtra(INFO_RESULT)
                // println(strDataInfo)

                val imageFront = data?.getStringExtra(FRONT_IMAGE)
                // println(imageFront)

                val imageRear = data?.getStringExtra(REAR_IMAGE)
                // println(imageRear)

                val imageFace = data?.getStringExtra(PORTRAIT_IMAGE)
                println(imageFace)

                val resultMap =
                    mapOf(
                        "INFO_RESULT" to strDataInfo,
                        "FRONT_IMAGE" to imageFront,
                        "REAR_IMAGE" to imageRear,
                        "FACE_IMAGE" to imageFace
                    )

                this.result.success(resultMap)
                return true
            }
        }
        return false
    }
}
