//
//  BudgetView.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import SwiftUI

struct BudgetView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        TabView {
            Tab("15% Reserve", systemImage: "") {
                ReserveView()
            }
            
            Tab("20% Guilty Free", systemImage: "") {
                GuiltFreeView()
            }
            
            Tab("65% Expenses", systemImage: "") {
                ExpensesView()
            }
            
            Tab("Budget", systemImage: "") {
                BudgetOverviewView()
            }
            
        }.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    BudgetView()
        .modelContainer(for: [Expense.self], inMemory: true)
}
