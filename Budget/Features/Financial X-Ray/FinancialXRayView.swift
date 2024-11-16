//
//  FinancialXRay.swift
//  Budget
//
//  Created by Marcelly.Godinho on 16/11/24.
//

import SwiftUI
import SwiftData

struct FinancialXRayView: View {
    
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
    FinancialXRayView().modelContainer(for: [Incoming.self, 
                                         FixedExpense.self,
                                         VariableExpense.self,
                                         SeasonalExpense.self,
                                         DebitExpense.self],
                                   inMemory: true)
}
