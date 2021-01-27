//
//  DrawData.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 19/1/21.
//

import SwiftUI

struct Game: Identifiable {
    var id = UUID()
    let Round: Int
    let HomeTeam: String
    let AwayTeam: String
    let Time: String
    let Ground: String
    let homeScore: Int? = nil
    let awayScore: Int? = nil
}

var DrawArray = [
    Game(Round: 1, HomeTeam: "storm", AwayTeam: "rabbitohs", Time: "2021-03-11T09:00:00.000Z", Ground: "AAMI Park, Melbourne"),
    Game(Round: 1, HomeTeam: "knights", AwayTeam: "bulldogs", Time: "2021-03-12T07:00:00.000Z", Ground: "McDonald Jones Stadium, Newcastle"),
    Game(Round: 1, HomeTeam: "broncos", AwayTeam: "eels", Time: "2021-03-12T09:00:00.000Z", Ground: "Suncorp Stadium, Brisbane"),
    Game(Round: 1, HomeTeam: "warriors", AwayTeam: "titans", Time: "2021-03-13T04:00:00.000Z", Ground: "Central Coast Stadium, Central Coast"),
    Game(Round: 1, HomeTeam: "roosters", AwayTeam: "manly", Time: "2021-03-13T06:30:00.000Z", Ground: "Sydney Cricket Ground, Sydney"),
    Game(Round: 1, HomeTeam: "panthers", AwayTeam: "cowboys", Time: "2021-03-13T09:30:00.000Z", Ground: "Panthers Stadium, Penrith"),
    Game(Round: 1, HomeTeam: "raiders", AwayTeam: "wests", Time: "2021-03-14T05:00:00.000Z", Ground: "GIO Stadium, Canberra"),
    Game(Round: 1, HomeTeam: "dragons", AwayTeam: "sharks", Time: "2021-03-14T07:15:00.000Z", Ground: "Netstrata Jubilee Stadium, Sydney"),

    Game(Round: 2, HomeTeam: "manly", AwayTeam: "rabbitohs", Time: "2021-03-20T08:30:00.000Z", Ground: "Lottoland, Sydney"),
    
    Game(Round: 3, HomeTeam: "broncos", AwayTeam: "titans", Time: "2021-03-14T04:30:00.000Z", Ground: "Brisbane"),
]
