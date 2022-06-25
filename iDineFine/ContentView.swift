//
//  ContentView.swift
//  iDineFine
//
//  Created by Nadja Kelly on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(menu) { sectionCanBeAnyName in
                    Text(sectionCanBeAnyName.name)
                    
                    ForEach(sectionCanBeAnyName.items) { itemCanBeAnyName in
                        Text(itemCanBeAnyName.name)
                    }
                    
                }
                   
        }
            .navigationTitle(Text("Menu"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
