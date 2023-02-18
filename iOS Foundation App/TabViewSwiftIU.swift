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
            // Explore
            VStack{
                ExploreSwiftUI()
            }.tabItem{
                Label("Explore",systemImage: "globe.americas.fill")
            }
            
            // Favourites
            VStack{
                FavouritesSwiftUI()
            }.tabItem{
                Label("Favourites",systemImage: "heart.fill")
            }
            
            // Mappina
            VStack{
                MappinaSwiftUI()
            }.tabItem{
                Label("Map",systemImage: "map")
            }
            
            // Account
            VStack{
                AccountSwiftUI()
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
