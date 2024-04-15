//
//  ContentView.swift
//  Notes_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    @State private var notes:[String] = []
    @State private var newNote = ""
    @State private var showAddNote = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("My Notes")
                    .font(.system(size: 50))
                    .padding()
                Image(systemName: "pencil.and.ellipsis.rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
                Button("Add Note"){
                    showAddNote = true
                }
                .font(.system(size: 30))
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .padding()
                NavigationLink("View Notes"){
                    NoteView(notes: $notes)
                }
                .font(.system(size: 30))
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .padding()
            }
            .alert("Add Note", isPresented: $showAddNote){
                TextField("note", text: $newNote, axis: .vertical)
                Button("Add"){
                    if !newNote.isEmpty {
                        notes.append(newNote)
                        newNote = ""
                    }
                }
                Button("Cancel", role: .cancel){
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
