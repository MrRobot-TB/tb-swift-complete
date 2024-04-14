//
//
//  RecView.swift
//  NavDataTransfer
//
//  Created by [Redacted]
//

import SwiftUI

struct RecView: View {
    @EnvironmentObject var preference: Preference
    var body: some View {
        Rectangle().foregroundColor(preference.color)
    }
}
