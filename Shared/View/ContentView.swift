//
//  ContentView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                }
                .tag(0)
            
            DrawView()
                .tabItem {
                    Image("calendar")
                        .renderingMode(.template)
                    Text("Draw")
                }
                .tag(1)
            
            LadderView()
                .tabItem {
                    Image("ladder")
                        .renderingMode(.template)
                    Text("Ladder")
                }
                .tag(3)
            
            TeamView()
                .tabItem {
                    Image("footy")
                        .renderingMode(.template)
                    Text("Teams")
                }
                .tag(2)
            
        }
        .accentColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
