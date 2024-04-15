//
//  NoteView.swift
//  Notes_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct NoteView: View {
    @Binding var notes: [String]
    var body: some View {
        List(notes, id:\.self){
            note in Text(note)
        }
        .navigationBarTitle("Notes")
    }
}

#Preview {
    @State var notes: [String] = ["Testing"]
    return NoteView(notes: $notes)
}
