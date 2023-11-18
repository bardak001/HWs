//
//  TextFieldModifier.swift
//  TextFieldViewModifier
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(.roundedBorder)
            .keyboardType(.emailAddress)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.red)
            }
    }
}
