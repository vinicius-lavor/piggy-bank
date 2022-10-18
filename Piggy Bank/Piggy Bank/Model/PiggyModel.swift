//
//  PiggyModel.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 13/10/22.
//

import Foundation

//struct Piggy: Codable {
//    let title: String
//    let targetValue: Double
//    let valueYouHave: Double
//    let apiData: PiggyApi
//}

struct PiggyConversion: Codable {
    let currentCoin: String
    let targetCoin: String
    let conversionRate: String
    
    enum CodingKeys: String, CodingKey {
        case currentCoin = "code"
        case targetCoin = "codein"
        case conversionRate = "bid"
    }
}
