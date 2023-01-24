//
//  Images.swift
//  snackoverflow
//
//  Created by Veli Bacik on 15.09.2022.
//

import Foundation
import SwiftUI

enum Images: String {
    case juice = "img_juice"
}


struct ImageItems {

    enum Authentication: String {
        case login = "wolcano"
    }
}

enum IconAssets: String {
    case mail = "mail"
    case lock = "lock"
}


extension String {
    
    /// String path to  image
    /// - Returns: realeted image from Image asset
    func image() -> Image  {
        return Image(self)
    }
}
