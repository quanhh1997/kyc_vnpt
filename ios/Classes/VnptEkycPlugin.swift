import Flutter
import UIKit
import FinalSDK

public class VnptEkycPlugin: NSObject, FlutterPlugin, ICEkycCameraDelegate{
  var flutterResult: FlutterResult?
  var tokenId: String?
  var tokenKey: String?
  var acccessToken: String?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "vnpt_ekyc", binaryMessenger: registrar.messenger())
    let instance = VnptEkycPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getEkycVNPT":
      self.flutterResult = result
      guard let args = call.arguments as? [String : Any] else {return}
      self.tokenId = args["tokenId"] as? String
      self.tokenKey = args["tokenKey"] as? String
      self.acccessToken = args["accessToken"] as? String
      if let controller = UIApplication.shared.delegate?.window??.rootViewController  as? FlutterViewController {
          DispatchQueue.main.async {
            self.openSDKeKYC(controller)
          }
      } 
      
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  func openSDKeKYC(_ controller:UIViewController) {
        let objCamera = ICEkycCameraRouter.createModule() as! ICEkycCameraViewController
        // Key test on side Product
        SaveData.shared().sdTokenKey = self.tokenKey ??  "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAN1TyucVW7qKt8TD7e3JYxUPURu9i6LvC+jJbF7OM6bLL+GGZnjZiev4KrUL8ZE7p874RpY2gcu0F9zUmFst+/8CAwEAAQ=="
        print(self.tokenKey)
        SaveData.shared().sdTokenId = self.tokenId ?? "06ddb43f-3325-6465-e063-62199f0a727b"
        print(self.tokenId)
        SaveData.shared().sdAuthorization = self.acccessToken ?? "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxZGRkMWE3OS02MjcxLTExZWUtOGRkMS04NzgyOTM2ZDZmYTYiLCJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoidGVjaC5xdWFuaGhAYW5lZWQudm4iLCJzY29wZSI6WyJyZWFkIl0sImlzcyI6Imh0dHBzOi8vbG9jYWxob3N0IiwibmFtZSI6InRlY2gucXVhbmhoQGFuZWVkLnZuIiwiZXhwIjoxNjk4OTg2ODQ2LCJ1dWlkX2FjY291bnQiOiIxZGRkMWE3OS02MjcxLTExZWUtOGRkMS04NzgyOTM2ZDZmYTYiLCJhdXRob3JpdGllcyI6WyJVU0VSIl0sImp0aSI6ImY0N2IzMTNhLWQ2OTMtNDFmNi1hNGFkLTUwODY3NTk0YzkwMyIsImNsaWVudF9pZCI6ImNsaWVudGFwcCJ9.58QbsIN8By0W6z6W6PFn_E5IwMdBB5HoJIBiZpUQI44vFnMd29WbA45ZG5J-qp0VEi6Tbg61l2JkM-G4hbmktlgT1emszP0Rz1PczWVfO8eFaLSxWZwI7U9jvINsOpNR7WRNGammWmWlaAc3vrIM2k1Pmz7QQ0QZtTVfiOhojzk9b7DF5jymfYNldLM3EcqDo71MCtTcWUFht6hcBjAGti84vAvB2-SUeZUeN3aJweaGUpL6zlTyisBZ0nONL8rXKgKrk4bLTuYZW4x3P1pCEHOz77H8CC_DNPrjrGHHbLpepf51dc09I3XwW3u6aTgZFx3ecPgi3f0TcThIrj2Ghg"
        print(self.acccessToken)
        objCamera.cameraDelegate = self
        objCamera.isVersion = Normal
        objCamera.flowType = full
        objCamera.isType = IdentityCard
        objCamera.isShowResult = false
        
        objCamera.isCompare = true
        objCamera.isShowHelp = true
        objCamera.isShowTrademark = true
        objCamera.isCheckMaskFace = true
        objCamera.isAddFace = false
        objCamera.isCheckLivenessFace = true
        objCamera.languageApplication = "vi"
        objCamera.isSkipVoiceVideo = true

        objCamera.unitCustomer = "Anet"
        objCamera.resourceCustomer = "Aneed"
        objCamera.challengeCode = "AneedKYC"
        objCamera.modalPresentationStyle = .fullScreen
        objCamera.modalTransitionStyle = .coverVertical

        
        objCamera.styleHeader = 2;
        
        objCamera.colorContentHeader = self.UIColorFromRGB(rgbValue: 0xffffff, alpha: 1.0)
        
        objCamera.colorContentMain = self.UIColorFromRGB(rgbValue: 0xFFFFFF, alpha: 1.0)
        
        objCamera.colorBackgroundMain = self.UIColorFromRGB(rgbValue: 0x1a2e3f, alpha: 1.0)
        
        objCamera.colorLine = self.UIColorFromRGB(rgbValue: 0xD9D9D9, alpha: 1.0)
        
        objCamera.colorBackgroundButton = self.UIColorFromRGB(rgbValue: 0x54a4ff, alpha: 1.0)
        
        objCamera.colorEkycTextButton = self.UIColorFromRGB(rgbValue: 0x000000, alpha: 1.0)
        
        objCamera.colorEkycCaptureBackground = self.UIColorFromRGB(rgbValue: 0x1a2e3f, alpha: 1.0)
        
        objCamera.colorEkycEffect = self.UIColorFromRGB(rgbValue: 0x54a4ff, alpha: 1.0)
        
        objCamera.colorEkycButtonCapture = self.UIColorFromRGB(rgbValue: 0xFFFFFF, alpha: 1.0)
        
        objCamera.colorEkycOval = self.UIColorFromRGB(rgbValue: 0xFFFFFF, alpha: 1.0)
        
        objCamera.isUsingUnderBackground = false
        
        objCamera.colorEkycUnderBackgound = self.UIColorFromRGB(rgbValue: 0x005dc7, alpha: 1.0)
        
        objCamera.colorBackgroundPopup = self.UIColorFromRGB(rgbValue: 0xffffff, alpha: 1.0)
        
        objCamera.colorEkycTextPopup = self.UIColorFromRGB(rgbValue: 0x434343, alpha: 1.0)

       controller.present(objCamera, animated: true, completion: nil)
    }
    
    func getInformationCard() -> [String : Any] {
        let jsonInfo = SaveData.shared().jsonInfo
        let imageFront: String = saveImage(uIImage: SaveData.shared().imageFront, name: "image_front.png")
        let imageBack: String = saveImage(uIImage: SaveData.shared().imageBack, name: "image_back.png")
        let imageFace: String = saveImage(uIImage: SaveData.shared().imageFace, name: "image_face.png")
        let mapResult: [String: Any] = ["INFO_RESULT" : jsonInfo, "FRONT_IMAGE": imageFront, "REAR_IMAGE": imageBack,"FACE_IMAGE": imageFace]
        return mapResult
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func saveImage(uIImage: UIImage,name: String) -> String{
        if let data = uIImage.jpegData(compressionQuality: 0.8) {
                let filename = getDocumentsDirectory().appendingPathComponent(name)
                try? data.write(to: filename)
            return filename.absoluteString;
            }
        return "";
    }
    
    
    public func getResult() {
        
        DispatchQueue.main.async {
            self.flutterResult!(self.getInformationCard())
        }
        
    }
    
    private func UIColorFromRGB(rgbValue: UInt, alpha: CGFloat) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
