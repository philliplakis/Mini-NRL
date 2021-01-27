//
//  DrawView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 20/1/21.
//

import SwiftUI

struct DrawView: View {
    @State var selectedRound: Int = 0
    @State var filteredRound: Array<Game> = DrawArray.filter( {$0.Round == 1})
    
    func updateRound(index: Int) -> Void {
        self.filteredRound = DrawArray.filter( {$0.Round == selectedRound + 1})
        return
    }
    
    var body: some View {

        VStack(alignment: .leading) {
            Text("Draw")
                .font(.system(size: 40, weight: .black))
                .padding(.leading)
            
            Text("Pick A Round")
                .bold()
                .padding(.leading)
                .padding(.top)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0 ..< 26) { index in
                        
                        Button(action: { self.selectedRound = index; updateRound(index:index) } ) {
                            Text("\(index + 1)")
                                .font(.system(size: 20, weight: .black, design: .rounded))
                        }
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(self.selectedRound == index ? Color.white : Color.black)
                        .background(self.selectedRound == index ? Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)) : Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.trailing, 10)
                        .animation(.spring())
                    }
                }
                .padding(.horizontal)
            }
            
            Text("Games")
                .bold()
                .padding(.leading)
                .padding(.top)
                        
            ScrollView {
                if (filteredRound.count == 0) {
                    VStack {
                        Divider()
                        Text("Rounds will be updated shortly.")
                            .bold()
                            .padding()
                    }
                } else {
                    ForEach(filteredRound.indices, id: \.self) { index in
                        GameView(
                            homeTeam: filteredRound[index].HomeTeam,
                            awayTeam: filteredRound[index].AwayTeam,
                            ground: filteredRound[index].Ground,
                            date: filteredRound[index].Time
//                            homeScore: 28,
//                            awayScore: 26
                        )
                    }
                }
                Text(" ").opacity(0.01)
            }
            .animation(.linear)
        }
    }
}

struct DrawView_Previews: PreviewProvider {
    static var previews: some View {
        DrawView()
    }
}

struct GameView: View {
    var homeTeam: String
    var awayTeam: String
    var ground: String
    var date: String
    var homeScore: Int? = nil
    var awayScore: Int? = nil

    var body: some View {
        VStack {
            Divider()

            HStack {
                ZStack {
                    Image(homeTeam)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                    
                    if (homeTeam == "rabbitohs" || homeTeam ==  "storm") {
                        Color.black.blendMode(.sourceAtop)
                            .frame(width: 80)
                    }
                }
                
                if (homeScore != nil) {
                    Section {
                        Text(homeScore ?? 0 > awayScore ?? 0 ? "W" : "L")
                            .font(.system(size: 15, weight: .black, design: .rounded))
                            .foregroundColor(homeScore ?? 0 > awayScore ?? 0 ? .green : .red)
                        Spacer()
                        Text("\(homeScore ?? 0)")
                            .font(.system(size: 18, weight: .black, design: .rounded))
                    }
                }

                Spacer()
                
                Text("VS")
                    .font(.system(size: 14, weight: .black))
                
                Spacer()
                
                if (awayScore != nil) {
                    Section {
                        Text("\(awayScore ?? 0)")
                            .font(.system(size: 18, weight: .black, design: .rounded))
                        Spacer()
                        Text(homeScore ?? 0 < awayScore ?? 0 ? "W" : "L")
                            .font(.system(size: 15, weight: .black, design: .rounded))
                            .foregroundColor(homeScore ?? 0 < awayScore ?? 0 ? .green : .red)
                    }
                }
               
                ZStack {
                    Image(awayTeam)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                    
                    if (awayTeam == "rabbitohs" || awayTeam ==  "storm") {
                        Color.black.blendMode(.sourceAtop)
                            .frame(width: 80)
                    }
                }
                    
            }
            
            Text(ground)
            
            Text("\(FormatDate(date: date))")
                .bold()
            
        }
        .padding(.horizontal, 30)
    }
}
