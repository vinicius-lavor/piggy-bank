//
//  PiggyConversionModel.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 18/10/22.
//

import Foundation

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
