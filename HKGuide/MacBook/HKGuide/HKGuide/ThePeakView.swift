//
//  ThePeakView.swift
//  HKGuide
//
//  Created by [Redacted]
//

import SwiftUI

struct ThePeakView: View {
    var body: some View {
        Text("The Peak")
            .font(.largeTitle)
        Text("The peak is one of the famous tourist attraction.")
        Image("ThePeak")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    ThePeakView()
}
