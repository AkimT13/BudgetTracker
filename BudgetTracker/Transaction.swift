//
//  Transaction.swift
//  BudgetTracker
//
//  Created by Akim Tarasov on 5/25/24.
//

import Foundation
import SwiftData


@Model
class Transaction: Identifiable {
    
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
    
    init(date: Date,
             institution: String,
             account: String,
             merchant: String,
             amount: Double,
             type: TransactionType,
             categoryId: Int,
             category: String,
             isPending: Bool,
             isTransfer: Bool,
             isExpense: Bool,
             isEdited: Bool) {
            self.date = date
            self.institution = institution
            self.account = account
            self.merchant = merchant
            self.amount = amount
            self.type = type
            self.categoryId = categoryId
            self.category = category
            self.isPending = isPending
            self.isTransfer = isTransfer
            self.isExpense = isExpense
            self.isEdited = isEdited
    
    
}
/*
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

 */
enum TransactionType: String, Codable {
    case credit = "credit"
    case debit = "debit"
}


