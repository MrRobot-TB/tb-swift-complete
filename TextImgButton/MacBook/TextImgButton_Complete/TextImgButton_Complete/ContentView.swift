//
//  ContentView.swift
//  TextImgButton_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    @State private var input = ""
    var body: some View {
        VStack {
            Text("TextContent")
                .frame(width: 250)
                .padding(.bottom, 20)
            
            Text("I am a line of text, \nyou can also call me a sentence. You can also call me a string.")
                .frame(width: 250)
                .padding(.bottom, 20)
                .font(.system(size: 45))
                .lineLimit(2)
                .minimumScaleFactor(0.6)
                .foregroundColor(.yellow)
                .background(.black)
            
            TextField("Please input", text: $input, axis: .vertical)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ContentView()
}
