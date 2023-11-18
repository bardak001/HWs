//
//  ContentView.swift
//  TextProj
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("capitalized, capitalized!".capitalized)
                .background(.red)
            Text("lowercased!".lowercased())
                .background(.red)
            Text("uppercased!".uppercased())
                .background(.red)
            Text("kerning!")
                .kerning(5)
                .background(.red)
            Text(".font(.title)")
                .background(.red)
                .font(.title)
            Text("italic bold underline strikethrough")
                .background(.red)
                .italic()
                .bold()
                .underline()
                .strikethrough()
                .padding()
            Text("lineLimit lineLimit lineLimit lineLimit lineLimit lineLimit lineLimit")
                .lineLimit(1)
            Text("foregroundStyle")
                .foregroundStyle(.blue)
            Text("multilineTextAlignment multilineTextAlignment multilineTextAlignment multilineTextAlignment")
                .background(.red)
                .multilineTextAlignment(.trailing)
                .frame(width: 600)
            Text("frame frame frame")
                .background(.red)
                .frame(width: 300, height: 200, alignment: .trailing)
            Text("minimum Scale Factor minimumScaleFactor ")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .lineLimit(1)
                .minimumScaleFactor(0.1)
            HStack {
                Text("baseline -10")
                    .baselineOffset(-10)
                    .border(.black)
                Text("baseline 0")
                    .baselineOffset(0)
                    .border(.black)
                Text("baseline 10")
                    .baselineOffset(10)
                    .border(.black)
            }
        }
    }
}

#Preview {
    ContentView()
}
