//
//  NewsModel.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import Foundation

// MARK: - NewsModel
struct NewsModel: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Hashable {
    let author: String?
    let url: String
    let source, title, articleDescription: String
    let image: String
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
    
    
}

let exampleNews =
NewsModel(articles: [
    Article(author: "Annabelle Timsit, Andrew Jeong",
            url:     "https://www.washingtonpost.com/transportation/2021/10/13/southwest-american-airlines-texas-vaccine-mandate-ban/",
            source:     "The Washington Post",
            title: "Southwest and American Airlines to ignore Texas Gov. Abbott's vaccine mandate ban - The Washington Post",
            articleDescription: "White House press secretary Jen Psaki told reporters the federal mandate on vaccination supersedes state law.",
            image:     "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/TIAYGKRLWEI6ZML5TBOBQ3PDHA.jpg&w=1440",
            date: "2021-10-13T18:21:57Z"
           ),
    Article(author: "Eric Moody",
            url:     "https://www.espn.com/fantasy/football/story/_/page/21pickupsWeek6/fantasy-football-streaming-pickups-week-6-taylor-heinicke-quez-watkins-more",
            source:        "ESPN",
            title:     "Fantasy football streaming pickups for Week 6 - Taylor Heinicke, Quez Watkins, and more - ESPN",
            articleDescription: "If you need an injury replacement or like to play matchups from week to week, we have potential options who have favorable ones you can exploit in Week 6.",
            image:         "https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F1012%2Fr922028_1296x729_16%2D9.jpg",
            date: "2021-10-13T18:21:57Z"
           )
]
)

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
