//
//  ContentView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct ContentView: View {
    @StateObject var newsViewModel = NewsViewModel()
    @StateObject var weatherViewModel = WeatherViewModel()
    @StateObject var stocksViewModel = StocksViewModel()

    var body: some View {
        ZStack{
            //            Color.black.opacity(0.45)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    
                    GreetingView()
                    
//                    Divider()
                    
                    Group{
                        SubTitleView(title: "Here's the weather", image: "thermometer.sun.fill")
                        WeatherView(weather: weatherViewModel.weather)
                        
//                        Divider()
                    }
                    
                    Group{
                        SubTitleView(title: "Here are the latest News", image: "newspaper.fill")
                        
                        NewsView(news: newsViewModel.news)
                        
//                        Divider()
                    }
                    Group{
                        SubTitleView(title: "Here are your stocks", image: "chart.xyaxis.line")
                        
                        StocksView(stocks: stocksViewModel.stocks)
                    }
                    
                    Spacer()
                    
                } .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 720, height: 500)
            .preferredColorScheme(.dark)
    }
}

struct GreetingView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Good Afternoon")
                .font(.largeTitle)
                .bold()
            Text("Aayush")
                .font(.title)
        }
    }
}

struct SubTitleView: View {
    let title: String
    let image: String
    var body: some View {
        Label(title, systemImage: image)
            .padding(.top)
    }
}
