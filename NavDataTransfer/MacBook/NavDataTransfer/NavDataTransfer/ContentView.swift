//
//
//  ContentView.swift
//  NavDataTransfer
//
//  Created by [Redacted]
//

import SwiftUI

class Preference: ObservableObject {
    @Published var color: Color = .accentColor
}

struct ContentView: View {
    @State private var presentedP1 = false
    @State private var presentedP2 = false
    @State private var presentedP3 = false
    @State private var presentedP4 = false
    @State var userInput = ""
    @State var userDate = Date()
    @EnvironmentObject var preference: Preference
    var body: some View {
        VStack (alignment:.center){
            Button("Try Sheet") {
                presentedP1 = true
            }.padding(.bottom, 10)
            Button("Try Full Screen Cover") {
                presentedP2 = true
            }.padding(.bottom, 10)
            TextField("Type something here", text: $userInput)
                .multilineTextAlignment(.center)
            Button("Submit") {
                presentedP3 = true
            }.padding(.bottom, 20)
            Button("Choose Date") {
                presentedP4 = true
            }
            Text(userDate, style: .date)
                .padding(.bottom, 20)
            HStack {
                Button("Yellow") {
                    preference.color = .yellow
                }
                Button("Blue") {
                    preference.color = .blue
                }
                Button("Brown") {
                    preference.color = .brown
                }
            }
            HStack {
                RecView()
                    .frame(width: 40, height: 150)
                CircleView()
                    .frame(width: 150, height: 150)
            }
        }
        .sheet(isPresented: $presentedP1) {
            SecondView()
        }
        .fullScreenCover(isPresented: $presentedP2) {
            SecondView()
        }
        .sheet(isPresented: $presentedP3) {
            ThirdView(textFromP1: userInput)
        }
        .sheet(isPresented: $presentedP4) {
            DateView(dateFromP1: $userDate)
        }
    }
}

#Preview {
    ContentView().environmentObject(Preference())
}
