//
//  AccountSwiftUI.swift
//  iOS Foundation App
//
//  Created by gaetanooliva on 18/02/23.
//

import SwiftUI
import MapKit

struct PointOfInterest: Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var description : String
    var location : CLLocationCoordinate2D = .init()
}



struct AccountSwiftUI: View {
    var points = [
        PointOfInterest(name: "Arch of Trajan", image:"ArcoTraiano", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mollis tellus sed malesuada imperdiet. ", location: .init(latitude: 43.625278, longitude: 13.5065)),
        
        PointOfInterest(name: "Certosa San Marino", image:"CertosaSanMarino", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mollis tellus sed malesuada imperdiet. ", location: .init(latitude: 43.625278, longitude: 13.5065)
                       )]
    
    
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
            
            VStack(spacing: 0){
                HStack (){
                    
                    Text("Your Points of Interest")
                        .fontWeight(.bold)
                        .font(.title2)
                    
                    
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(Color.blue)
                    
                }.padding()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(points) { point in
                            VStack{
                                Button{
                                   
                                }
                            label: {
                                VStack{
                                    Image(point.image)
                                        .resizable()
                                        .frame(width: .infinity, height: .infinity)
                                        .scaledToFit()
                                        .cornerRadius(12)
                                    HStack{
                                        Text(point.name)
                                            .multilineTextAlignment(.leading)
                                            .padding(.leading, 10.0)
                                            .foregroundColor(.black)
                                        Spacer()
                                        }
                                    }
                                }
                            }.padding()
                            
                        }
                    }
                }
               Spacer(minLength: 300)
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
