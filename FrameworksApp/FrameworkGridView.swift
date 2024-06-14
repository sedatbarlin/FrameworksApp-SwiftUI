//
//  FrameworkGridView.swift
//  FrameworksApp
//
//  Created by Sedat on 12.06.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns){
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    var name: String
    var imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
