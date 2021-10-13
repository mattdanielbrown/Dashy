//
//  WeatherViewModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation

class WeatherViewModel: ObservableObject{
    @Published var weather = exampleWeather
    
    init(){
        self.fetchJson()
    }
    
    func fetchJson(){
        if let url = URL(string: "https://api.lil.software/weather?latitude=40.709335&longitude=-73.956558") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    DispatchQueue.main.sync {
                        do{
                            self.weather = try JSONDecoder().decode(WeatherModel.self, from: data)
                        }
                        catch{
                            print(error.localizedDescription)
                        }
                    }
                }
            }.resume()
        }
    }
}
