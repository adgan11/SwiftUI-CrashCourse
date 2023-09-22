//
//  ContentView.swift
//  swiftui-crashcourse
//
//  Created by Ahmed Gagan on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    
    var planetsData = PlanetsData()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(planetsData.data, id: \.self) { data in
                        AsyncImage(url: URL(string: data["image"] ?? "name")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            
                        }
                        
                        Text(data["name"] ?? "image")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        NavigationLink(destination: PlanetPage(data: data)) {
                            Text("Learn More")
                        }
                    }
                }.navigationTitle("Planets")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
