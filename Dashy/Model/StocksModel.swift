//
//  StocksModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation

// MARK: - StocksModel
struct StocksModel: Codable {
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

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
