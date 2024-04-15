//
//  DateView.swift
//  NavDataTransfer_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct DateView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var dateFromP1: Date
    var body: some View {
        VStack {
            DatePicker(
                "Pick a date",
                selection: $dateFromP1,
                displayedComponents: .date
            )
            .datePickerStyle(.graphical)
            Button("Go Back") {
                dismiss()
            }
        }
    }
}

#Preview {
    DateView(dateFromP1: .constant(Date()))
}
