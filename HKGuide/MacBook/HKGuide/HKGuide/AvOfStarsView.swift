//
//  AvOfStarsView.swift
//  HKGuide
//
//  Created by [Redacted]
//

import SwiftUI

struct AvOfStarsView: View {
    var body: some View {
        Text("Avenue of Stars")
            .font(.largeTitle)
        Text("Avenue of Stars honours celebrities of the Hong Kong film industry.")
        Image("AvOfStars")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    AvOfStarsView()
}
