//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Shiqi Zhang on 2022/4/7.
//

import Foundation

// MARK: - Welcome
struct ArticleResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id: UUID = UUID()
    let author: String?
    let url: String
    let source, title: String
    let articleDescription: String?
    let image: String?
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}
