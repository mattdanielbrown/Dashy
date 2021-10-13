//
//  StocksModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation

// MARK: - StocksModel
struct StocksModel: Codable, Hashable {
    let welcomeOpen, high, low, current: Double
    let previousClose: Double
    let name: String

    enum CodingKeys: String, CodingKey {
        case welcomeOpen = "open"
        case high, low, current
        case previousClose = "previous_close"
        case name
    }
}

let exampleStocks = [
    StocksModel(welcomeOpen:  141.235, high:  141.4, low:  139.2, current:  140.735, previousClose:  141.51, name: "Apple Inc"),
    StocksModel(welcomeOpen:  0.19, high:   0.2, low:  0.19, current:  0.19, previousClose:  0.18, name: "Spanish Mountain Gold Ltd"),
    StocksModel(welcomeOpen:  23.1, high:  23.2, low:  22.78, current:  23.09, previousClose:  23.09, name: "Air Canada"),
    StocksModel(welcomeOpen:  69.99, high:  420.0, low:  21.0, current:  99.99, previousClose:  141.51, name: "Aahyoushh Ltd")
]

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
