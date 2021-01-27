//
//  NewsView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsView: View {
    @State var presentNewsStory: Bool = false
    @ObservedObject var store = NewsStore()

    var body: some View {
        
        VStack(alignment: .leading) {
            Text("News")
                .font(.system(size: 40, weight: .black))
                .padding(.leading)
            
            Spacer()
                        
            ScrollView{
                ForEach(store.news) { item in
                    NewsStoryView(
                        presentNewsStory: self.$presentNewsStory,
                        heading: item.heading,
                        image: item.image,
                        date: item.date,
                        subHeading: item.subHeading,
                        content: item.content
                    )
                }
            }
        }
        //        .onAppear {
        //            Api().getPosts { (posts) in
        //                self.posts = posts
        //            }
        //        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

struct NewsStoryView: View {
    @Binding var presentNewsStory: Bool
    
    @State var heading: String
    @State var image: String
    @State var date: String
    @State var subHeading: String
    @State var content: String
    
    var body: some View {
        VStack {
            HStack {
                WebImage(url: URL(string: image)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 180, alignment: .center)
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(date)
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                    
                    Text(heading)
                        .font(.system(size: 25, weight: .black, design: .serif))
                    
                    Text(subHeading)
                        .font(.caption)
                }
                
            }
        }
        .onTapGesture {
            self.presentNewsStory.toggle()
        }
        .sheet(isPresented: self.$presentNewsStory) {
            VStack {
                Text(date)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .padding(.vertical)

                ZStack {
                    WebImage(url: URL(string: image)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                    Color.black.opacity(0.55)

                    Text(heading)
                        .font(.system(size: 40, weight: .black, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .padding()
                }
                .frame(width: screen.width, height: 200, alignment: .center)
                .padding(.bottom, 30)
                                
                Text(subHeading)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom)

                Text(content)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
            }
        }
    }
}
