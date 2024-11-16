//
//  TransactionEnum.swift
//  Budget
//
//  Created by Marcelly.Godinho on 16/11/24.
//

import Foundation

enum TransactionType: String, CaseIterable, Codable {
    case incoming
    case fixedExpense
    case variableExpense
    case seasonal
    case debit
}
