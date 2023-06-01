//
//  Service.swift
//  RxMVVM
//
//  Created by QUANHS on 01/06/2023.
//

import Foundation
import SDWebImage
import MagicalRecord

public class AppService{
    public static func configSDWebImageDownloader() {
        let downloader = SDWebImageDownloader.shared
        downloader.config.username = "username"
        downloader.config.password = "password"
    }
    
    public static func setupCoreData() {
        MagicalRecord.setupAutoMigratingCoreDataStack()
        MagicalRecord.setLoggingLevel(MagicalRecordLoggingLevel.error)
    }
    
    public static func cleanCoreData(){
        MagicalRecord.cleanUp()
    }
}
