//
//  API.swift
//  Piggy Bank
//
//  Created by Vinícius Cavalcante on 11/10/22.
//

import Foundation

class Api:NSObject {
    func getConversionRates(completion: @escaping (Piggy) -> ()){
        guard let url = URL(string: "https://v6.exchangerate-api.com/v6/c72162e77ea600fbe7fb1c4f/pair/BRL/JPY") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {return}
            do {
                let coins = try JSONDecoder().decode(Piggy.self, from: data)
                completion(coins)
            } catch {
                print(error)
            }
        }
        task.resume()
    }    
}
