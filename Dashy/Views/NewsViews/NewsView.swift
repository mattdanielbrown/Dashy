//
//  NewsView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct NewsView: View {
    let news: NewsModel
    
    let columns = [
        GridItem(.adaptive(minimum: 550))
    ]
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns){
                ForEach(news.articles, id: \.self) { article in
                    ArticleView(article: article)

    //                Todo: Context menu, add more stuff from model
                    
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(news: exampleNews)
            .frame(width: 500)
    }
}
