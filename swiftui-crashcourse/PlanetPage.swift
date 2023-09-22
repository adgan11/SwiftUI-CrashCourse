//
//  PlanetPage.swift
//  swiftui-crashcourse
//
//  Created by Ahmed Gagan on 21/09/23.
//

import SwiftUI

struct PlanetPage: View {
    var data: Dictionary<String,String>
    
    var body: some View {
        AsyncImage(url: URL(string: data["image"] ?? "")) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            
        }
        Text(data["name"] ?? "")
            .font(.largeTitle)
            .fontWeight(.bold)
        HStack {
            Text(data["position"] ?? "")
                .font(.system(size: 32))
            Spacer()
            Text(data["distance"] ?? "")
                .font(.system(size: 32))
            Spacer()
            Text(data["velocity"] ?? "")
                .font(.system(size: 32))
        }.padding(40)
        Spacer()
        Text(data["description"] ?? "")
            .padding()
        Spacer()
        
    }
}

struct PlanetPage_Previews: PreviewProvider {
    static var previews: some View {
        PlanetPage(data: ["": ""])
    }
}
