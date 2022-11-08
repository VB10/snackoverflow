//
//  OnBoardModel.swift
//  snackoverflow
//
//  Created by Veli Bacik on 18.10.2022.
//

import Foundation

struct OnBoardModel: Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let description: String
    
   static let items: [OnBoardModel] =  [
    OnBoardModel(imageName: "img_hand_pick", description: "Hand-pickle high quality snacks."),
    OnBoardModel(imageName: "img_shop", description: "Shop global. Mind-blownly affordable."),
    OnBoardModel(imageName: "img_deliver", description: "Deliver on the promise of time."),
   ]
}
