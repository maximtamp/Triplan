//
//  TextInput.swift
//  Triplan
//
//  Created by Maxim Tampere on 15/08/2026.
//

import SwiftUI

struct TextInput: View {
    var label: String
    var placeholder: String
    @Binding var data: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(label)
                .padding(.leading, 12)
            TextField(
                placeholder,
                text: $data
            )
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background {
                RoundedRectangle(cornerRadius: 6)
                    .fill(.gray)
                    .opacity(0.1)
                    .cornerRadius(90)
            }
        }
    }
}

#Preview {
    @Previewable @State var text = ""

    TextInput(
        label: "Appel",
        placeholder: "peer",
        data: $text
    )
}
