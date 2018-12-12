//
//  AppConstants.swift

//
//  Created by Ethanhuang on 2018/6/23.
//  Copyright © 2018年 Elaborapp Co., Ltd. All rights reserved.
//

import Foundation

struct AppConstants {
    static let appName: String = "Radarbug"
    static var versionString: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    static var buildString: String = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
    static var aboutString: String = "\(appName) v\(versionString)(\(buildString))"
    static var userAgentString: String = "\(appName)/\(versionString)"
    static var copyrightString: String = "2018 Dolphqiqu"

    static var feedbackEmail: String = "mkfeer@sina.com"

    static var appStoreURL: URL = URL(string: "https://github.com/Dolphqiqu/radarbug/blob/master/PrivacyPolicy")!
    static var githubURL: URL = URL(string: "https://github.com/Dolphqiqu/radarbug")!
    static var developerURL: URL = URL(string: "https://github.com/Dolphqiqu")!
}
