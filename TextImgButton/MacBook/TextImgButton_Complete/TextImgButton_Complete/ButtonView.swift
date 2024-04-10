//
//  ButtonView.swift
//  TextImgButton_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ButtonView: View {
    @State var presented = false
    var body: some View {
        
        Button("Test"){}
            .buttonStyle(.bordered)
        Button("Test"){}
            .buttonStyle(.borderedProminent)
        Button("Test"){}
            .buttonStyle(.plain)
                
        Button("ButtonName"){
            presented = true
        }
        .buttonStyle(.borderedProminent)
        .font(.system(size: 30))
        .alert("Warning", isPresented: $presented){
            Button("Delete", role: .destructive) {
                // Some actions
            }
        } message: {
            Text("All files will be deleted")
        }
    }
}

#Preview {
    ButtonView()
}
