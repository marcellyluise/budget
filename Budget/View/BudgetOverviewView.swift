//
//  BudgetOverviewView.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import SwiftUI
import SwiftData

struct BudgetOverviewView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var incomeSources: [Income]
    
    var body: some View {
        NavigationView {
            List(incomeSources, id: \.self) { income in
                
                Text("\(income.name): R$ \(income.value)")
                
            }
            .navigationTitle("Income")
            .toolbar {
                
                ToolbarItem {
                    Button(action: addIncoming) {
                        Label("Add", systemImage: "plus")
                    }
                }
            }
        }
    }
    
    private func addIncoming() {
        withAnimation {
            let newIncoming = Income(name: "Pay Check", value: Date().timeIntervalSinceNow)
            modelContext.insert(newIncoming)
        }
    }
}

#Preview {
    BudgetOverviewView().modelContainer(for: Income.self, inMemory: true)
}
