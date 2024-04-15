//
//  withAnimationView.swift
//  Animation
//
//  Created by [Redacted]
//

import SwiftUI

struct withAnimationView: View {
    @State private var tortoiseSpeed = 0.0
    @State private var hareSpeed = 0.0
    var body: some View {
        HStack(alignment: .top) {
            Button("Go") {
                withAnimation(.easeOut(duration: 2)){
                    tortoiseSpeed = 150
                    hareSpeed = 200
                }
            }
            .buttonStyle(.bordered)
            VStack {
                Image(systemName: "tortoise")
                    .offset(x: tortoiseSpeed)
                Image(systemName: "hare")
                    .offset(x: hareSpeed)
            }
            Spacer()
        }
        .frame(width: 300)
    }
}

#Preview {
    withAnimationView()
}
