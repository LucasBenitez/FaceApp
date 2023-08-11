//
//  EyesComponent.swift
//  FaceApp
//
//  Created by Lucas Emiliano Benitez Joncic on 11/08/2023.
//

import SwiftUI

struct EyesComponent: View {
    var stroke: (color: Color, lineWidth: CGFloat)?
    @State private var circleScale: CGFloat = 1.0
    
    init(stroke: (color: Color, lineWidth: CGFloat)? = nil) {
        self.stroke = stroke
    }
    
    var body: some View {
        
        if let stroke = stroke {
            HStack {
                Circle()
                    .stroke(stroke.color,
                            lineWidth: stroke.lineWidth)
                    .frame(width: 70)
                Circle()
                    .stroke(stroke.color,
                            lineWidth: stroke.lineWidth)
                    .frame(width: 70)
            }
        }
        else {
            HStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 70)
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 70)
            }
        }
    }
}

struct EyesComponent_Previews: PreviewProvider {
    static var previews: some View {
        EyesComponent()
    }
}
