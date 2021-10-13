//
//  NewsView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI

struct NewsView: View {
    let news: NewsModel
    var body: some View {
        VStack{
            ForEach(news.articles, id: \.self) { article in
                ArticleView(article: article)
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(news: exampleNews)
    }
}
