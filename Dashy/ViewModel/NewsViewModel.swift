//
//  NewsViewModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation


class NewsViewModel: ObservableObject{
    @Published var news = exampleNews
    
    init(){
        self.fetchJson()
    }
    
    func fetchJson(){
        if let url = URL(string: "https://api.lil.software/news") {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                  
                  DispatchQueue.main.sync {
                      do {
                      self.news = try JSONDecoder().decode(NewsModel.self, from: data)
                      }   catch{
                          print(error.localizedDescription)
                      }
                 }
               }
           }.resume()
        }
    }
}
