//
//  ContentView.swift
//  Closures_Demo
//
//  Created by Zohra Achour on 17/05/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTag: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $selectedTag, label: Text("")) {
                    Text("All")
                        .tag(0)
                    
                    Text("Empire")
                        .tag(1)
                    
                    Text("Rebels")
                        .tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            .navigationBarTitle("Star Wars")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
