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
    
    var body: some View {
        List(starWars, id: \.id) { character in
            Text(character.name)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(selectedTag: .constant(0))
    }
}
