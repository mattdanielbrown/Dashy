//
//  ForecastView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

//        Forecast(name:  "This Afternoon",
//temperature:  73,
//unit:  Unit.f,
//forecastDescription:  "Partly Sunny"


struct ForecastView: View {
    let forecast: Forecast
    var body: some View {
        VStack(alignment: .center){
        Text(forecast.name)
            Text("\(forecast.temperature)℉")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .padding()
            Text(forecast.forecastDescription)
        }
        .padding()
        .background(VisualEffectView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.behindWindow))
        .cornerRadius(10)
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(forecast: exampleWeather.forecast.first!)
            .padding()
    }
}
