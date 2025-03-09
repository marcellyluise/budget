//
//  Transaction.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import Foundation
import SwiftData

protocol Transactionable: Identifiable {
    var name: String { get }
    var value: Double { get }
}

@Model
final class Incoming: Transactionable {
    
    var name: String
    var value: Double
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
    }
}

@Model
final class Expenses: Transactionable {
    
    var name: String
    var value: Double
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
    }
}
