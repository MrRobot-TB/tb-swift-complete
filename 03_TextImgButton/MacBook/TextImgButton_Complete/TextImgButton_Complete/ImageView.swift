//
//  ImageView.swift
//  TextImgButton_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("world")
            .resizable()
            .scaledToFill()
            .scaledToFit()
            .frame(width: 200, height: 300)
            .border(.red, width: 10)
    }
}

#Preview {
    ImageView()
}
