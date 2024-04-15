//
//  Disneyland.swift
//  HKGuide_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct DisneylandView: View {
    var body: some View {
        VStack {
            Text("HK Disneyland")
                .font(.largeTitle)
            Text("HK Disneyland is a theme park for families.")
            Image("Disneyland")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    DisneylandView()
}
