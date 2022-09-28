//
//  DynamicSize+GeometryProxy.swift
//  snackoverflow
//
//  Created by Veli Bacik on 28.09.2022.
//

import SwiftUI

extension GeometryProxy {

    /// Dynamic Height by device
    /// - Parameter height: Percent value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }

    /// Dynamic Width by device
    /// - Parameter width: Percent value
    /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double {
        return size.width * width
    }
}
