
import UIKit
import Core

public class RxMVVM: NSObject {
    public static var shared = RxMVVM()
    public static func getBundle() -> Bundle{
        
        let frameworkBundle = Bundle(for: RxMVVM.self)
        let path = frameworkBundle.resourceURL?.appendingPathComponent("RxMVVM.bundle")
        let resourcesBundle = Bundle(url: path!)
        return resourcesBundle ?? Bundle.main
        
    }
    
    public static func resourcesPath(name: String, type: String) -> String? {
        let bundle = RxMVVM.getBundle()
        let pathForResourceString = bundle.path(forResource: name, ofType: type)
        return pathForResourceString
    }
}

extension String {
    public var lcz: String {
        return self.localized//localized(using: nil, in: _getBundle())
    }
}
