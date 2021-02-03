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
//
var NewsArray = [
    News(heading: "Latrell Mitchell’s shock link to NRL as Souths suffer $2.4m setback",
         date: "Today",
         image: "https://cdn.newsapi.com.au/image/v1/c009e094959235116a48bc380b6a27bd",
         subHeading: "It is reported that Mitchell is keen on a shorter deal and that Souths are still very confident in securing his signature, even with the growing competition.",
         content: "Latrell Mitchell’s management has confirmed they have held talks with the Brisbane Broncos with as many as 12 clubs interested in the Rabbitohs gun.\nIt comes after he reportedly declined a $2.4 million contract extension with South Sydney.\nThe Courier Mail reports that the Rabbitohs offered Mitchell a three-year deal but it has been rejected."
    ),
    News(heading: "Israel Folau could return to NRL with Dragons",
         date: "Today",
         image: "https://cdn.newsapi.com.au/image/v1/e37411d9ee550075d3338cdb094869d1",
         subHeading: "Dragons CEO Ryan Webb told the Herald: “We are always on the lookout for great players. We have enquired with the NRL about Israel and we will work with them to hopefully see him join us in 2021.”",
         content: "The St George Illawarra Dragons have lodged an appeal with the NRL that would see them sign disgraced dual-code international Israel Folau.\nThe former Wallabies star, who began his career in league, was sacked by Rugby Australia in 2019 for homophobic posts on social media.\nHe signed with Super League side Catalans Dragons last season after originally being denied a return to the NRL.\nAfter returning to action in the Super League, Folau was recently linked with a move to French rugby union."
    ),
    News(heading: "NRL set to grant Roosters $350k cap relief over Cordner concussion",
         date: "Today",
         image: "https://cdn.newsapi.com.au/image/v1/816f19813543fc9b7a29e0ba7d39a3ab",
         subHeading: "Under the NRL rules, the Roosters are eligible to apply for salary cap relief because Cordner sustained the injury playing representative football.",
         content: "Champion Sydney Roosters co-captain Boyd Cordner looks set to miss at least the opening 12 games of the season with the NRL set to hand the tricolours $350,000 salary cap relied.\nThe NRL community has thrown its support behind Cordner in recent months after the NSW State of Origin captain opted to rule himself out of last year’s end-of-season series due to repeated concussions.\nCordner suffered his fourth concussion of the season playing Origin I in Adelaide last November."
    ),
    News(
         heading: "Broncos suffer $1 million blow just weeks out from NRL season",
         date: "Today",
         image: "https://cdn.newsapi.com.au/image/v1/bc4926b3bd958426ef5260ba8f725e50",
        subHeading: "“He has been reviewed by a surgeon and a hand therapist and at this stage the best course of action is surgery to repair the fracture.",
        content: "The Brisbane Broncos have suffered a big blow just weeks out from the 2021 NRL season, with five-eighth Anthony Milford fracturing his hand.\nBrisbane’s $1 million man, who will undergo surgery later this week, went for scans which revealed a displaced right transverse 4th metacarpal fracture, the club confirmed on Tuesday.\n“Anthony felt pain in his hand during a drill today and we sent him for scans,” Broncos Head of Performance, Andrew Croll, said."
    ),
    News(heading: "Broken thumb the latest blow for Pearce",
         date: "Friday",
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
