//
//  TransactionModel.swift
//  Budget
//
//  Created by Marcelly.Godinho on 16/11/24.
//

import Foundation
import SwiftData

@Model
final class Incoming: Transaction {
    var type: TransactionType = TransactionType.incoming
    
    var value: Double
    
    var name: String
    
    var dueDay: Int
    
    init(value: Double, name: String, dueDay: Int) {
        self.value = value
        self.name = name
        self.dueDay = dueDay
    }
}

@Model
final class VariableExpense: Transaction {
    var type: TransactionType = TransactionType.variableExpense
    
    var value: Double
    
    var name: String
    
    var dueDay: Int
    
    init(value: Double, name: String, dueDay: Int) {
        self.value = value
        self.name = name
        self.dueDay = dueDay
    }

}

@Model
final class FixedExpense: Transaction {
    var type: TransactionType = TransactionType.fixedExpense
    
    var value: Double
    
    var name: String
    
    var dueDay: Int
    
    init(value: Double, name: String, dueDay: Int) {
        self.value = value
        self.name = name
        self.dueDay = dueDay
    }
}

@Model
final class SeasonalExpense: Transaction {
    var value: Double
    
    var name: String
    
    var dueDay: Int
    
    var type: TransactionType = TransactionType.seasonal
    
    init(value: Double, name: String, dueDay: Int) {
        self.value = value
        self.name = name
        self.dueDay = dueDay
    }

}

@Model
final class DebitExpense: Transaction {
    var value: Double
    
    var name: String
    
    var dueDay: Int
    
    var type: TransactionType = TransactionType.debit
    
    init(value: Double, name: String, dueDay: Int) {
        self.value = value
        self.name = name
        self.dueDay = dueDay
    }
}
