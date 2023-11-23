//
//  ContentView.swift
//  TextEditorProgressViewonChange
//
//  Created by Гасанов Радим on 23.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var text = "some text"
    @State var totalChars = 0
    @State var lastText = ""
    private let maxCount = 30
    
    var body: some View {
        VStack {
            Spacer()
            ProgressView(
                "chars: \(totalChars) of \(maxCount)",
                value: Double(totalChars),
                total: Double(maxCount)
            )
            .frame(width: 150)
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            Spacer()
            TextEditor(text: $text)
                .background(.gray)
                .foregroundColor(.white)
                .font(.custom("AvenirNext-Regular", size: 20, relativeTo: .body))
                .frame(width: 300, height: 300)
                .cornerRadius(25)
                .labeledContentStyle(.automatic)
                .scrollContentBackground(.hidden)
                .background(.red.opacity(0.5))
                .onChange(of: text, initial: true) { old, new  in
                    print("\(old), \(new)")
                    totalChars = new.count
                    if totalChars <= maxCount {
                        lastText = text
                    } else {
                        text = lastText
                    }
                }
            Spacer()
        }
        .padding()
        .background(.purple)
        .onTapGesture {
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
    }
}

#Preview {
    ContentView()
}
