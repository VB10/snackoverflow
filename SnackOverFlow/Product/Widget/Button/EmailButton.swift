//
//  EmailButton.swift
//  snackoverflow
//
//  Created by Veli Bacik on 28.09.2022.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.custom.rawValue.locale())
                Spacer()
            }
                .tint(.white)
                .font(.system(size: FontSizes.headline,weight: .semibold))
                .padding(.all, PagePadding.All.normal.rawValue)

        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.peach)
            .cornerRadius(RadiusItems.radius)

    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton { }
    }
}
