//
//  ContentView.swift
//  MathTutor
//
//  Created by RIOS, AIMEE on 1/29/26.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var firstNumberEmojis = ""
    @State private var secondNumberEmojis = ""
    
    private let emojis = ["🍕", "🍎", "🍏", "🐵", "👽", "🧠", "🧜🏽‍♀️", "🧙🏿‍♂️", "🥷", "🐶", "🐹", "🐣", "🦄", "🐝", "🦉", "🦋", "🦖", "🐙", "🦞", "🐟", "🦔", "🐲", "🌻", "🌍", "🌈", "🍔", "🌮", "🍦", "🍩", "🍪"]
    
    var body: some View {
        VStack {
            Text(firstNumberEmojis)
                .font(Font.system(size: 80))
            Text("\(firstNumber) + \(secondNumber) =")
                .font(.largeTitle)
        }
        .padding()
        .onAppear {
            firstNumber = Int.random(in: 1...10)
            secondNumber = Int.random(in: 1...10)
            firstNumberEmojis = String(repeating: emojis.randomElement()!, count: firstNumber)
        }
    }
}

#Preview {
    ContentView()
}
