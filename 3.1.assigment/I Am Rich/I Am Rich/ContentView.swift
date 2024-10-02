//
//  ContentView.swift
//  I Am Rich
//
//  Created by Nurken on 02.10.2024.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack {
                Image("diamond")
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 150, height: 200)
                    .foregroundStyle(.tint)
                
                Text("It is my diamond")
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
