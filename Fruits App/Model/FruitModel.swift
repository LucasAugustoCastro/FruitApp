//
//  FruitModel.swift
//  Fruits App
//
//  Created by Lucas Castro on 25/01/23.
//

import SwiftUI

// MARK: - FRUIT DATA MODEL

struct Fruit: Hashable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}


