//
//  API.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 11/10/22.
//

import Foundation

class Api:NSObject {
    func getConversionRates(completion: @escaping (PiggyConversion) -> ()){
        guard let url = URL(string: "https://economia.awesomeapi.com.br/BRL-USD") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {return}
            do {
                let coins = try JSONDecoder().decode([PiggyConversion].self, from: data)
                guard let coinElement = coins.first else { return }
                completion(coinElement)
                print(coins)
            } catch {
                print(error)
            }
        }
        task.resume()
    }    
}
