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
                accessToken ?: "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiNTI5YmJlMS02NDI2LTExZWUtOGRkMS02N2M3YWNmNTNiMmUiLCJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoicXVhbmhoLm5hbmdAZ21haWwuY29tIiwic2NvcGUiOlsicmVhZCJdLCJpc3MiOiJodHRwczovL2xvY2FsaG9zdCIsIm5hbWUiOiJxdWFuaGgubmFuZ0BnbWFpbC5jb20iLCJleHAiOjE2OTk0MTg3NDgsInV1aWRfYWNjb3VudCI6ImI1MjliYmUxLTY0MjYtMTFlZS04ZGQxLTY3YzdhY2Y1M2IyZSIsImF1dGhvcml0aWVzIjpbIlVTRVIiXSwianRpIjoiNTdlYmE4YzgtYjU0MS00YzIzLWJiNWMtYjI1ZmI0ZTg2NzQ1IiwiY2xpZW50X2lkIjoiY2xpZW50YXBwIn0.HDfUQ7CBfjs5icEm9EQRJK5Q2msObj-5zFnUMpotj3Y0P7Ds7R9kzbUAAaxXe3h0R76vUvAUCaINWpTctg94NaCzoa9pKnLzRK2tDnBFQD7kloyfCwmHuGum-DTDtOVGHsFdoKUdyWIdZi8oZB7SDql5yR5IQ6nsIowUpkH78vxWJfxQ7eRJ6a-kG03Nc2npOcG0l6AL1fevex_kvGmWt28YqElxamSxjtkMnka9u3OmgFsCSJAQgnij96gvHBo4a8OgfKk-Nt6Q1DFs3Zdx991ie9gR2hsgFpmobse2b1_E64TyZx6bNBDPmYtIq3cM51zQP_IY5yCtxPhulmQVBA"
            )
            intent.putExtra(TOKEN_ID,tokenId ?: "07097696-78b8-3204-e063-63199f0aab85")
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
