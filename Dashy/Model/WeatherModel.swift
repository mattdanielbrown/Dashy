//
//  WeatherModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation

// MARK: - WeatherModel
struct WeatherModel: Codable {
    let forecast: [Forecast]
}

// MARK: - Forecast
struct Forecast: Codable {
    let name: String
    let temperature: Int
    let unit: Unit
    let forecastDescription: String

    enum CodingKeys: String, CodingKey {
        case name, temperature, unit
        case forecastDescription = "description"
    }
}

enum Unit: String, Codable {
    case f = "F"
}

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
