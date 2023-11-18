//
//  ContentView.swift
//  UIAcitivityViewUIActivityUIViewRepresentable
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isSharePresented = false
    private let customActivity = ActivityViewCustomActivity(
        title: "telegram",
        imageName: ""
    ) {
        print("telegram tapped")
    }

    var body: some View {
        Button("share") {
            self.isSharePresented = true
            print("test")
        }.sheet(isPresented: $isSharePresented) {
            ActivityView(
                activityItems: ["second test"],
                applicationActivities: [customActivity]
            )
        }
    }
}

#Preview {
    ContentView()
}
