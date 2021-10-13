//
//  StocksView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct StocksView: View {
    let stocks: [StocksModel]
    var body: some View {
       
        ScrollView(.horizontal){
            HStack{
                ForEach(stocks, id: \.self) { stock in
                    SingleStockView(stock: stock)
                }
            }
        }
    }
}

struct StocksView_Previews: PreviewProvider {
    static var previews: some View {
        StocksView(stocks: exampleStocks)
    }
}
