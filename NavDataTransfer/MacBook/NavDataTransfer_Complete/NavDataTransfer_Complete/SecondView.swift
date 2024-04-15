//
//  SecondView.swift
//  NavDataTransfer_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Second Page")
                .font(.largeTitle)
            Button("Go Back") {
                dismiss()
            }
        }
    }
}

#Preview {
    SecondView()
}
