//
//  Article.swift
//  GoodNews
//
//  Created by Mohammad Azam on 3/5/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=df06a78492d540388d085bf735ac25f9")!
        return Resource(url: url)
    }()
    
}

struct Article: Decodable {
    let title: String
    let description: String?
}
