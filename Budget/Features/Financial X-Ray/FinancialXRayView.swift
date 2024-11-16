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
    
    private func addTransaction() {
        withAnimation {
            let newTransaction = Incoming(value: 10000, name: "Salário", dueDay: 10)
            modelContext.insert(newTransaction)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Section {
                    ForEach(incomings) { income in
                        Text("Due day: \(income.dueDay), Value: \(income.value)")
                    }
                } header: {
                    Text("Incoming")
                }
                
                Section {
                    ForEach(fixedExpenses) { fixedExpense in
                        Text("Due day: \(fixedExpense.dueDay), Value: \(fixedExpense.value)")
                    }
                } header: {
                    Text("Fixed Expenses")
                }
                
                Section {
                    ForEach(variableExpenses) { variableExpense in
                        Text("Due day: \(variableExpense.dueDay), Value: \(variableExpense.value)")
                    }
                } header: {
                    Text("Variable Expenses")
                }
                
                Section {
                    ForEach(seasonalExpenses) { seasonalExpense in
                        Text("Due date: \(seasonalExpense.dueDay), Value: \(seasonalExpense.value)")
                    }
                } header: {
                    Text("Seasonal Expenses")
                }
                
                Section {
                    ForEach(debts) { debt in
                        Text("Due data: \(debt.dueDay), Value: \(debt.value)")
                    }
                } header: {
                    Text("Debt")
                }
            }.toolbar(content: {

                ToolbarItem {
                    Button(action: addTransaction) {
                        Label("Add", systemImage: "plus")
                    }
                }
            })
        } detail: {
            Text("Select an transaction")
        }
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
