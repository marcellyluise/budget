//
//  FinancialXRay.swift
//  Budget
//
//  Created by Marcelly.Godinho on 16/11/24.
//

import SwiftUI
import SwiftData

enum TransactionType: String, CaseIterable, Codable {
    case incoming
    case fixedExpense
    case variableExpense
    case seasonal
    case debit
}

protocol Transaction {
    var value: Double { get set }
    var name: String { get set }
    var dueDay: Int { get set }
    var type: TransactionType { get set }
}

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

struct FinancialXRay: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var incomings: [Incoming]
    @Query private var fixedExpenses: [FixedExpense]
    @Query private var variableExpenses: [VariableExpense]
    @Query private var seasonalExpenses: [SeasonalExpense]
    @Query private var debts: [DebitExpense]
    
    var body: some View {
        Text("wip")

    }
}

#Preview {
    FinancialXRay().modelContainer(for: [Incoming.self, 
                                         FixedExpense.self,
                                         VariableExpense.self,
                                         SeasonalExpense.self,
                                         DebitExpense.self],
                                   inMemory: true)
}
