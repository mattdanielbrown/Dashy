//
//  StocksViewModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation


class StocksViewModel: ObservableObject{
    @Published var stocks = [StocksModel]()
    
    init(){
        let watchList = ["AAPL", "MSFT", "GOOG", "AMZN", "FB", "TSLA", "NVDA", "ASML", "NFLX", "NKE", "VZ"]
        for watchList in watchList {
            self.fetchJson(for: watchList)
        }
    }
    
    func fetchJson(for symbol: String){
        if let url = URL(string: "https://api.lil.software/stocks?symbol=\(symbol)") {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                  
                  DispatchQueue.main.sync {
                      do{

                      let stock = try JSONDecoder().decode(StocksModel.self, from: data)
                      self.stocks.append(stock)
                      }   catch{
                          print(error.localizedDescription + "\(symbol)")
                      }
                 }
               }
           }.resume()
        }
    }
}
