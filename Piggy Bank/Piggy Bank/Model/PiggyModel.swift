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
    let currentCoin: String
    let targetCoin: String
    let conversionRate: Double
    
    enum CodingKeys: String, CodingKey {
        case currentCoin = "base_code"
        case targetCoin = "target_code"
        case conversionRate = "conversion_rate"
    }
}
