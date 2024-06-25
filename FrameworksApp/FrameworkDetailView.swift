//
//  FrameworkDetailView.swift
//  FrameworksApp
//
//  Created by Sedat on 15.06.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                
            } label: {
                 AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
