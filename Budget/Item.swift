//
//  Item.swift
//  Budget
//
//  Created by Marcelly.Godinho on 12/11/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
