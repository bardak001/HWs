//
//  DetailView.swift
//  NavigationViewEnvironmentObjectPresentationMode
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) private var presentaion
    @EnvironmentObject var userBuy: UserBuy

    let text: String

    var body: some View {
        VStack {
            Text("buy \(text) \(userBuy.cups) cups")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("go to back") {
                            presentaion.wrappedValue.dismiss()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button("-") {
                                guard userBuy.cups > 0 else { return }
                                userBuy.cups -= 1
                            }
                            Button("+") {
                                userBuy.cups += 1
                            }
                        }
                    }
                }
        }
        .navigationTitle("DetailView")
        .navigationBarBackButtonHidden()
        .onAppear() {
            self.userBuy.cups = 0
        }
    }
}
