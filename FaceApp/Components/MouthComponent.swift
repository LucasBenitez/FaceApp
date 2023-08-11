//
//  MouthComponent.swift
//  FaceApp
//
//  Created by Lucas Emiliano Benitez Joncic on 11/08/2023.
//

import SwiftUI

struct MouthComponent: Shape {
    var startAngle: Angle
        var endAngle: Angle
        var clockwise: Bool
        
        func path(in rect: CGRect) -> Path {
            let rotationAdjustment = Angle.degrees(0)
            let modifiedStart = startAngle - rotationAdjustment
            let modifiedEnd = endAngle - rotationAdjustment
            
            var path = Path()
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 3, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
            
            return path
        }
    }

struct MouthView_Previews: PreviewProvider {
    static var previews: some View {
        MouthComponent(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: false)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
            .offset(y:120)
    }
}
