//
//  View+Extensions.swift
//  TextFieldViewModifier
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

extension View {
    func redTextField() -> some View {
        modifier(TextFieldModifier())
    }
}

//extension View {
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(
//            #selector(UIResponder.resignFirstResponder),
//            to: nil,
//            from: nil,
//            for: nil
//        )
//    }
//}
