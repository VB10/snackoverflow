//
//  Icons.swift
//  snackoverflow
//
//  Created by Veli Bacik on 15.09.2022.
//

import Foundation

enum Icons: String {
    case appLogo = "ic_app_logo"
}

enum IconItems {
    enum Social: String {
        case facebook = "ic_facebook"
        case google = "ic_google"
        case apple = "ic_apple"
    }

    enum TabView: String {
        case home = "ic_home"
        case edit = "ic_edit"
        case favorite = "ic_favorite"
        case market = "ic_market"
        case person = "ic_person"
    }

    static let mail: String = "ic_mail"
    static let lock: String = "ic_lock"
}
