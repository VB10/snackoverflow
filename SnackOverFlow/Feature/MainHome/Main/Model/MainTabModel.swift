//
//  MainTabModel.swift
//  snackoverflow
//
//  Created by vb10 on 23.05.2023.
//

import Foundation
import SwiftUI

struct HomeTabItem: Identifiable {
    let id = UUID()
    let page: AnyView
    let model: TabModel

    static let tabItems: [HomeTabItem] = [
        HomeTabItem(page: AnyView(HomeView()), model: TabModel(title: .home, icon: .home)),
        HomeTabItem(page: AnyView(HomeView()), model: TabModel(title: .market, icon: .market)),
        HomeTabItem(page: AnyView(HomeView()), model: TabModel(title: .create, icon: .edit)),
        HomeTabItem(page: AnyView(HomeView()), model: TabModel(title: .wishlist, icon: .favorite)),
        HomeTabItem(page: AnyView(HomeView()), model: TabModel(title: .account, icon: .person))
    ]
}

struct TabModel {
    let title: LocaleKeys.TabView
    let icon: IconItems.TabView
}
