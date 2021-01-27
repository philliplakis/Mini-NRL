//
//  NewsData.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI
import Combine

struct News:  Codable, Identifiable {
    var id = UUID()
    let heading: String
    let date: String
    let image: String
    let subHeading: String
    let content: String
}

var NewsArray = [
    News(heading: "Broken thumb the latest blow for Pearce",
         date: "Today",
         image: "https://cdn.newsapi.com.au/image/v1/215d2a0f37441c4a53f8fb1193c675af",
         subHeading: "Coming just a few weeks after he stood down from the Knights captaincy, Pearce suffered a fractured right thumb during training last week.",
         content: "He will go under the knife on Wednesday in a bid to be fully fit for Newcastle's season-opening home game against Canterbury on March 12, six weeks from now.\nPearce has dominated the headlines over summer after his wedding was postponed on Christmas eve after a text messaging scandal involving a female club staffer was revealed.\nThe 31-year-old subsequently gave up the Newcastle captaincy in an emotional address to his teammates at the start of January."
         )
]

class Api {
    func getPosts(completion: @escaping ([News]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let posts = try! JSONDecoder().decode([News].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}


class NewsStore: ObservableObject {
    @Published var news: [News] = NewsArray
    
//    init() {
//        getPosts()
//    }
//
//    func getPosts() {
//        Api().getPosts { (posts) in
//            self.news = posts
//        }
//    }
}
