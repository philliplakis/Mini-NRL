//
//  TeamList.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 19/1/21.
//

import Foundation
import SwiftUI

struct Team: Identifiable {
    var id = UUID()
    let city: String
    let symbol: String
    let color1: Color
    let color2: Color
    let logo: Image
    let description: String
    let history: [historical]
    let headerImage: String
    let placementLastYear: String? = nil
}

struct historical {
    let icon: String
    let value: String
    let key: String
}

var TeamList = [
    Team(
        city: "Manly",
        symbol: "Sea Eagles",
        color1: Color(#colorLiteral(red: 0.3985410333, green: 0.0134599423, blue: 0.2191696465, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("manly"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "St George",
        symbol: "Dragons",
        color1: Color(#colorLiteral(red: 0.8025572896, green: 0.1410220563, blue: 0.1714120209, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("dragons"),
        description: "The St. George Illawarra Dragons is an Australian professional rugby league football club, representing both the Illawarra and St. George regions of New South Wales. The club has competed in the National Rugby League since 1999 after a joint-venture was formed between the St. George Dragons and the Illawarra Steelers.",
        history: [
            historical(icon: "trophy", value: "1998", key: "Inception"),
            historical(icon: "trophy", value: "1", key: "Premierships"),
            historical(icon: "trophy", value: "1", key: "GF Loses"),
            historical(icon: "trophy", value: "2", key: "Minor Premierships"),
            historical(icon: "trophy", value: "48", key: "Win %"),
        ],
        headerImage: "dragons_header"
    ),
    Team(
        city: "Parramatta",
        symbol: "Eels",
        color1: Color(#colorLiteral(red: 0.001909272629, green: 0.1771304607, blue: 0.4481197596, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.9938287139, green: 0.7165676951, blue: 0.1070747748, alpha: 1)),
        logo: Image("eels"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Sydney",
        symbol: "Roosters",
        color1: Color(#colorLiteral(red: 0.04479559511, green: 0.1774072945, blue: 0.3574751318, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.8792597055, green: 0.1258395314, blue: 0.1147936359, alpha: 1)),
        logo: Image("roosters"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Melbourne",
        symbol: "Storm",
        color1: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("storm"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "South Sydney",
        symbol: "Rabbitohs",
        color1: Color(#colorLiteral(red: 0.006963493302, green: 0.2292284966, blue: 0.1002506688, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("rabbitohs"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Brisbane",
        symbol: "Broncos",
        color1: Color(#colorLiteral(red: 0.4210380912, green: 0.1137599722, blue: 0.2710609734, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.9982863069, green: 0.8075149655, blue: 0.2040453851, alpha: 1)),
        logo: Image("broncos"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Gold Coast",
        symbol: "Titans",
        color1: Color(#colorLiteral(red: 0.006350865588, green: 0.3675156236, blue: 0.6063895822, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.9862588048, green: 0.7080820799, blue: 0.2411245406, alpha: 1)),
        logo: Image("titans"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Canterbury",
        symbol: "Bulldogs",
        color1: Color(#colorLiteral(red: 0, green: 0.2741312981, blue: 0.5438889861, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("bulldogs"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "North Queensland",
        symbol: "Cowboys",
        color1: Color(#colorLiteral(red: 0.01402222179, green: 0.1254101992, blue: 0.4619112015, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 0.8738952279, blue: 0, alpha: 1)),
        logo: Image("cowboys"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Newcastle",
        symbol: "Knights",
        color1: Color(#colorLiteral(red: 0, green: 0.2322983742, blue: 0.4505030513, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.9118942022, green: 0.1811441481, blue: 0.1700470448, alpha: 1)),
        logo: Image("knights"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Penrith",
        symbol: "Panthers",
        color1: Color(#colorLiteral(red: 0.1748317778, green: 0.1845455468, blue: 0.1887407303, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("panthers"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Canberra",
        symbol: "Raiders",
        color1: Color(#colorLiteral(red: 0.5765565038, green: 0.7885881662, blue: 0.2838314176, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("raiders"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Cronulla",
        symbol: "Sharks",
        color1: Color(#colorLiteral(red: 0.1228836551, green: 0.4917672276, blue: 0.7000824213, alpha: 1)),
        color2: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        logo: Image("sharks"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Auckland",
        symbol: "Warriors",
        color1: Color(#colorLiteral(red: 0.08105809242, green: 0.1243994012, blue: 0.4286726117, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.005119673442, green: 0.517339468, blue: 0.269208163, alpha: 1)),
        logo: Image("warriors"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
    Team(
        city: "Wests",
        symbol: "Tigers",
        color1: Color(#colorLiteral(red: 0.9600649476, green: 0.5151964426, blue: 0.124816604, alpha: 1)),
        color2: Color(#colorLiteral(red: 0.1490026712, green: 0.1490303874, blue: 0.148996681, alpha: 1)),
        logo: Image("wests"),
        description: "Manly Warringah Sea Eagles are based on the Northern Beaches of Sydney and play out of Lottoland. Since entering the competition in 1947, the Club has won 8 Premierships and has played in 19 Grand Finals.",
        history: [
            historical(icon: "trophy", value: "1946", key: "Inception"),
            historical(icon: "trophy", value: "8", key: "Premierships"),
            historical(icon: "trophy", value: "11", key: "GF Loses"),
            historical(icon: "trophy", value: "9", key: "Minor Premierships"),
            historical(icon: "trophy", value: "55", key: "Win %"),
        ],
        headerImage: "manly_header"
    ),
]

