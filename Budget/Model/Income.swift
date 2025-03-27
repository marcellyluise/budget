//
//  Income.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import Foundation
import SwiftData

@Model
final class Income: Transactionable {
    
    var name: String
    var value: Double
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
    }
}
