//
//  Helpers.swift
//  mNRL (iOS)
//
//  Created by Phillip Lakis on 20/1/21.
//
import Foundation
import SwiftUI

func FormatDate(date: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
    let date = dateFormatter.date(from: date)
    dateFormatter.dateFormat = "MMM dd yyyy h:mm a"
    return dateFormatter.string(from: date!)
}
    
let screen = UIScreen.main.bounds
