//
//  ListView.swift
//  Closures_Demo
//
//  Created by Zohra Achour on 17/05/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    @Binding var selectedTag: Int
    
    var filteredCharacter: [StarWarsCharacters] {
        switch selectedTag {
        case 1:
            return starWars.filter { $0.side == .empire }.sorted { $1.name > $0.name }
        case 2:
            return starWars.filter { $0.side == .rebels }.sorted { $1.name > $0.name }
        default:
            return starWars.sorted { $1.name > $0.name }
        }
    }
    
    var body: some View {
        List(filteredCharacter, id: \.id) { character in
            Text(character.name)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(selectedTag: .constant(0))
    }
}
