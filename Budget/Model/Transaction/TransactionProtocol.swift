//
//  TransactionProtocol.swift
//  Budget
//
//  Created by Marcelly.Godinho on 16/11/24.
//

import Foundation

protocol Transaction {
    var value: Double { get set }
    var name: String { get set }
    var dueDay: Int { get set }
    var type: TransactionType { get set }
}
