//
//
//  CircleView.swift
//  NavDataTransfer
//
//  Created by [Redacted]
//

import SwiftUI

struct CircleView: View {
    @EnvironmentObject var preference: Preference
    var body: some View {
        Circle().fill(preference.color)
    }
}
