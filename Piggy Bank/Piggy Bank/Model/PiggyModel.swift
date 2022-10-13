//
//  PiggyModel.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 13/10/22.
//

import Foundation

struct Piggy: Codable {
    let title: String
    let targetValue: Double
    let valueYouHave: Double
    let apiData: PiggyApi
}

struct PiggyApi: Codable {
    let base_code: String
    let target_code: String
    let conversion_rate: Double
}
