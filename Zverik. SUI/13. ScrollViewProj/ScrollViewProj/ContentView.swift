//
//  ContentView.swift
//  ScrollViewProj
//
//  Created by Гасанов Радим on 23.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            headerView
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(1...2, id: \.self) { _ in
                                cardView
                            }
                        }
                    }
                    ForEach(1...10, id: \.self) { _ in
                        paymentView
                    }
                    Spacer(minLength: 150)
                }
            }
            .background(.white)
            .cornerRadius(20)
            .offset(y: 20)
        }
        .background(
            Color.black
                .ignoresSafeArea()
        )
    }
}

private extension ContentView {
    var headerView: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Мои карты")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
            Image(systemName: "bell.and.waveform.fill")
                .font(.title)
                .foregroundStyle(.white)
                .frame(width: 20, height: 20, alignment: .topTrailing)
        }
//        .padding(.horizontal)
    }

    var paymentView: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("VISA")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.trailing, 5)
            VStack(alignment: .leading) {
                Text("Apple")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("30.03.2024")
                    .foregroundStyle(.gray)
                    .font(.caption)
                    .fontWeight(.light)
            }
            Spacer()
            Text("+100$")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.green)
        }
        .padding(.horizontal)
    }

    var cardView: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.black.opacity(0.9),
                            Color.black
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(
                    width: UIScreen.main.bounds.width - 30,
                    height: 180
                )
            cardItemView
        }.padding()
    }

    var cardItemView: some View {
        VStack(alignment: .leading) {
            Text("Dobro bank")
                .foregroundStyle(.white)
                .font(.title2)
                .fontWeight(.bold)
            HStack {
                ForEach(1...5, id: \.self) { _ in
                    Circle()
                        .fill(.white)
                        .frame(width: 6, height: 6, alignment: .bottom)
                }
                Text("1234")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
                Text("VISA")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            .frame(height: 110, alignment: .bottom)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
