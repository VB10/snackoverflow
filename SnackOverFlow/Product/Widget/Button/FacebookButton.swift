//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by Veli Bacik on 15.09.2022.
//

import SwiftUI

struct FacebokButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(StringItems.facebookLogin.rawValue)
                Spacer()
            }
                .tint(.white)
                .background(Color.deepSkyBlue)

        }.buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
}
