//
//  SingleStockView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct SingleStockView: View {
    let stock: StocksModel
    var body: some View {
        VStack(alignment: .center){
        Text(stock.name)
            Text(String(format: "%.2f$", stock.current))
                .font(.largeTitle)
                .foregroundColor(stock.current > stock.welcomeOpen ? .green : .red)
                .padding()
            
            HStack{
                HStack{
                    Image(systemName: "arrow.up")
                    Text(String(format: "%.2f", stock.high))
                }
                .foregroundColor(.green)
                HStack{
                    Image(systemName: "arrow.down")
                    Text(String(format: "%.2f", stock.low))
                }
                .foregroundColor(.red)
            }
        }
        .padding()
        .background(VisualEffectView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.behindWindow))
        .cornerRadius(10)
    }
}

struct SingleStockView_Previews: PreviewProvider {
    static var previews: some View {
        SingleStockView(stock: exampleStocks.first!)
    }
}
