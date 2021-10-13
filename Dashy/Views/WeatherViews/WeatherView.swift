//
//  WeatherView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct WeatherView: View {
    let weather: WeatherModel
    var body: some View {
        ScrollView(.horizontal) {
           HStack{
                ForEach(weather.forecast, id: \.self) { forecast in
                    ForecastView(forecast: forecast)
                }
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: exampleWeather)
    }
}
