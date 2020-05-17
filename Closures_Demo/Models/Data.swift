//
//  Data.swift
//  Closures_Demo
//
//  Created by Zohra Achour on 17/05/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import Foundation

struct StarWarsCharacters: Identifiable, CustomStringConvertible {
    var description: String {
        "\(name)"
    }
    
    var id = UUID()
    var name: String
    var side: Side
}

extension StarWarsCharacters  {
    enum Side: String {
        case empire = "empire"
        case rebels = "rebels"
    }
}

var starWars = [
    StarWarsCharacters(name: "Darth Vader", side: .empire),
    StarWarsCharacters(name: "Luke Skywalker", side: .rebels),
    StarWarsCharacters(name: "Kylo Ren", side: .empire),
    StarWarsCharacters(name: "Yoda", side: .rebels),
    StarWarsCharacters(name: "Obi-Wan Kenobi", side: .rebels),
    StarWarsCharacters(name: "Darth Maul", side: .empire),
    StarWarsCharacters(name: "Princess Leia", side: .rebels),
    StarWarsCharacters(name: "Darth Sidious", side: .empire),
    StarWarsCharacters(name: "Han Solo", side: .rebels)
]
