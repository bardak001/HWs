//
//  HomeView.swift
//  TabViewBindingZStack
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct HomeView: View {

    @Binding var tabSelection: Int

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("The First Tab")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.white)
                Button("go to") {
                    tabSelection = 2
                }
                .font(.headline)
                .padding()
                .tint(.red)
                .background(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
