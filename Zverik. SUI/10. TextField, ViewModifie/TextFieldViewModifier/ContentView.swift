//
//  ContentView.swift
//  TextFieldViewModifier
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var login = ""
    @State var password = ""
    @FocusState var nameIsFocused: Bool

    var body: some View {
        VStack {
            TextField("enter login", text: $login)
                .modifier(TextFieldModifier())
                .focused($nameIsFocused)
            TextField("enter password", text: $password) { changed in
                print("print: changed \(changed), \(login)")
            } onCommit: {
                print("print: onCommit \(login)")
            }
            .redTextField()
            Button("Login") {
                nameIsFocused = false
                // hideKeyboard()
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.red)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
