//
//  ExpensesView.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import SwiftUI
import SwiftData

struct ExpensesView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var expenses: [Expense]
    
    var body: some View {
        NavigationView {
            List(expenses, id: \.self) { expense in
                Text("\(expense.name), value: \(expense.value)")
            }
            .navigationTitle("Expenses")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: addExpense) {
                        Label("Add Expense", systemImage: "plus")
                    }
                }
            }
        }
    }
    
    private func addExpense() {
        withAnimation {
            let newExpense = Expense(name: "Expense", value: Date().timeIntervalSinceNow)
            modelContext.insert(newExpense)
        }
    }
}

#Preview {
    ExpensesView()
        .modelContainer(for: Expense.self, inMemory: true)
}
