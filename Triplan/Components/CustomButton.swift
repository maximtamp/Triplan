//
//  SwiftUIView.swift
//  Triplan
//
//  Created by Maxim Tampere on 15/08/2026.
//

import SwiftUI

struct CustomButton<Content: View>: View {
    var content: Content
    var disabled: Bool?
    var loading: Bool?
    var action: () -> Void = { }
    
    init(
        @ViewBuilder content: () -> Content,
        disabled: Bool? = nil,
        loading: Bool? = nil,
        action: @escaping () -> Void
    ) {
        self.content = content()
        self.disabled = disabled
        self.loading = loading
        self.action = action
    }
        
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 4) {
                Spacer()
                if loading! {
                    ProgressView()
                } else {
                    content
                }
                Spacer()
            }
            .padding(.vertical)
            .padding(.horizontal, 2)
            .background((disabled ?? false) || (loading ?? false) ? Color.gray : Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(12)
        }
        .disabled(disabled ?? false)
    }
}

#Preview {
    CustomButton(
        content: {
            Text("appel")
        },
        disabled: true,
        loading: false,
        action: {
            print("apple")
        }
    )
}
