//
//  NewsView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewsView: View {
    @ObservedObject var store = NewsStore()

    var body: some View {
        
        VStack(alignment: .leading) {
            Text("News")
                .font(.system(size: 40, weight: .black))
                .padding(.leading)
            
            Spacer()
                        
            ScrollView{
                Divider()
                ForEach(store.news) { item in
                    NewsStoryView(
                        heading: item.heading,
                        image: item.image,
                        date: item.date,
                        subHeading: item.subHeading,
                        content: item.content
                    )
                    Divider()
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
    @State var heading: String
    @State var image: String
    @State var date: String
    @State var subHeading: String
    @State var content: String
    @State var presentNewsStory: Bool = false

    var body: some View {
        VStack {
            HStack {
                WebImage(url: URL(string: image)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))

                VStack(alignment: .leading) {
                    Text(date)
                        .font(.system(size: 12, weight: .medium, design: .rounded))
                    
                    Text(heading)
                        .font(.system(size: 22, weight: .black, design: .serif))
                    
                    Text(subHeading)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .font(.caption)
                }
                
            }.padding(.horizontal)
        }
        .onTapGesture {
            self.presentNewsStory.toggle()
        }
        .sheet(isPresented: self.$presentNewsStory) {
            ScrollView {
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
                            .font(.system(size: 36, weight: .black, design: .serif))
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
}
