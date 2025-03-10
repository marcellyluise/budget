//
//  Transaction.swift
//  Budget
//
//  Created by Marcelly.Godinho on 09/03/25.
//

import Foundation
import SwiftData

protocol Transactionable: Identifiable {
    var name: String { get }
    var value: Double { get }
}
