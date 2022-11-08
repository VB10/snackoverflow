//
//  TextFieldModifier.swift
//  snackoverflow
//
//  Created by Veli Bacik on 9.11.2022.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
        )
            .foregroundColor(Color.carl)
    }

}
