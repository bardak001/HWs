//
//  ContentView.swift
//  TabViewBindingZStack
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var tabSelected = 1

    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView(tabSelection: $tabSelected)
                .badge(1)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("First")
                }
                .tag(0)
            Text("456")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
                .tag(1)
            Text("789")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
                .tag(2)
        }
        .font(.title)
        .tint(.purple)
    }
}

#Preview {
    ContentView()
}
