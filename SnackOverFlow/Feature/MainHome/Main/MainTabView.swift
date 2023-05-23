//
//  MainTabView.swift
//  snackoverflow
//
//  Created by vb10 on 23.05.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ForEach(HomeTabItem.tabItems) {
                item in
                item.page.tabItem {
                    TabIconLabel(model: item.model)
                }
            }
        }.accentColor(.peach)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

private struct TabIconLabel: View {
    let model: TabModel
    var body: some View {
        VStack {
            Image(model.icon.rawValue)
            Text(model.title.rawValue.locale())
        }
    }
}
