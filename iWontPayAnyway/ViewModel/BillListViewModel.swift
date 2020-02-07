//
//  BillListViewModel.swift
//  iWontPayAnyway
//
//  Created by Max Tharr on 23.01.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class BillListViewModel: ObservableObject {
    
    @Published
    var topic = ""
    
    @Published
    var amount = ""
        
    var validatedInput: AnyPublisher<Bool, Never> {
        return Publishers.CombineLatest($topic, validatedAmount)
            .map { topic, validatedAmount in
                return !topic.isEmpty && validatedAmount
            }
            .eraseToAnyPublisher()
    }
    
    var validatedAmount: AnyPublisher<Bool, Never> {
        return $amount.map { amount in
            return Double(amount) != nil
        }
        .eraseToAnyPublisher()
    }
    
}
