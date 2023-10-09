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
        SaveData.shared().sdTokenKey = self.tokenKey ??  "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAI8ywK5myC1d/TCuroUpi+BVGRuwzRM49oos1oyk1DvAdvn4KspGOjGQwcPE8bJk2Hm665sBdM1f2oORkF3eI70CAwEAAQ=="
        print(self.tokenKey)
        SaveData.shared().sdTokenId = self.tokenId ?? "07097696-78b8-3204-e063-63199f0aab85"
        print(self.tokenId)
        SaveData.shared().sdAuthorization = self.acccessToken ?? "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiNTI5YmJlMS02NDI2LTExZWUtOGRkMS02N2M3YWNmNTNiMmUiLCJhdWQiOlsicmVzdHNlcnZpY2UiXSwidXNlcl9uYW1lIjoicXVhbmhoLm5hbmdAZ21haWwuY29tIiwic2NvcGUiOlsicmVhZCJdLCJpc3MiOiJodHRwczovL2xvY2FsaG9zdCIsIm5hbWUiOiJxdWFuaGgubmFuZ0BnbWFpbC5jb20iLCJleHAiOjE2OTk0MTg3NDgsInV1aWRfYWNjb3VudCI6ImI1MjliYmUxLTY0MjYtMTFlZS04ZGQxLTY3YzdhY2Y1M2IyZSIsImF1dGhvcml0aWVzIjpbIlVTRVIiXSwianRpIjoiNTdlYmE4YzgtYjU0MS00YzIzLWJiNWMtYjI1ZmI0ZTg2NzQ1IiwiY2xpZW50X2lkIjoiY2xpZW50YXBwIn0.HDfUQ7CBfjs5icEm9EQRJK5Q2msObj-5zFnUMpotj3Y0P7Ds7R9kzbUAAaxXe3h0R76vUvAUCaINWpTctg94NaCzoa9pKnLzRK2tDnBFQD7kloyfCwmHuGum-DTDtOVGHsFdoKUdyWIdZi8oZB7SDql5yR5IQ6nsIowUpkH78vxWJfxQ7eRJ6a-kG03Nc2npOcG0l6AL1fevex_kvGmWt28YqElxamSxjtkMnka9u3OmgFsCSJAQgnij96gvHBo4a8OgfKk-Nt6Q1DFs3Zdx991ie9gR2hsgFpmobse2b1_E64TyZx6bNBDPmYtIq3cM51zQP_IY5yCtxPhulmQVBA"
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
