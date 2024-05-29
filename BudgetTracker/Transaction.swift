//
//  Transaction.swift
//  BudgetTracker
//
//  Created by Akim Tarasov on 5/25/24.
//

import Foundation

struct Transaction: Codable, Identifiable {
    var id: UUID = UUID()
    var date: Date
    var institution: String
    var account: String
    var merchant: String
    var amount: Double
    var type: TransactionType
    var categoryId: Int
    var category: String
    var isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
}

enum TransactionType: String, Codable {
    case credit = "credit"
    case debit = "debit"
}
