//
//  AccountSwiftUI.swift
//  iOS Foundation App
//
//  Created by gaetanooliva on 18/02/23.
//

import SwiftUI

struct AccountSwiftUI: View {
    var body: some View {
        VStack {
            HStack {
            Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
                Text("Name Surname")
                    .font(.title)
                    .fontWeight(.bold)
              
            }.padding(50)
            
            VStack(spacing: -20){
                HStack (){
                    
                    Text("Your Points of Interest")
                        .fontWeight(.bold)
                        .font(.title2)
                    
                    
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(Color.blue)
                    
                }.padding()
                
                HStack{
                    Image("ArcoTraiano")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct AccountSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AccountSwiftUI()
    }
}
