//
//  ThirdView.swift
//  NavDataTransfer_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ThirdView: View {
    @Environment(\.dismiss) private var dismiss
    var textFromP1: String = ""
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.square")
                }
                .position(x: 350, y: -200)
                .frame(height: 40)
                .padding(.trailing, 20)
            }
            Text("Third Page")
                .font(.largeTitle)
            Text("The message you sent:")
            Text(textFromP1)
                .foregroundColor(Color.green)
                .padding(40)
            Button("Go Back") {
                dismiss()
            }
        }
    }
}

#Preview {
    ThirdView()
}
