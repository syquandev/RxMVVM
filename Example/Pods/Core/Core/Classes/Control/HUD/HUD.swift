//
//  HUDBuilder.swift
//  Alamofire
//
//  Created by Quan on 15/02/2023.
//

import Foundation

public class HUD: NSObject{
    public static func showSuccess(_ title: String, icon: String? = "hud_success"){
        let toast = ToastNotificationView(title: title, icon: UIImage(name: icon, bundle: Core.getBundle()))
        toast.position = .bottom
        toast.show()
    }
    
    public static func showWarning(_ title: String, icon: String? = "hud_warning"){
        let toast = ToastNotificationView(title: title, icon: UIImage(name: icon, bundle: Core.getBundle()), color: AppColor.warning.getColor())
        toast.position = .bottom
        toast.show()
    }
    
    public static func showError(_ title: String, icon: String? = "hud_error"){
        let toast = ToastNotificationView(title: title, icon: UIImage(name: icon, bundle: Core.getBundle()), color: AppColor.error.getColor())
        toast.position = .bottom
        toast.show()
    }
}
