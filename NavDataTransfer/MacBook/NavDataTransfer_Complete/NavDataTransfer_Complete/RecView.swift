//
//  RecView.swift
//  NavDataTransfer_Complete
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
