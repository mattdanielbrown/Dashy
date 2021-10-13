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
struct Forecast: Codable, Hashable {
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

let exampleWeather = WeatherModel(
    forecast: [
        Forecast(name:  "This Afternoon",
                 temperature:  73,
                 unit:  Unit.f,
                 forecastDescription:  "Partly Sunny"
                ),
        Forecast(name: "Tonight",
                 temperature: 63,
                 unit:  Unit.f,
                 forecastDescription: "Partly Cloudy"
                ),
        Forecast(name: "Thursday",
                 temperature: 78,
                 unit:  Unit.f,
                 forecastDescription: "Mostly Sunny"
                ),
        Forecast(name: "Thursday Night",
                 temperature: 63,
                 unit:  Unit.f,
                 forecastDescription: "Partly Cloudy"
                ),
        Forecast(name: "Friday",
                 temperature: 78,
                 unit:  Unit.f,
                 forecastDescription: "Mostly Sunny"
                ),
        Forecast(name: "Friday Night",
                 temperature: 66,
                 unit:  Unit.f,
                 forecastDescription: "Mostly Cloudy then Slight Chance Rain Showers"
                )
    ]
)

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)



