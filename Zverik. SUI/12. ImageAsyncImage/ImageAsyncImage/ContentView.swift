//
//  ContentView.swift
//  ImageAsyncImage
//
//  Created by Гасанов Радим on 23.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
//            Spacer()
            backgroundImageView
            buildImage("a4")
            buildImage("a6")
            buildImage("a8")
            asyncImageView
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(
            VStack {
                LinearGradient(
                    colors: [.red, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            }
        )
        .ignoresSafeArea()
    }
    
    @ViewBuilder func buildImage(_ named: String) -> some View {
        VStack {
            Image(uiImage: UIImage(named: named) ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 150)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(.red, lineWidth: 3)
                }
                .shadow(radius: 10)
            Text(named)
                .background(.orange)
                .font(.headline)
        }
    }

    var backgroundImageView: some View {
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .offset(y: 0)
            .padding(.bottom, -130)
    }

    var asyncImageView: some View {
        AsyncImage(
            url: URL(string: "https://fikiwiki.com/uploads/posts/2022-02/1644909475_44-fikiwiki-com-p-kartinki-mashini-audi-47.jpg")
        ) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
//                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle(), style: FillStyle())
            case .empty:
                ProgressView()
                    .background(.orange)
            case .failure(let error):
                VStack {
                    Image(systemName: "questionmark")
                    Text(error.localizedDescription)
                        .font(.headline)
                    Spacer(minLength: 150)
                }
            @unknown default:
                fatalError()
            }
        }
    }
}

#Preview {
    ContentView()
}
