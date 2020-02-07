//
//  Bill.swift
//  iWontPayAnyway
//
//  Created by Max Tharr on 21.01.20.
//  Copyright © 2020 Mayflower GmbH. All rights reserved.
//

import Foundation

class Bill: Codable, Identifiable {
    
    var id: Int
    var amount: Double
    var what: String
    var date: String
    var payer_id: Int
    var owers: [Person]
    var `repeat`: String
    var lastchanged: Int

    init(id: Int, amount: Double, what: String, date: String, payer_id: Int, owers: [Person], repeat: String, lastchanged: Int) {
        self.id = id
        self.amount = amount
        self.what = what
        self.date = date
        self.payer_id = payer_id
        self.owers = owers
        self.repeat = `repeat`
        self.lastchanged = lastchanged
    }
    
}

let previewBills = [
    Bill(id: 1, amount: 5, what: "Erdnüsse", date: "21-12-2019", payer_id: 1, owers: [
        Person(id: 1, weight: 1, name: "Rolle", activated: true),
        Person(id: 2, weight: 1, name: "Rolle2", activated: true),
        Person(id: 3, weight: 1, name: "Rolle4", activated: true)
    ], repeat: "n", lastchanged: 1231234),
    Bill(id: 2, amount: 5, what: "Nochmal Erdnüsse", date: "21-12-2019", payer_id: 1, owers: [
        Person(id: 1, weight: 1, name: "Rolle", activated: true),
        Person(id: 2, weight: 1, name: "Rolle2", activated: true),
        Person(id: 3, weight: 1, name: "Rolle4", activated: true)
    ], repeat: "n", lastchanged: 1231234),
    Bill(id: 3, amount: 5, what: "Nochmal Erdnüsse", date: "21-12-2019", payer_id: 2, owers: [
        Person(id: 1, weight: 1, name: "Rolle", activated: true),
        Person(id: 2, weight: 1, name: "Rolle2", activated: true),
        Person(id: 3, weight: 1, name: "Rolle4", activated: true)
    ], repeat: "n", lastchanged: 1231234),
    Bill(id: 4, amount: 5, what: "Nochmal Erdnüsse", date: "21-12-2019", payer_id: 3, owers: [
        Person(id: 1, weight: 1, name: "Rolle", activated: true),
        Person(id: 2, weight: 1, name: "Rolle2", activated: true),
        Person(id: 3, weight: 1, name: "Rolle4", activated: true)
    ], repeat: "n", lastchanged: 1231234),
    Bill(id: 5, amount: 5, what: "Nochmal Erdnüsse", date: "21-12-2019", payer_id: 1, owers: [
        Person(id: 1, weight: 1, name: "Rolle", activated: true),
        Person(id: 2, weight: 1, name: "Rolle2", activated: true),
        Person(id: 3, weight: 1, name: "Rolle4", activated: true)
    ], repeat: "n", lastchanged: 1231234),
    
]
