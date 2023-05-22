//
//  ViewStatusHiddenModifier.swift
//  snackoverflow
//
//  Created by vb10 on 25.04.2023.
//

import Foundation
import SwiftUI

/// Toolbar Hidden for any view
struct ViewStatusHiddenModifier: ViewModifier {
    @ViewBuilder
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content.toolbar(.hidden, for: .automatic)
        } else {
            content.navigationBarHidden(true)
        }
    }
}
