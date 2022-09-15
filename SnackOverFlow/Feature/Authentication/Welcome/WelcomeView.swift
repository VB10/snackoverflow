//
//  WelcomeView.swift
//  snackoverflow
//
//  Created by Veli Bacik on 15.09.2022.
//

import SwiftUI

private enum StringItems: String {
    case facebookLogin = "Sign In with Facebook"
}

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            VStack {
                Image(Icons.appLogo.rawValue)
                FacebokButton(onTap: {}).padding(Edge.Set.top, 40)
            }.padding(.paddingAll)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}

