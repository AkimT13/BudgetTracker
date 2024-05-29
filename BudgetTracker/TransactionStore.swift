//
//  TransactionStore.swift
//  BudgetTracker
//
//  Created by Akim Tarasov on 5/25/24.
//

import Foundation

class TransactionStore: ObservableObject {
    @Published var transactions:[Transaction] = []
    
    
}
