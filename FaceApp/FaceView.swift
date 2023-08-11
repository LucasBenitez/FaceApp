//
//  FaceView.swift
//  FaceApp
//
//  Created by Lucas Emiliano Benitez Joncic on 11/08/2023.
//

import SwiftUI

enum Emotion {
    case happy
    case angry
}
struct FaceView: View {
    var emotion: Emotion
    
    var body: some View {
        ZStack {
            if emotion == .happy {
                Group {
                    EyesComponent()
                        .offset(y:-40)
                    MouthComponent(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                        .fill(Color.white)
                        .frame(width: 200, height: 100)
                        .offset(y:40)
                }
                
                .animation(.easeInOut(duration: 1.5))
            } else {
                Group {
                    EyesComponent(stroke: (color: Color.red, lineWidth: 5))
                        .offset(y:-40)
                    MouthComponent(startAngle: .degrees(0), endAngle: .degrees(-180), clockwise: false)
                        .stroke(Color.white,lineWidth: 3)
                        .frame(width: 300, height: 300)
                        .offset(y:120)
                }
                .animation(.easeInOut(duration: 1.5))
            }
        }
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView(emotion: .happy)
    }
}
