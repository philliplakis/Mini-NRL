//
//  TeamView.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 27/1/21.
//

import SwiftUI

struct TeamView: View {
    @State var teamList = TeamList
    @State var presentHistory: Bool = false
    @State var clickedIndex: Int = -1
    
    func updateView(index : Int, completion: (Int)->()) {
        self.clickedIndex = index;
        completion( index )
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Teams")
                .font(.system(size: 40, weight: .black))
                .padding(.leading)
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 170))
                ], spacing: 30) {
                    
                    ForEach(teamList.indices, id: \.self) { index in
                        Button(action: {
                            updateView(index: index) { (index) -> () in
                                self.presentHistory.toggle();
                            }
                        }, label: {
                            
                            HStack {
                                teamList[index].logo
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding()
                            }
                            .frame(width: 150)
                            .background(teamList[index].color1)
                            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            
                        })
                    }
                }
                .padding(.horizontal)
                Text("\(self.clickedIndex)").opacity(0.01)
            }
        }.sheet(isPresented: self.$presentHistory) {
            VStack {
                
                Image(teamList[self.clickedIndex].headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                ScrollView {
                    Section {
                        Text("History")
                            .font(.largeTitle)
                            .bold()
                        
                        Text(teamList[self.clickedIndex].description)
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    

                    Section {
                        Text("Highlights")
                            .font(.title2)
                            .bold()
                            .padding(.top)
                        
                        ForEach(teamList[self.clickedIndex].history.indices) { item in
                            HStack {
                                Text(teamList[self.clickedIndex].history[item].key)
                                    .font(.headline)
                                    .bold()
                                Spacer()
                                Text("\(teamList[self.clickedIndex].history[item].value)")
                                    .font(.headline)
                            }
                            .padding(.horizontal, 60)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
