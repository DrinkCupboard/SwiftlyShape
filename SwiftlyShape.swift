//
//  SwiftlyShape.swift
//  iOS
//
//  Created by Cupboard Coffee Limited
//

import SwiftUI

struct Mound: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY), control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY), control: CGPoint(x: rect.maxX, y: rect.minY))
        return path
    }
}


struct SwiftlyShape_Previews: PreviewProvider {
    static var previews: some View {
        Mound()
            .frame(width: 300, height: 200)
            .background(Color(.black))
    }
}
