//
//  PiggyModel.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 13/10/22.
//

import Foundation

struct Piggy: Codable {
    let title: String
    let valueYouHave: Double
    let targetValue: Double
    let currentCoin: String
}


let piggyTravelToJapan = Piggy(title: "Viagem para o Japão", valueYouHave: 50000, targetValue: 100000, currentCoin: "ja_JP")
let piggyTravelToDublin = Piggy(title: "Viagem para Dublin", valueYouHave: 987, targetValue: 2000, currentCoin: "eu_ES")
let piggyCustomLowProfileKeyboard = Piggy(title: "Teclado Low Profile Custom", valueYouHave: 500, targetValue: 800, currentCoin: "en_US")
let piggyCar = Piggy(title: "Carro Elétrico", valueYouHave: 135000, targetValue: 230000, currentCoin: "pt_BR")
let piggyMonitorForSetup = Piggy(title: "Monitor para Setup", valueYouHave: 300, targetValue: 1400, currentCoin: "pt_BR")
let piggyGuitarLP = Piggy(title: "Guitarra LP", valueYouHave: 200, targetValue: 2500, currentCoin: "pt_BR")
let piggyCustomKeyboard = Piggy(title: "Teclado Custom", valueYouHave: 100, targetValue: 600, currentCoin: "en_US")
let piggyChair = Piggy(title: "Cadeira", valueYouHave: 1200, targetValue: 1300, currentCoin: "eu_ES")
let piggiesArrayList: [Piggy] = [piggyTravelToJapan,piggyTravelToDublin,piggyCustomLowProfileKeyboard,piggyCar,piggyMonitorForSetup,piggyGuitarLP, piggyCustomKeyboard, piggyChair]

