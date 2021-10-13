//
//  ArticleView.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//


//let author: String?
//let url: String
//let source, title, articleDescription: String
//let image: String
//let date: Date
//
//enum CodingKeys: String, CodingKey {
//    case author, url, source, title
//    case articleDescription = "description"
//    case image, date
//}


import SwiftUI
import SDWebImageSwiftUI

struct ArticleView: View {
    let article: Article
    var body: some View {
        HStack {
            HStack{
                WebImage(url: URL(string: article.image)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150, alignment: .leading)
                    .clipped()
                    .cornerRadius(10)
                
            }
            
            VStack(alignment: .leading) {
                Text(article.title)
                    .bold()
                Text(article.articleDescription)
                    .padding(.top, 5)
                HStack{
                    Spacer()
                    Text(article.author ?? "Unknown")
                        .italic()
                        .foregroundColor(.gray)
                    
                }
            }
            .padding()
        }
        .frame(height: 150, alignment: .leading)
        .background(VisualEffectView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.behindWindow))
        .clipped()
        .cornerRadius(10)
        .padding(5)
        
        //        .background()
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: exampleNews.articles[1])
        
    }
}

