//
//  GoogleButton.swift
//  snackoverflow
//
//  Created by Veli Bacik on 28.09.2022.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.google.rawValue)
                Text(LocaleKeys.Auth.google.rawValue.locale())
                Spacer()
            }
                .tint(.black)
                .font(.title2)
                .padding(.all,PagePadding.All.normal.rawValue)

        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color.white)
            .cornerRadius(RadiusItems.radius)
            
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton(onTap: {})
    }
}
