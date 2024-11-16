//
//  HomeView.swift
//  Budget
//
//  Created by Marcelly.Godinho on 12/11/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
                content:  {
            
            FinancialXRayView().tabItem {
                Text("Financial X-Ray").tag(4)
            }.modelContainer(for: [Incoming.self,
                                   FixedExpense.self,
                                   VariableExpense.self,
                                   SeasonalExpense.self,
                                   DebitExpense.self], inMemory: true)
            
            ContentView().tabItem {
                Text("WIP").tag(0)
            }.modelContainer(for: Item.self, inMemory: true)

            QuadrantsView().tabItem {
                Text("Quadrants").tag(1)
            }
            
            DebitTabulationView().tabItem {
                Text("Debit Tabulation").tag(2)
            }
            
            ValuationOfDreamsView().tabItem {
                Text("Valuation of Dreams").tag(3)
            }
            
        })
    }
}

#Preview {
    HomeView()
}
