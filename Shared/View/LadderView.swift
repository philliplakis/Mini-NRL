//
//  LadderView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI

struct LadderView: View {
    private var columns: [GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(35)),
        GridItem(.fixed(35)),
        GridItem(.fixed(35)),
        GridItem(.fixed(35)),
        GridItem(.fixed(40)),
        GridItem(.fixed(35))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ladder")
                .font(.system(size: 40, weight: .black))
            Text("2021")
                .bold()
                .padding(.bottom)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 20
            ) {
                LadderHeadingView()
            }

            ScrollView(showsIndicators: false) {
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 20
                ) {
                    Section {
                        TeamLadderView(teamName: "Manly")
                        TeamLadderView(teamName: "St George")
                        TeamLadderView(teamName: "Roosters")
                        TeamLadderView(teamName: "Storm")
                        TeamLadderView(teamName: "Cowboys")
                        TeamLadderView(teamName: "Rabbits")
                        TeamLadderView(teamName: "Broncos")
                        TeamLadderView(teamName: "Titans")
                    }
                                        
                    Section{
                        TeamLadderView(teamName: "Eels")
                        TeamLadderView(teamName: "Tigers")
                        TeamLadderView(teamName: "Warriors")
                        TeamLadderView(teamName: "Sharks")
                        TeamLadderView(teamName: "Raiders")
                        TeamLadderView(teamName: "Panthers")
                        TeamLadderView(teamName: "Knights")
                        TeamLadderView(teamName: "Bulldogs")
                    }
                }
                .padding(.bottom, 40)
                .padding(.top, 10)

            }
        }
        .frame(width: screen.width - 36)
    }
}

struct LadderView_Previews: PreviewProvider {
    static var previews: some View {
        LadderView()
    }
}

struct LadderHeadingView: View {
    var body: some View {
        Text("Team")
            .font(.title3)
            .bold()
        Text("W")
            .font(.title3)
            .bold()
        Text("L")
            .font(.title3)
            .bold()
        Text("PF")
            .font(.title3)
            .bold()
        Text("PA")
            .font(.title3)
            .bold()
        Text("FA")
            .font(.title3)
            .bold()
        Text("P")
            .font(.title3)
            .bold()
    }
}

struct TeamLadderView: View {
    var teamName: String
    var body: some View {
        Text(teamName)
        Text("0")
        Text("0")
        Text("0")
        Text("0")
        Text("0")
        Text("0")
    }
}
