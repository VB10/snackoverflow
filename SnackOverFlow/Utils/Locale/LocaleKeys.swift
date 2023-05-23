//
//  LocaleKeys.swift
//  snackoverflow
//
//  Created by Veli Bacik on 28.09.2022.
//

import SwiftUI

struct LocaleKeys {
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signupWithEmail"
    }

    enum Buttons: String {
        case getStarted
    }

    enum General: String {
        case emailHint = "getStarted"
        case passwordHint
    }

    enum Login: String {
        case welcomeBack
        case createAccount
        case terms = "termsAndCondition"
    }

    enum TabView: String {
        case home = "tabHome"
        case market = "tabMarket"
        case create = "tabCreate"
        case wishlist = "tabWishlist"
        case account = "tabAccount"
    }
}

extension String {
    /// It lolcalize any string from Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
