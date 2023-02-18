//
//  TabViewSwiftIU.swift
//  iOS Foundation App
//
//  Created by gaetanooliva on 18/02/23.
//

import SwiftUI

struct TabViewSwiftIU: View {
    var body: some View {
        TabView{
            VStack{
                
            }.tabItem{
                Label("Explore",systemImage: "globe.americas.fill")
            }
            VStack{
                
            }.tabItem{
                Label("Favourites",systemImage: "heart.fill")
            }
            VStack{
                
            }.tabItem{
                Label("Map",systemImage: "map")
            }
            VStack{
                
            }.tabItem{
                Label("Account",systemImage: "person.crop.circle")
            }
            
        }
    }
}

struct TabViewSwiftIU_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSwiftIU()
    }
}
