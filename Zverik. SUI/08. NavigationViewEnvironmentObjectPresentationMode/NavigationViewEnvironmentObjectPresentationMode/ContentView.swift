//
//  ContentView.swift
//  NavigationViewEnvironmentObjectPresentationMode
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userBuy = UserBuy()
    private let coffee = "coffee"
    private let tea = "tea"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("You choosed \(userBuy.cups) cups")
                Text("what would you want?")
                NavigationLink(destination: DetailView(text: coffee)) {
                    Text(coffee)
                }
                NavigationLink(destination: DetailView(text: tea)) {
                    Text(tea)
                }
            }
            .navigationTitle("Menu")
        }
        .environmentObject(userBuy)
    }
}

#Preview {
    ContentView()
}
