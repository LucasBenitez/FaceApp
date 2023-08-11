//
//  ContentView.swift
//  FaceApp
//
//  Created by Lucas Emiliano Benitez Joncic on 11/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentEmotion: Emotion = .happy
    var body: some View {
        
        ZStack {
            Circle()
            VStack{
                FaceView(emotion: currentEmotion)
                    .frame(width: 150, height: 150)
                Button("Cambiar Emoción") {
                    switch currentEmotion {
                    case .happy:
                        currentEmotion = .angry
                    case .angry:
                        currentEmotion = .happy
                    }
                }.offset(y:150)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
