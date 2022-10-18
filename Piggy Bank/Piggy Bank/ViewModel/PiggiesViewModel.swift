//
//  PiggiesViewModel.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 14/10/22.
//

import Foundation

class PiggiesViewModel: NSObject {
    private var api: Api!
    private(set) var coins: Piggy! {
        didSet {
            self.bindPiggyViewModelToController()
        }
    }
    
    var bindPiggyViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.api = Api()
        callFuncToGetPiggyData()
    }
    
    func callFuncToGetPiggyData(){
        self.api.getConversionRates {(coins) in
            self.coins = coins
        }
    }
}
